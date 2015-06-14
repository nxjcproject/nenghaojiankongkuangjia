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
            string nxjcConn = "Data Source=192.168.186.48;Initial Catalog=NXJC;Integrated Security=False;User Id=sa;Password=111";
            ISqlServerDataFactory nxjcFactory = new SqlServerDataFactory(nxjcConn);
            string ammeterConn = "Data Source=192.168.186.48;Initial Catalog=zc_nxjc_byc_byf;Integrated Security=False;User Id=sa;Password=111";
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
