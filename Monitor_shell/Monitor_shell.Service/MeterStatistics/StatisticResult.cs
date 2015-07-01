using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace Monitor_shell.Service.MeterStatistics
{
    public struct StatisticResult
    {
        public string formula;
        public DataTable data;
        public DataTable EquipmentInfoData;
        public IDictionary<string, string> PFormula;
        public IDictionary<string, string> GFormula;
    }
}
