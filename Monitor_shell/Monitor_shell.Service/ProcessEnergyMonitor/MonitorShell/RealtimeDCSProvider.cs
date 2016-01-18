using Monitor_shell.Infrastructure.Configuration;
using Monitor_shell.Service.ProcessEnergyMonitor.EnergyContrast;
using SqlServerDataAdapter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Monitor_shell.Service.ProcessEnergyMonitor.MonitorShell
{
    public class RealtimeDCSProvider : IDataItemProvider
    {
        private ISqlServerDataFactory _dataFactory;
        private string _type;

        public RealtimeDCSProvider(string type)
        {
            _type = type;
        }
        public IEnumerable<DataItem> GetDataItem(string organizationId, params string[] variableIds)
        {
            IList<DataItem> results = new List<DataItem>();

            string connStr = ConnectionStringFactory.NXJCConnectionString;
            _dataFactory = new SqlServerDataFactory(connStr);

            EnergyContrastHelper contrastHelper = new EnergyContrastHelper(_type);

            foreach (var item in contrastHelper.GetRealtimeDatas(organizationId, variableIds))
            {
                results.Add(item);
            }

            //foreach (var item in GetRealtimeDatas(organizationId))
            //{
            //    results.Add(item);
            //}

            return results;
        }
    }
}
