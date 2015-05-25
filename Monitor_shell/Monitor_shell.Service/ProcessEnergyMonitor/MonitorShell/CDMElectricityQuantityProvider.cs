﻿using SqlServerDataAdapter;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Monitor_shell.Service.ProcessEnergyMonitor.MonitorShell
{
    public class CDMElectricityQuantityProvider : IDataItemProvider
    {
        private ISqlServerDataFactory _nxjcFactory;

        public CDMElectricityQuantityProvider(string nxjcconnString)
        {
            _nxjcFactory = new SqlServerDataFactory(nxjcconnString);
        }

        public IEnumerable<DataItem> GetDataItem(string organizationId, params string[] variableIds)
        {
            IList<DataItem> results = new List<DataItem>();
            string queryString = @"select * from (SELECT A.OrganizationID,A.VariableId,A.CumulantClass,A.CumulantLastClass,A.CumulantDay,(A.CumulantDay+B.MonthValue) AS CumulantMonth
                                FROM RealtimeIncrementCumulant AS A,
                                (select D.OrganizationID,D.VariableId,sum(D.TotalPeakValleyFlat) as MonthValue
	                            from tz_Balance as C, balance_Energy as D 
	                            where C.BalanceId=D.KeyId and TimeStamp>=CONVERT(varchar(8),GETDATE(),20)+'01'
	                            group by D.OrganizationID, VariableId) AS B
                                WHERE A.VariableId=B.VariableId and A.OrganizationID=B.OrganizationID) AS E
                                where E.OrganizationID=@organizationId";
            StringBuilder baseString = new StringBuilder(queryString);
            IList<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@organizationId", organizationId));
            ParametersHelper.AddParamsCondition(baseString, parameters, variableIds);
            DataTable dt = _nxjcFactory.Query(baseString.ToString(), parameters.ToArray());

            foreach (DataRow dr in dt.Rows)
            {
                DataItem itemClass = new DataItem
                {
                    ID = dr["OrganizationID"].ToString().Trim() + ">" + dr["VariableId"].ToString().Trim() + ">Class",
                    Value = dr["CumulantClass"].ToString().Trim()
                };
                DataItem itemDay = new DataItem
                {
                    ID = dr["OrganizationID"].ToString().Trim() + ">" + dr["VariableId"].ToString().Trim() + ">Day",
                    Value = dr["CumulantDay"].ToString().Trim()
                };
                DataItem itemMonth = new DataItem
                {
                    ID = dr["OrganizationID"].ToString().Trim() + ">" + dr["VariableId"].ToString().Trim() + ">Month",
                    Value = dr["CumulantMonth"].ToString().Trim()
                };
                results.Add(itemClass);
                results.Add(itemDay);
                results.Add(itemMonth);
            }

            return results;
        }
    }
}
