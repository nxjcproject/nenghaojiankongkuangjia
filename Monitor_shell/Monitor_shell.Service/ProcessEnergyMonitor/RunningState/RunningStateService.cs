using Monitor_shell.Infrastructure.Configuration;
using SqlServerDataAdapter;
using SqlServerDataAdapter.Infrastruction;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace Monitor_shell.Service.ProcessEnergyMonitor.RunningState
{
    public class RunningStateService
    {
        private static ISqlServerDataFactory _dataFactory;

        public static IEnumerable<DataItem> GetRunningData(Dictionary<string, IList<string>> idDictionary)
        {
            IList<DataItem> result = new List<DataItem>();

            foreach (var item in idDictionary.Keys)
            {
                string dcsConn = ConnectionStringFactory.GetDCSConnectionString(item);
                _dataFactory = new SqlServerDataFactory(dcsConn);
                foreach(var dataItem in GetRealtimeDatas(item, idDictionary[item]))
                {
                    result.Add(dataItem);
                }
            }

            return result;
        }

        /// <summary>
        /// 获得实时视图数据
        /// </summary>
        /// <param name="viewName"></param>
        /// <returns></returns>
        private static IEnumerable<DataItem> GetRealtimeDatas(string organizationId, IList<string> idInfor)
        {
            IList<DataItem> result = new List<DataItem>();

            if (idInfor.Count() != 0)
            {
                DataTable table = GetDataItemTable(idInfor);
                string[] idList = GetTableColumnName(table);
                foreach (var item in idList)
                {
                    result.Add(new DataItem
                    {
                        ID = organizationId + ">" + item + ">RunningState",
                        Value = table.Rows[0][item] is DBNull ? "0" : Convert.ToDecimal(table.Rows[0][item]).ToString("#").Trim()
                    });
                }
            }
            return result;
        }

        /// <summary>
        /// 获得table的字段名
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        private static string[] GetTableColumnName(DataTable dt)
        {
            IList<string> result = new List<string>();
            foreach (DataColumn item in dt.Columns)
            {
                result.Add(item.ColumnName);
            }
            return result.ToArray();
        }

        /// <summary>
        /// 获得实时数据的table表
        /// </summary>
        /// <param name="dataSetInformations"></param>
        /// <returns></returns>
        private static DataTable GetDataItemTable(IList<string> idInfor)
        {
            //DataItem result = new DataItem();
            ComplexQuery cmpquery = new ComplexQuery();
            foreach (var item in idInfor)
            {
                string[] idArry = item.Split('_');
                cmpquery.AddNeedField("Realtime_" + idArry[0], idArry[1], item);
            }
            cmpquery.JoinCriterion = new JoinCriterion
            {
                DefaultJoinFieldName = "vDate",
                JoinType = JoinType.FULL_JOIN
            };
            cmpquery.TopNumber = 1;
            //cmpquery.OrderByClause = new OrderByClause("realtime_line_data.v_date", true);
            DataTable table = _dataFactory.Query(cmpquery);

            return table;
        }
    }
}
