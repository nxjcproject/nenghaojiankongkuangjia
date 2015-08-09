using Monitor_shell.Infrastructure.Configuration;
using SqlServerDataAdapter;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace Monitor_shell.Service.DisplayName
{
    public class DisplayNameHelper
    {
        public static Dictionary<string,string> GetItemName(string myItemStrings)
        {
            Dictionary<string, string> resultDictionary = new Dictionary<string, string>();
            string[] itemList = myItemStrings.Split(',');
            ISqlServerDataFactory dataFactory = new SqlServerDataFactory(ConnectionStringFactory.NXJCConnectionString);

            List<string> resultList = new List<string>();
            StringBuilder sqlBuilder=new StringBuilder();
            //sqlBuilder.Append("");
            foreach (string itemId in itemList)
            {
                string[] t_array = itemId.Split('>');
                if (t_array.Count() == 3)
                {
                    t_array[1] = t_array[1].Split('_')[0];
                    sqlBuilder.Append("(A.OrganizationID='" + t_array[0] + "' and " + "B.VariableId='" + t_array[1] + "') or ");
                }
            }
            sqlBuilder.Remove(sqlBuilder.Length - 4, 4);
            string mySql=@"select A.OrganizationID+'>'+B.VariableId as ItemId,A.Name+B.Name as Name
                from tz_Formula A,formula_FormulaDetail B
                where A.KeyID=B.KeyID
                and ({0})";
            DataTable table = dataFactory.Query(string.Format(mySql, sqlBuilder.ToString()));
            foreach (DataRow dr in table.Rows)
            {
                if(!resultDictionary.Keys.Contains(dr["ItemId"].ToString().Trim()))
                {
                    resultDictionary.Add(dr["ItemId"].ToString().Trim(), dr["Name"].ToString().Trim());
                }
            }
            return resultDictionary;
        }
    }
}
