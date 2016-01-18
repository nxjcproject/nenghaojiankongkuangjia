using Monitor_shell.Infrastructure.Configuration;
using SqlServerDataAdapter;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Monitor_shell.Service.ProcessEnergyMonitor.DCSMonitorShell
{
    public class DCSMonitorHelper
    {
        public static List<ViewInfoValue> GetViewPageInfosMethod(string nodeIdStr)
        {
            ISqlServerDataFactory dataFactory = new SqlServerDataFactory(ConnectionStringFactory.ConnString);
            string mySql = @"select 
	                                *
                                from 
	                                content A,ViewPageInfo B
                                where 
	                                A.NODE_ID=B.NodeId
	                                and A.NODE_ID=@nodeId
                                    and B.Enabled='true'";
            SqlParameter parameter = new SqlParameter("nodeId",nodeIdStr);
            DataTable pageViewInfoTable= dataFactory.Query(mySql, parameter);
            List<ViewInfoValue> viewInfoSet = new List<ViewInfoValue>();
            foreach (DataRow dr in pageViewInfoTable.Rows)
            {
                ViewInfoValue viewObj = new ViewInfoValue();
                viewObj.NodeId=dr["NodeId"].ToString().Trim();
                viewObj.BtnName = dr["BtnName"].ToString().Trim();
                viewObj.ViewUrl = dr["ViewUrl"].ToString().Trim();
                viewObj.DisplayIndex =Convert.ToInt16(dr["DisplayIndex"]);
                viewObj.DefaultView = Convert.ToBoolean(dr["DefaultView"]);
                viewInfoSet.Add(viewObj);
            }
            return viewInfoSet;
        }
        /// <summary>
        /// 获取仪表信息
        /// </summary>
        /// <param name="organizationId"></param>
        /// <param name="tagSet"></param>
        /// <returns></returns>
        public static List<GaugesInfo> GetGaugesInfos(string organizationId,string tagSet)
        {
            ISqlServerDataFactory dataFactory = new SqlServerDataFactory(ConnectionStringFactory.NXJCConnectionString);
            string factoryDBName = ConnectionStringFactory.GetAmmeterDatabaseName(organizationId);
            string[] tagArray = tagSet.Trim(',').Split(',');//去除前导匹配项和尾部匹配项的“，”，再拆分标签
            string mySql = @"select 
	                                *
                                from 
	                                {0}.[dbo].DCSContrast_Gauges A
                                where
	                                A.Enabled='true'";
            StringBuilder sqlBuilder = new StringBuilder(mySql);
            sqlBuilder.Append(" and (");
            List<SqlParameter> parameterList = new List<SqlParameter>();
            foreach (string t_tag in tagArray)
            {
                sqlBuilder.Append("TagName=@" + t_tag + " or ");
                parameterList.Add(new SqlParameter(t_tag, t_tag));
            }
            sqlBuilder.Remove(sqlBuilder.Length-4,4);
            sqlBuilder.Append(")");
            DataTable table = dataFactory.Query(string.Format(sqlBuilder.ToString(), factoryDBName), parameterList.ToArray());
            List<GaugesInfo> gaugesInfoList = new List<GaugesInfo>();
            foreach (DataRow dr in table.Rows)
            {
                GaugesInfo gaugesObj = new GaugesInfo();
                gaugesObj.TagName = dr["TagName"].ToString().Trim();
                gaugesObj.TagDescription = dr["TagDescription"].ToString().Trim();
                gaugesObj.MaxRange = Convert.ToDecimal(dr["MaxRange"]);
                gaugesObj.MinRange = Convert.ToDecimal(dr["MinRange"]);
                gaugesObj.Value_HH = Convert.ToDecimal(dr["Value_HH"]);
                gaugesObj.Value_H = Convert.ToDecimal(dr["Value_H"]);
                gaugesObj.Value_L = Convert.ToDecimal(dr["Value_L"]);
                gaugesObj.Value_LL = Convert.ToDecimal(dr["Value_LL"]);
                gaugesInfoList.Add(gaugesObj);
            }
            return gaugesInfoList;
        }
        /// <summary>
        /// 获得报警颜色信息
        /// </summary>
        /// <param name="organizationId"></param>
        /// <returns></returns>
        public static SyetemColor GetAlarmColorInfo(string organizationId)
        {
            ISqlServerDataFactory dataFactory = new SqlServerDataFactory(ConnectionStringFactory.NXJCConnectionString);
            string mySql = @"select 
	                                *
                                from 
	                                system_Color A
                                where
	                                A.OrganizationId=@organizationId";
            SqlParameter parameter = new SqlParameter("organizationId",organizationId);
            DataTable table = dataFactory.Query(mySql, parameter);
            SyetemColor colorObj = new SyetemColor();
            colorObj.OrganizationId = table.Rows[0]["OrganizationId"].ToString().Trim();
            colorObj.Color_HH = table.Rows[0]["Color_HH"].ToString().Trim();
            colorObj.Color_H = table.Rows[0]["Color_H"].ToString().Trim();
            colorObj.Color_LL = table.Rows[0]["Color_LL"].ToString().Trim();
            colorObj.Color_L = table.Rows[0]["Color_L"].ToString().Trim();
            colorObj.Color_BarBackground = table.Rows[0]["Color_BarBackground"].ToString().Trim();
            colorObj.Color_BarForeground = table.Rows[0]["Color_BarForeground"].ToString().Trim();
            colorObj.Color_MaxRangeAlarm = table.Rows[0]["Color_MaxRangeAlarm"].ToString().Trim();
            colorObj.Color_MinRangeAlarm = table.Rows[0]["Color_MinRangeAlarm"].ToString().Trim();
            return colorObj;
        }
        /// <summary>
        /// 根据组织机构获取分厂的组织机构
        /// </summary>
        /// <param name="organizationId"></param>
        /// <returns></returns>
        public static string GetFactoryId(string organizationId)
        {
            ISqlServerDataFactory dataFactory = new SqlServerDataFactory(ConnectionStringFactory.NXJCConnectionString);
            string mySql = @"select 
	                                A.*
                                from
	                                system_Organization A,
	                                (select LevelCode from system_Organization where OrganizationID=@organizationId) B
                                where 
	                                (
		                                CHARINDEX(A.LevelCode,B.LevelCode)>0
		                                or CHARINDEX(B.LevelCode,A.LevelCode)>0
	                                )
	                                and A.LevelType='factory'";
            SqlParameter parameter = new SqlParameter("organizationId", organizationId);
            DataTable table = dataFactory.Query(mySql, parameter);
            return table.Rows[0]["OrganizationID"].ToString().Trim();
        }
        /// <summary>
        /// 运行状态信息
        /// </summary>
        /// <param name="factoryId"></param>
        /// <param name="relatedTags"></param>
        /// <returns></returns>
        public static Dictionary<string, RunningStatus> GetRelatedTags(string factoryId, string relatedTags)
        {
            ISqlServerDataFactory dataFactory = new SqlServerDataFactory(ConnectionStringFactory.NXJCConnectionString);
            string ammeterDBName = ConnectionStringFactory.GetAmmeterDatabaseName(factoryId);
            Dictionary<string, RunningStatus> result_dic = new Dictionary<string, RunningStatus>();
            relatedTags = relatedTags.Trim(';');
            string[] relatedTagArray = relatedTags.Split(';');
            string[] tagsArray = relatedTags.Split(',',';');
            if (tagsArray.Count() == 0)
            {
                return result_dic;
            }
            string mySql = @"select
	                                *
                                from
	                                [{0}].[dbo].View_DCSContrast as A
                                where
	                                 ";
            StringBuilder sqlBuilder = new StringBuilder(mySql);
            List<SqlParameter> parameterList = new List<SqlParameter>();
            List<string> tempList = new List<string>();
            foreach (string item in tagsArray)
            {
                
                string t_item = item.Trim();
                if ("" == t_item) //如果为空跳过
                {
                    continue;
                }
                else
                {
                    if (!tempList.Contains(t_item))
                    {
                        tempList.Add(t_item);
                        sqlBuilder.Append("A.FieldName=@" + t_item + " or ");
                        parameterList.Add(new SqlParameter(t_item, t_item));
                    }
                }
            }
            sqlBuilder=sqlBuilder.Remove(sqlBuilder.Length - 4, 4);
            DataTable baseTable = dataFactory.Query(string.Format(sqlBuilder.ToString(),ammeterDBName), parameterList.ToArray());
            string dataSql = @"select {0}
                                from {1}";
            StringBuilder itemBuilder = new StringBuilder();
            StringBuilder tableBuilder = new StringBuilder();
            List<string> itemList = new List<string>();
            List<string> tableList = new List<string>();
            foreach (DataRow dr in baseTable.Rows)
            {
                if (!itemList.Contains(dr["FieldName"].ToString().Trim()))
                {
                    itemList.Add(dr["FieldName"].ToString().Trim());
                    itemBuilder.Append(dr["FieldName"].ToString().Trim());
                    itemBuilder.Append(",");
                }
                if (!tableList.Contains(dr["DBName"].ToString().Trim() + ".[dbo].Realtime_" + dr["TableName"].ToString().Trim()))
                {
                    tableList.Add(dr["DBName"].ToString().Trim() + ".[dbo].Realtime_" + dr["TableName"].ToString().Trim());
                    tableBuilder.Append(dr["DBName"].ToString().Trim() + ".[dbo].Realtime_" + dr["TableName"].ToString().Trim());
                    tableBuilder.Append(",");
                }             
            }
            itemBuilder.Remove(itemBuilder.Length - 1, 1);
            tableBuilder.Remove(tableBuilder.Length - 1, 1);
            DataTable dataTable = dataFactory.Query(string.Format(dataSql,itemBuilder.ToString(),tableBuilder));
            Dictionary<string, bool> dataDictionary = new Dictionary<string, bool>();
            foreach(DataColumn dc in dataTable.Columns)
            {
                string columnName = dc.ColumnName;
                if (!dataDictionary.Keys.Contains(columnName))
                {
                    bool flag=Convert.ToBoolean(dataTable.Rows[0][columnName]);
                    dataDictionary.Add(columnName, flag);
                }
            }
            
            foreach (string tagGroup in relatedTagArray)
            {
                string[] tags_arr = tagGroup.Split(',');
                for (int i = 0; i < tags_arr.Length; i++)
                {
                    tags_arr[i] = tags_arr[i].Trim();
                }
                if (tags_arr.Count() !=7 )
                {
                    continue;
                }
                else
                {
                    if (!result_dic.Keys.Contains(tags_arr[0]))
                    {
                        RunningStatus runningStatusObj = new RunningStatus();
                        runningStatusObj.KeepReady = tags_arr[0] == "" || !dataDictionary.Keys.Contains(tags_arr[0]) ? false : dataDictionary[tags_arr[0]];
                        runningStatusObj.Foreward = tags_arr[1] == "" || !dataDictionary.Keys.Contains(tags_arr[1]) ? false : dataDictionary[tags_arr[1]];
                        runningStatusObj.Reversal = tags_arr[2] == "" || !dataDictionary.Keys.Contains(tags_arr[2]) ? false : dataDictionary[tags_arr[2]];
                        runningStatusObj.LocaleForeward = tags_arr[3] == "" || !dataDictionary.Keys.Contains(tags_arr[3]) ? false : dataDictionary[tags_arr[3]];
                        runningStatusObj.LocaleReversal = tags_arr[4] == "" || !dataDictionary.Keys.Contains(tags_arr[4]) ? false : dataDictionary[tags_arr[4]];
                        runningStatusObj.Breakdown = tags_arr[5] == "" || !dataDictionary.Keys.Contains(tags_arr[5]) ? false : dataDictionary[tags_arr[5]];
                        runningStatusObj.Stop = tags_arr[6] == "" || !dataDictionary.Keys.Contains(tags_arr[6]) ? false : dataDictionary[tags_arr[6]];
                        result_dic.Add(tags_arr[0], runningStatusObj);
                    }
                }
            }
            return result_dic;
        }
    }
}
