using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Monitor_shell.Service.ProcessEnergyMonitor.EnergyContrast
{
    public class EnergyContrastHelper
    {
        public static string GetSqlString(IDictionary<string, List<FeildInformation>> feildInfor)
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
                    string tempFeild = key + "." + feild.FeildName + " as " + feild.VariableName;
                    feilds.Append(tempFeild).Append(",") ;
                }
            }
            tables.Remove(tables.Length - 1, 1);
            feilds.Remove(feilds.Length - 1, 1);
            result.Append(feilds.ToString()).Append(" from ").Append(tables.ToString());

            return result.ToString();
        }
    }
}
