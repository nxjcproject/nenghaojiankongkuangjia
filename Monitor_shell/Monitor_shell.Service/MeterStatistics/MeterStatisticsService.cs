using Monitor_shell.Infrastructure.Configuration;
using SqlServerDataAdapter;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace Monitor_shell.Service.MeterStatistics
{
    public class MeterStatisticsService
    {
        public static StatisticResult GetAmmeterStatisticData(string organizationId, string variableId)
        {
            string nxjcConn = ConnectionStringFactory.NXJCConnectionString;
            ISqlServerDataFactory nxjcFactory = new SqlServerDataFactory(nxjcConn);
            string ammeterConn = ConnectionStringFactory.GetAmmeterConnectionString(organizationId);
            ISqlServerDataFactory ammeterFactory = new SqlServerDataFactory(ammeterConn);

            MeterStatisticsHelper meterStatistics = new MeterStatisticsHelper(nxjcFactory, ammeterFactory);
            DataTable data = meterStatistics.GetMeterStatictisticsData(organizationId, variableId, 10);
            StatisticResult result = new StatisticResult
            {
                formula = meterStatistics.AmmeterFormula,
                data = data
            };

            return result;
        }
    }
}
