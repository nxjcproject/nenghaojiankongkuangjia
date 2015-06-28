using Monitor_shell.Infrastructure.Configuration;
using SqlServerDataAdapter;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace Monitor_shell.Service.Formula
{
    public class FormulaHelper
    {
        ISqlServerDataFactory dataFactory = new SqlServerDataFactory(ConnectionStringFactory.NXJCConnectionString);

        public IDictionary<string, string> ammeterDictionary = new Dictionary<string, string>();
        public IDictionary<string, string> materialDictionary = new Dictionary<string, string>();
        public IDictionary<string, string> PDictionary = new Dictionary<string, string>();
        public IDictionary<string, string> GDictionary = new Dictionary<string, string>();
        public void Claculate(string organizationId, string factor)
        {

            if (factor.Contains('A'))
            {
                if (!ammeterDictionary.Keys.Contains(factor))
                {
                    ammeterDictionary.Add(factor, "");
                    return;
                }
            }
            if (factor.Contains('S'))
            {
                if (!materialDictionary.Keys.Contains(factor))
                {
                    materialDictionary.Add(factor, "");
                    return;
                }
            }
            if (factor.Contains('P'))
            {

                string mySql = @"select B.LevelCode,B.Name,B.Formula
                                    from tz_Formula A,formula_FormulaDetail B
                                    where A.KeyID=B.KeyID
                                    and A.OrganizationID=@organizationId
                                    and B.LevelCode=@levelCode";
                SqlParameter[] parameters ={new SqlParameter("organizationId",organizationId),
                                             new SqlParameter("levelCode",factor)};
                DataTable table = dataFactory.Query(mySql, parameters);
                string formula = "";
                if (table.Rows.Count == 1)
                {
                    formula = table.Rows[0]["Formula"].ToString().Trim();
                    if (factor.Contains('P'))
                    {
                        if (!PDictionary.Keys.Contains(factor))
                        {
                            PDictionary.Add(factor, formula);
                        }
                    }
                    IEnumerable<string> factorList = Regex.Split(formula, @"[+\-*/()]+")
                                                .Except((IEnumerable<string>)new string[] { "" })
                                                .Select(p => p = Regex.Replace(p, @"^([0-9]+)([\.]([0-9]+))?$", ""))
                                                .Except((IEnumerable<string>)new string[] { "" });
                    foreach (string item in factorList)
                    {
                        Claculate(organizationId, item.Trim());
                    }
                }
            }
            if (factor.Contains('G')) //LevelCode以G开头的组织机构到分厂级
            {


                string mySql = @"select B.LevelCode,B.Name,B.Formula
                                    from tz_Formula A,formula_FormulaDetail B
                                    where A.KeyID=B.KeyID
                                    and A.OrganizationID=(SELECT A.OrganizationID
									FROM system_Organization A,system_Database B
									WHERE A.DatabaseID=B.DatabaseID
									and CHARINDEX(A.LevelCode,(select LevelCode
									from system_Organization
									where OrganizationID=@organizationId))>0
									and A.LevelType='Factory')
                                    and B.LevelCode=@levelCode";
                SqlParameter[] parameters ={new SqlParameter("organizationId",organizationId),
                                             new SqlParameter("levelCode",factor)};
                DataTable table = dataFactory.Query(mySql, parameters);
                string formula = "";
                if (table.Rows.Count == 1)
                {
                    formula = table.Rows[0]["Formula"].ToString().Trim();                    
                    if (factor.Contains('G'))
                    {
                        if (!GDictionary.Keys.Contains(factor))
                        {
                            GDictionary.Add(factor, formula);
                        }
                    }
                    IEnumerable<string> factorList = Regex.Split(formula, @"[+\-*/()]+")
                                                .Except((IEnumerable<string>)new string[] { "" })
                                                .Select(p => p = Regex.Replace(p, @"^([0-9]+)([\.]([0-9]+))?$", ""))
                                                .Except((IEnumerable<string>)new string[] { "" });
                    foreach (string item in factorList)
                    {
                        Claculate(organizationId, item.Trim());
                    }
                }
            }
        }
    }
}
