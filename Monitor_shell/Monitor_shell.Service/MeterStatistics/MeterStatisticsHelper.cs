using SqlServerDataAdapter;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace Monitor_shell.Service.MeterStatistics
{
    public class MeterStatisticsHelper
    {
        ISqlServerDataFactory _nxjcFactory;
        ISqlServerDataFactory _ammeterFactory;
        public string AmmeterFormula = "";
        public MeterStatisticsHelper(ISqlServerDataFactory nxjcFactory, ISqlServerDataFactory ammeterFactory)
        {
            _nxjcFactory = nxjcFactory;
            _ammeterFactory = ammeterFactory;
        }

        public DataTable GetMeterStatictisticsData(string organization, string variableId, int topNumber)
        {
            IDictionary<string, string> ammeterDetail = GetAmmeterFormula(organization, variableId);
            if (ammeterDetail.Keys.Count > 0)
            {
                ammeterDetail = GetAmmeterDetail(ammeterDetail);
                DataTable ammeterData = GetAmmeterIncrement(ammeterDetail, topNumber);
                DataTable result = CalculateAverageAndVariance(ammeterDetail, ammeterData);
                return result;
            }
            else
            {
                return new DataTable();
            }
        }
        /// <summary>
        /// 获得电表值计算公式，并取得各个子表名称
        /// </summary>
        /// <param name="organization"></param>
        /// <param name="variableId"></param>
        /// <returns></returns>
        private IDictionary<string, string> GetAmmeterFormula(string organization, string variableId)
        {
            IDictionary<string, string> result = new Dictionary<string, string>();

            string querySql = @"select A.Formula,A.VariableId,B.Type,B.OrganizationID from [dbo].[formula_FormulaDetail] AS A
                                left join [dbo].[tz_Formula] AS B
                                on A.KeyID=B.KeyID
                                where B.Type=2 and B.OrganizationID=@organizationId and A.VariableId=@variableId";
            SqlParameter[] parameters = { new SqlParameter("@organizationId", organization), new SqlParameter("@variableId", variableId) };

            DataTable dt = _nxjcFactory.Query(querySql, parameters);

            if (dt.Rows.Count > 0)
            {
                AmmeterFormula = dt.Rows[0]["Formula"].ToString().Trim();
                Regex reg = new Regex(@"A\d{3}");
                MatchCollection regResults = reg.Matches(AmmeterFormula);
                foreach (Match mc in regResults)
                {
                    if (!result.Keys.Contains(mc.Value))
                    {
                        result.Add(mc.Value, "");
                    }
                }
            }
            return result;
        }
        /// <summary>
        /// 添加电表详细名称
        /// </summary>
        /// <param name="ammeterNames"></param>
        /// <returns></returns>
        private IDictionary<string, string> GetAmmeterDetail(IDictionary<string, string> ammeterNames)
        {
            IDictionary<string, string> result = ammeterNames;

            StringBuilder queryString = new StringBuilder();
            queryString.Append("select AmmeterNumber,AmmeterName from AmmeterContrast where ");
            IList<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var name in ammeterNames.Keys)
            {
                queryString.Append("AmmeterNumber=@").Append(name).Append(" or ");
                parameters.Add(new SqlParameter("@" + name, name));
            }
            queryString.Remove(queryString.Length - 4, 4);
            DataTable dt = _ammeterFactory.Query(queryString.ToString(), parameters.ToArray());

            foreach (DataRow row in dt.Rows)
            {
                string key = row["AmmeterNumber"].ToString().Trim();
                string value = row["AmmeterName"].ToString().Trim();
                result[key] = value;
            }

            return result;
        }
        /// <summary>
        /// 获得电表增量值集合
        /// </summary>
        /// <param name="ameterDetails"></param>
        /// <param name="topNumber"></param>
        /// <returns></returns>
        private DataTable GetAmmeterIncrement(IDictionary<string, string> ameterDetails, int topNumber)
        {
            StringBuilder queryString = new StringBuilder();
            queryString.Append("select top ").Append(topNumber).Append(" ");
            foreach (string key in ameterDetails.Keys)
            {
                queryString.Append(key).Append("Energy,");
            }
            queryString.Remove(queryString.Length - 1, 1).Append(" from HistoryAmmeterIncrement order by vDate desc");
            DataTable result = _ammeterFactory.Query(queryString.ToString());

            return result;
        }
        /// <summary>
        /// 计算均值方差
        /// </summary>
        /// <param name="ammeterDetail"></param>
        /// <param name="ammeterData"></param>
        /// <returns></returns>
        private DataTable CalculateAverageAndVariance(IDictionary<string, string> ammeterDetail, DataTable ammeterData)
        {
            //初始化返回值表
            DataTable result = new DataTable();
            DataColumn name = new DataColumn("AmmeterName", typeof(string));
            result.Columns.Add(name);
            DataColumn current = new DataColumn("CurrentData", typeof(decimal));
            result.Columns.Add(current);
            DataColumn average = new DataColumn("AverageData", typeof(decimal));
            result.Columns.Add(average);
            DataColumn variance = new DataColumn("VarianceData", typeof(decimal));
            result.Columns.Add(variance);

            int rowCount = ammeterData.Rows.Count;
            //电表历史增量数据集合字典
            Dictionary<string, List<decimal>> itemdatas = new Dictionary<string, List<decimal>>();
            //电表当前增量数据集合字典
            Dictionary<string, decimal> currentdatas = new Dictionary<string, decimal>();

            //将电表的历史增量和当前增量放入相应字典中
            foreach (DataRow row in ammeterData.Rows)
            {
                foreach (string key in ammeterDetail.Keys)
                {
                    string dataKey = ammeterDetail[key] + "(" + key + ")";
                    string columnName = key + "Energy";
                    decimal vaule = 0m;
                    Decimal.TryParse(row[columnName].ToString().Trim(), out vaule);
                        if (itemdatas.Keys.Contains(dataKey))
                        {
                            if (vaule != 0m)
                            {
                                itemdatas[dataKey].Add(vaule);
                            }
                        }
                        else
                        {
                            itemdatas.Add(dataKey, new List<decimal>());
                            if (vaule != 0m)
                            {
                                itemdatas[dataKey].Add(vaule);
                            }
                        }
                    if (!currentdatas.Keys.Contains(dataKey))
                    {
                        decimal currentData = 0m;
                        Decimal.TryParse(ammeterData.Rows[0][columnName].ToString().Trim(), out currentData);
                        currentdatas.Add(dataKey, currentData);
                    }
                }
            }
            //计算平均值和方差,并添加到结果表中
            foreach (string key in itemdatas.Keys)
            {
                List<decimal> datas = itemdatas[key];
                decimal averageData = 0m;
                if (datas.Count > 0)
                {
                    averageData = datas.Average();
                }
                decimal varianceData = 0m;
                foreach (decimal item in datas)
                {
                    varianceData = varianceData + (item - averageData) * (item - averageData);
                }
                varianceData = varianceData / rowCount;

                DataRow newRow = result.NewRow();
                newRow["AmmeterName"] = key;
                newRow["CurrentData"] = currentdatas[key];
                newRow["AverageData"] = averageData;
                newRow["VarianceData"] = varianceData;
                result.Rows.Add(newRow);
            }

            return result;
            
        }
    }
}
