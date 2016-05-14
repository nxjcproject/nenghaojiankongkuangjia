using Monitor_shell.Infrastructure.Configuration;
using Monitor_shell.Infrastructure.Utility;
using SqlServerDataAdapter;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Monitor_shell.Service.ProcessEnergyMonitor.EnergyContrast
{
    public class EnergyContrastHelper
    {
        private ISqlServerDataFactory _dataFactory;
        private string _type;
        public EnergyContrastHelper(string type)
        {
            _type = type;
        }

        /// <summary>
        /// 获得实时数据
        /// </summary>
        /// <param name="viewName"></param>
        /// <returns></returns>
        public IEnumerable<DataItem> GetRealtimeDatas(string organizationId, IList<string> variableNames)
        {
            IList<DataItem> result = new List<DataItem>();

            string ammeterConn = ConnectionStringFactory.GetAmmeterConnectionString(organizationId);
            //string ammeterConn = "Data Source=QH-20150320GFTA;Initial Catalog=zc_nxjc_byc_byf;Integrated Security=True;";
            _dataFactory = new SqlServerDataFactory(ammeterConn);
            //DebugHelper.TestStart();
            IDictionary<string, List<FieldInformation>> fieldInformations = GetFeildInformation(organizationId, variableNames);
            //DebugHelper.TestStop("获取字段信息时间(ms)：");
            //DebugHelper.TestStart();
            DataTable table = GetDataItemTable(fieldInformations);
            //DebugHelper.TestStop("获取数据信息时间(ms)：");
            //DebugHelper.TestStart();
            string[] idList = GetTableColumnName(table);
            foreach (var item in idList)
            {
                string t_value="0";
                if (_type == "RunningState")
                {
                    t_value = table.Rows[0][item] is DBNull ? "NULL" : Convert.ToDecimal(table.Rows[0][item]).ToString().Trim();
                }
                else
                {
                    t_value = MyObjectToString(table.Rows[0][item]);
                    //if (table.Rows[0][item] is bool)
                    //{
                    //    t_value = table.Rows[0][item] is DBNull ? "0" : Convert.ToDecimal(table.Rows[0][item]).ToString();
                    //}
                    //else
                    //{
                        //t_value = table.Rows[0][item] is DBNull ? "0" : (Convert.ToDecimal(table.Rows[0][item]) == 0 ? "0" : Convert.ToDecimal(table.Rows[0][item]).ToString("#").Trim());
                    //}
                }
                result.Add(new DataItem
                {
                    ID = organizationId + ">" + item + ">" + _type,
                    Value = t_value//table.Rows[0][item] is DBNull ? "0" : Convert.ToDecimal(table.Rows[0][item]).ToString("#").Trim()
                });
            }
            //DebugHelper.TestStop("处理键值对的时间(ms):");
            return result;
        }
        public IEnumerable<DataItem> GetPlaybackDatas(DateTime myTime,string organizationId, IList<string> variableNames)
        {
            IList<DataItem> result = new List<DataItem>();
            string ammeterConn = ConnectionStringFactory.GetAmmeterConnectionString(organizationId);           
            _dataFactory = new SqlServerDataFactory(ammeterConn);
            
            IDictionary<string, List<FieldInformation>> fieldInformations = GetFeildInformation(organizationId, variableNames, "History");
            DataTable table = GetDataItemTable(myTime,fieldInformations);
            
            string[] idList = GetTableColumnName(table);
            foreach (var item in idList)
            {
                string t_value = "0";
                if (_type == "RunningState")
                {
                    t_value = table.Rows[0][item] is DBNull ? "NULL" : Convert.ToDecimal(table.Rows[0][item]).ToString().Trim();
                }
                else
                {
                    t_value = table.Rows[0][item] is DBNull ? "0" : Convert.ToDecimal(table.Rows[0][item]).ToString("#").Trim();
                }
                result.Add(new DataItem
                {
                    ID = organizationId + ">" + item + ">" + _type,
                    Value = t_value//table.Rows[0][item] is DBNull ? "0" : Convert.ToDecimal(table.Rows[0][item]).ToString("#").Trim()
                });
            }
            return result;
        }
        /// <summary>
        /// 获得FeildInformation
        /// </summary>
        /// <param name="viewName"></param>
        /// <returns>键为表名，值为字段列表</returns>
        private IDictionary<string, List<FieldInformation>> GetFeildInformation(string organizationId, IList<string> variableNames, string tablePrefix="Realtime")
        {
            Dictionary<string, List<FieldInformation>> fieldInformations = new Dictionary<string, List<FieldInformation>>();

            if (variableNames.Count < 0)
            {
                return fieldInformations;
            }
            //DCS的处理方法
            if ("DCS" == _type)
            {
                StringBuilder queryString = new StringBuilder();
                List<SqlParameter> parameters = new List<SqlParameter>();
                queryString.Append("select TagName,DCSName,DBName,TableName,FieldName from View_DCSContrast where ");
                //queryString.Append("where OrganizationID=@organizationId and type=@type and Enabled=@enabled and (");
                //parameters.Add(new SqlParameter("@enabled", 1));
                //parameters.Add(new SqlParameter("@organizationId", organizationId));
                //parameters.Add(new SqlParameter("@type", _type));
                foreach (var item in variableNames)
                {
                    queryString.Append("TagName=@" + item + " or ");
                    parameters.Add(new SqlParameter("@" + item, item));
                }
                queryString.Remove(queryString.Length - 4, 4);
                //DebugHelper.TestStart();               
                DataTable table = _dataFactory.Query(queryString.ToString(), parameters.ToArray());
                //DebugHelper.TestStop("执行sql查询的时间（ms）：");
                foreach (DataRow row in table.Rows)
                {
                    FieldInformation fieldInfor = new FieldInformation();
                    string key = row["DBName"].ToString().Trim() + ".dbo."+tablePrefix+"_" + row["TableName"].ToString().Trim();
                    fieldInfor.FeildName = row["FieldName"].ToString().Trim();
                    fieldInfor.VariableName = row["DCSName"].ToString().Trim()+'_'+ row["FieldName"].ToString().Trim();
                    if (fieldInformations.Keys.Contains(key))
                    {
                        fieldInformations[key].Add(fieldInfor);
                    }
                    else
                    {
                        fieldInformations.Add(key, new List<FieldInformation>());
                        fieldInformations[key].Add(fieldInfor);
                    }
                }
            }
            else
            {
                StringBuilder queryString = new StringBuilder();
                List<SqlParameter> parameters = new List<SqlParameter>();
                queryString.Append("select DatabaseName,TableName,FieldName,VariableName from MonitorContrast ");
                queryString.Append("where OrganizationID=@organizationId and type=@type and Enabled=@enabled and (");
                parameters.Add(new SqlParameter("@enabled", 1));
                parameters.Add(new SqlParameter("@organizationId", organizationId));
                parameters.Add(new SqlParameter("@type", _type));
                foreach (var item in variableNames)
                {
                    queryString.Append("VariableName=@"+ item + " or ");
                    parameters.Add(new SqlParameter("@" + item, item));
                }
                queryString.Remove(queryString.Length - 4, 4).Append(")");
                DataTable table = _dataFactory.Query(queryString.ToString(), parameters.ToArray());
                foreach (DataRow row in table.Rows)
                {
                    FieldInformation fieldInfor = new FieldInformation();
                    string key = row["DatabaseName"].ToString().Trim() + ".dbo."+tablePrefix+"_" + row["TableName"].ToString().Trim();
                    fieldInfor.FeildName = row["FieldName"].ToString().Trim();
                    fieldInfor.VariableName = row["VariableName"].ToString().Trim();
                    if (fieldInformations.Keys.Contains(key))
                    {
                        fieldInformations[key].Add(fieldInfor);
                    }
                    else
                    {
                        fieldInformations.Add(key, new List<FieldInformation>());
                        fieldInformations[key].Add(fieldInfor);
                    }
                }
            }

            return fieldInformations;
        }

        private DataTable GetDataItemTable(IDictionary<string, List<FieldInformation>> fieldInformations)
        {
            DataTable result = new DataTable();
            if (fieldInformations.Keys.Count() > 0)
            {
                string queryString = GetSqlString(fieldInformations);
                result = _dataFactory.Query(queryString);
            }
            return result;
        }
        private DataTable GetDataItemTable(DateTime myTime,IDictionary<string, List<FieldInformation>> fieldInformations)
        {
            DataTable result = new DataTable();
            if (fieldInformations.Keys.Count() > 0)
            {
                string queryString = GetSqlString(myTime,fieldInformations);
                result = _dataFactory.Query(queryString);
            }
            return result;
        }
        /// <summary>
        /// 获得table的字段名
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        private string[] GetTableColumnName(DataTable dt)
        {
            IList<string> result = new List<string>();
            foreach (DataColumn item in dt.Columns)
            {
                result.Add(item.ColumnName);
            }
            return result.ToArray();
        }

        public static string GetSqlString(IDictionary<string, List<FieldInformation>> feildInfor)
        {
            StringBuilder result = new StringBuilder();
            result.Append("select ");
            StringBuilder feilds = new StringBuilder();
            StringBuilder tables = new StringBuilder();

            foreach (var key in feildInfor.Keys)
            {
                tables.Append(key + ",");
                foreach (var feild in feildInfor[key])
                {
                    string tempFeild = key + ".[" + feild.FeildName + "] as " + feild.VariableName;
                    feilds.Append(tempFeild).Append(",") ;
                }
            }
            tables.Remove(tables.Length - 1, 1);
            feilds.Remove(feilds.Length - 1, 1);
            result.Append(feilds.ToString()).Append(" from ").Append(tables.ToString());

            return result.ToString();
        }
        private static string GetSqlString(DateTime myTime,IDictionary<string, List<FieldInformation>> feildInfor)
        {
            StringBuilder result = new StringBuilder();
            result.Append("select top(1) ");
            StringBuilder feilds = new StringBuilder();
            StringBuilder tables = new StringBuilder();
            StringBuilder criteria = new StringBuilder(" where ");

            //foreach (var key in feildInfor.Keys)
            //{
            //    tables.Append(key + ",");
            //    foreach (var feild in feildInfor[key])
            //    {
            //        string tempFeild = key + ".[" + feild.FeildName + "] as " + feild.VariableName;
            //        feilds.Append(tempFeild).Append(",");
            //    }
            //}
            string[] keyArray = feildInfor.Keys.ToArray();

            for (int i=0;i<feildInfor.Count;i++)
            {
                string key = keyArray[i];
                tables.Append(key + ",");
                foreach (var feild in feildInfor[key])
                {
                    string tempFeild = key + ".[" + feild.FeildName + "] as " + feild.VariableName;
                    feilds.Append(tempFeild).Append(",");
                }
                if (i == 0)
                {
                    criteria.Append(key + ".vDate>='" + myTime.ToString()+"'");
                    criteria.Append(" and ");
                    criteria.Append(key + ".vDate<'" + myTime.AddSeconds(3).ToString()+"'");//先固定写死三秒钟时间
                    criteria.Append(" and ");
                }
                else
                {
                    criteria.Append(key+".vDate = "+keyArray[0]+".vDate ");
                    criteria.Append(" and ");
                }
            }
            criteria.Remove(criteria.Length - 5, 5);
            tables.Remove(tables.Length - 1, 1);
            feilds.Remove(feilds.Length - 1, 1);
            result.Append(feilds.ToString()).Append(" from ").Append(tables.ToString());
            result.Append(criteria.ToString());

            return result.ToString();
        }
        /// <summary>
        /// 自定义类型转换后格式
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        private static string MyObjectToString(Object obj)
        {
            //t_value = table.Rows[0][item] is DBNull ? "0" : (Convert.ToDecimal(table.Rows[0][item]) == 0 ? "0" : Convert.ToDecimal(table.Rows[0][item]).ToString("#").Trim());
            if (obj is DBNull)
            {
                return "0";
            }
            else if(obj is decimal)
            {
                return Convert.ToDecimal(obj) == 0 ? "0" : Convert.ToDecimal(obj).ToString("#.0").Trim();
            }
            else if (obj is bool)
            {
                return Convert.ToBoolean(obj).ToString();
            }
            else if (obj is DateTime)
            {
                return obj.ToString();
            }
            else
            {
                return Convert.ToDecimal(obj) == 0 ? "0" : Convert.ToDecimal(obj).ToString("#.0").Trim();
            }           
        }
    }
}
