using Monitor_shell.Service.Formula;
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

        public DataTable GetMeterStatictisticsData(string organization, VariableInfo variableInfo, int topNumber, IDictionary<string, string> ammeterDetail, IDictionary<string, string> materialDetail)
        {
            DataTable result = new DataTable();
            if (ammeterDetail.Keys.Count > 0)
            {
                ammeterDetail = GetAmmeterDetail(ammeterDetail);
                DataTable ammeterData = GetAmmeterIncrement(ammeterDetail, topNumber);
                result.Merge(CalculateAverageAndVariance(ammeterDetail, ammeterData, "ammeter"));
            }
            if (materialDetail.Keys.Count > 0)
            {
                materialDetail = GetMaterialDetail(materialDetail, organization);
                DataTable materialData = GetMaterialIncrement(materialDetail, topNumber);
                result.Merge(CalculateAverageAndVariance(materialDetail, materialData, "material"));
            }
            return result;
        }
        /// <summary>
        /// 获取设备信息
        /// </summary>
        /// <param name="organizationId"></param>
        /// <param name="variableInfo"></param>
        /// <returns></returns>
        public DataTable GetEquipmentInfo(string organizationId, VariableInfo variableInfo)
        {
            string mySql = @"select
                            A.VoltageGrade,
                            (CONVERT(varchar(10),A.Power)+A.Unit) as Power,
                            A.[Current]
                            from system_EquipmentAccount A
                            where A.VariableId=@variableId
                            and A.OrganizationID=@organizationId";
            SqlParameter[] parameters ={new SqlParameter("organizationId",organizationId),
                                         new SqlParameter("variableId",variableInfo.variableId)};
            return _nxjcFactory.Query(mySql, parameters);
        }
        /// <summary>
        /// 根据variableid获得levelcode
        /// </summary>
        /// <param name="organizationId"></param>
        /// <param name="variableId"></param>
        /// <returns></returns>
        private string GetLevelCodeByOrganizationId(string organizationId, string variableId)
        {
            string levelCode = "";
            string mySql = @"select B.LevelCode
                                from tz_Formula A,formula_FormulaDetail B
                                where A.KeyID=B.KeyID
                                and A.OrganizationID=@organizationId
                                and B.VariableId=@variableId";
            SqlParameter[] parameters ={new SqlParameter("organizationId",organizationId),
                                          new SqlParameter("variableId",variableId)};
            DataTable table= _nxjcFactory.Query(mySql, parameters);
            if (table.Rows.Count == 1)
            {
                levelCode = table.Rows[0]["LevelCode"].ToString().Trim();
            }
            else
            {
                throw new Exception("没有找到该variableId对应的LevelCode");
            }
            return levelCode;
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
        //获得物料名字
        private IDictionary<string, string> GetMaterialDetail(IDictionary<string, string> materialNames,string organizationId)
        {
            IDictionary<string, string> result = materialNames;
            string mySql = @"select B.Formula,(C.Name+B.Name) as Name
                            from tz_Material A,material_MaterialDetail B,system_Organization C
                            where A.KeyID=B.KeyID
                            and A.OrganizationID=C.OrganizationID
                            and C.LevelCode like
                            (SELECT LevelCode FROM system_Organization D where 
                            CHARINDEX(D.LevelCode,(select LevelCode from system_Organization where OrganizationID=@organizationId))>0 
                            and D.LevelType='factory')+'%'";
            SqlParameter parameter = new SqlParameter("organizationId", organizationId);
            DataTable dt = _nxjcFactory.Query(mySql, parameter);
            foreach (DataRow row in dt.Rows)
            {
                string key = row["Formula"].ToString().Trim();
                string value = row["Name"].ToString().Trim();
                if (materialNames.Keys.Contains(key))
                {
                    result[key] = value;
                }
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
        /// 获得物料增量集合
        /// </summary>
        /// <param name="materialDetails"></param>
        /// <param name="topNumber"></param>
        /// <returns></returns>
        private DataTable GetMaterialIncrement(IDictionary<string, string> materialDetails, int topNumber)
        {
            StringBuilder queryString = new StringBuilder();
            queryString.Append("select top ").Append(topNumber).Append(" ");
            foreach (string key in materialDetails.Keys)
            {
                queryString.Append(key).Append(",");
            }
            queryString.Remove(queryString.Length - 1, 1).Append(" from HistoryDCSIncrement order by vDate desc");
            DataTable result = _ammeterFactory.Query(queryString.ToString());

            return result;
        }
        /// <summary>
        /// 计算均值方差
        /// </summary>
        /// <param name="ammeterDetail"></param>
        /// <param name="ammeterData"></param>
        /// <returns></returns>
        private DataTable CalculateAverageAndVariance(IDictionary<string, string> ammeterDetail, DataTable ammeterData,string type)
        {
            //初始化返回值表
            DataTable result = new DataTable();
            DataColumn name = new DataColumn("Name", typeof(string));
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
                    string columnName;
                    if (type == "ammeter")
                    {
                        columnName = key + "Energy";
                    }
                    else
                    {
                        columnName = key;
                    }
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
                newRow["Name"] = key;
                newRow["CurrentData"] = currentdatas[key];
                newRow["AverageData"] = averageData;
                newRow["VarianceData"] = varianceData;
                result.Rows.Add(newRow);
            }

            return result;
            
        }

    }
}
