using SqlServerDataAdapter;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Monitor_shell.Service.ProcessEnergyMonitor.MonitorShell
{
    public class ComprehensiveConsumptionProvider : IDataItemProvider
    {
        private const string Company = "Company";
        private const string Factory = "Factory";
        private const string ProductionLine = "ProductionLine";
        private ISqlServerDataFactory _connFactory;
        public ComprehensiveConsumptionProvider(string connString)
        {
            _connFactory = new SqlServerDataFactory(connString);
        }

        public IEnumerable<ProcessEnergyMonitor.DataItem> GetDataItem(string organizationId, params string[] variableIds)
        {
            Standard_GB16780_2012.Function_EnergyConsumption_V1 EnergyConsumption_V1 = new Standard_GB16780_2012.Function_EnergyConsumption_V1();
            Standard_GB16780_2012.Parameters_ComprehensiveData m_ComprehensiveData = AutoSetParameters.AutoSetParameters_V1.SetComprehensiveParametersEntity();
            //= new Standard_GB16780_2012.Parameters_ComprehensiveData();
            //m_ComprehensiveData.ClinkerOutsourcing_PowerConsumption = 55;        //外购熟料综合电耗
            //m_ComprehensiveData.ClinkerOutsourcing_CoalConsumption = 100;        //外购熟料综合煤耗

            //m_ComprehensiveData.CoalLowCalorificValue = 29307m;                  //煤粉低位发热量
            //m_ComprehensiveData.CoalWaterContent = 0m;                           //煤粉水分

            //m_ComprehensiveData.ElectricityToCoalFactor = 0.1229m;               //用电折合用煤系数
            //m_ComprehensiveData.StandardCalorificValue = 29307m;                 //标准煤发热量

            IList<DataItem> result = new List<DataItem>();

            //            string templateString = @"select VariableId,ValueFormula from balance_Energy_Template
            //                                    where Enabled='true' and (VariableId='rawMaterialsPreparation_ElectricityConsumption' 
            //                                    or VariableId='clinkerPreparation_ElectricityConsumption'
            //                                    or VariableId='cementPreparation_ElectricityConsumption' or VariableId='clinkerElectricityGeneration_ElectricityConsumption')";
            //            DataTable templateTable = _connFactory.Query(templateString);
            DataTable m_OrganizationInfo = GetOrganizationInfo(organizationId);
            if (m_OrganizationInfo != null && m_OrganizationInfo.Rows.Count > 0)
            {
                ;
                string m_OrganizationType = m_OrganizationInfo.Rows[0]["LevelType"].ToString();
                string m_LevelCode = m_OrganizationInfo.Rows[0]["LevelCode"].ToString();
                string dataString;
                if (m_OrganizationType == Company)           //公司级综合能耗
                {
                    dataString = @"select D.VariableId as VariableId,
                                        sum(D.monthBalance) as monthBalance
                                        from
                                        (select 
                                           B.OrganizationID as OrganizationID,
                                           (case when B.VariableId = 'clinker_ClinkerFactoryTransportInput' then 'clinker_ClinkerInput'
                                               when B.VariableId = 'clinker_ClinkerCompanyTransportInput' then 'clinker_ClinkerOutsourcingInput'
                                               else B.VariableId end) as VariableId,
                                           SUM(B.TotalPeakValleyFlatB) as monthBalance 
                                        from tz_Balance as A, balance_Energy as B, system_Organization as C 
                                        where A.BalanceId=B.KeyId
                                        and (B.ValueType = 'ElectricityQuantity' or B.ValueType = 'MaterialWeight')
                                        and A.TimeStamp like CONVERT(varchar(7),GETDATE(),20) + '%'
                                        and A.StaticsCycle = 'day'
                                        and B.OrganizationID = C.OrganizationID
                                        and C.LevelCode like @LevelCode + '%'
                                        group by B.OrganizationID, B.VariableId
                                        union 
                                        select 
                                            A.OrganizationID as OrganizationID,
                                            (case when A.VariableId = 'clinker_ClinkerFactoryTransportInput' then 'clinker_ClinkerInput'
                                                 when A.VariableId = 'clinker_ClinkerCompanyTransportInput' then 'clinker_ClinkerOutsourcingInput'
                                                 else A.VariableId end) as VariableId,
                                            (case when CumulantDay is null then 0 else CumulantDay end) as monthBalance
                                        from RealtimeIncrementCumulant AS A, system_Organization B
                                        where 
                                        A.OrganizationID = B.OrganizationID
                                        and B.LevelCode like @LevelCode + '%'
                                        ) D
                                        group by D.VariableId";
                }
                else if (m_OrganizationType == Factory || m_OrganizationType == ProductionLine)              //分厂级、产线级综合能耗
                {
                    dataString = @"select D.VariableId as VariableId,
                                        sum(D.monthBalance) as monthBalance
                                        from
                                        (select 
                                           B.OrganizationID as OrganizationID,
                                           (case when B.VariableId = 'clinker_ClinkerFactoryTransportInput' then 'clinker_ClinkerOutsourcingInput'
                                               when B.VariableId = 'clinker_ClinkerCompanyTransportInput' then 'clinker_ClinkerOutsourcingInput'
                                               else B.VariableId end) as VariableId,
                                           SUM(B.TotalPeakValleyFlatB) as monthBalance 
                                        from tz_Balance as A, balance_Energy as B, system_Organization as C 
                                        where A.BalanceId=B.KeyId
                                        and (B.ValueType = 'ElectricityQuantity' or B.ValueType = 'MaterialWeight')
                                        and A.TimeStamp like CONVERT(varchar(7),GETDATE(),20) + '%'
                                        and A.StaticsCycle = 'day'
                                        and B.OrganizationID = C.OrganizationID
                                        and C.LevelCode like @LevelCode + '%'
                                        group by B.OrganizationID, B.VariableId
                                        union 
                                        select 
                                            A.OrganizationID as OrganizationID,
                                            (case when A.VariableId = 'clinker_ClinkerFactoryTransportInput' then 'clinker_ClinkerOutsourcingInput'
                                                 when A.VariableId = 'clinker_ClinkerCompanyTransportInput' then 'clinker_ClinkerOutsourcingInput'
                                                 else A.VariableId end) as VariableId,
                                            (case when CumulantDay is null then 0 else CumulantDay end) as monthBalance
                                        from RealtimeIncrementCumulant AS A, system_Organization B
                                        where 
                                        A.OrganizationID = B.OrganizationID
                                        and B.LevelCode like @LevelCode + '%'
                                        ) D
                                        group by D.VariableId";
                }
                else       //其它为集团级综合能耗
                {
                    dataString = @"select D.VariableId as VariableId,
                                        sum(D.monthBalance) as monthBalance
                                        from
                                        (select 
                                           B.OrganizationID as OrganizationID,
                                           (case when B.VariableId = 'clinker_ClinkerFactoryTransportInput' then 'clinker_ClinkerInput'
                                               when B.VariableId = 'clinker_ClinkerCompanyTransportInput' then 'clinker_ClinkerInput'
                                               else B.VariableId end) as VariableId,
                                           SUM(B.TotalPeakValleyFlatB) as monthBalance 
                                        from tz_Balance as A, balance_Energy as B, system_Organization as C 
                                        where A.BalanceId=B.KeyId
                                        and (B.ValueType = 'ElectricityQuantity' or B.ValueType = 'MaterialWeight')
                                        and A.TimeStamp like CONVERT(varchar(7),GETDATE(),20) + '%'
                                        and A.StaticsCycle = 'day'
                                        and B.OrganizationID = C.OrganizationID
                                        and C.LevelCode like @LevelCode + '%'
                                        group by B.OrganizationID, B.VariableId
                                        union 
                                        select 
                                            A.OrganizationID as OrganizationID,
                                            (case when A.VariableId = 'clinker_ClinkerFactoryTransportInput' then 'clinker_ClinkerInput'
                                                 when A.VariableId = 'clinker_ClinkerCompanyTransportInput' then 'clinker_ClinkerInput'
                                                 else A.VariableId end) as VariableId,
                                            (case when CumulantDay is null then 0 else CumulantDay end) as monthBalance
                                        from RealtimeIncrementCumulant AS A, system_Organization B
                                        where 
                                        A.OrganizationID = B.OrganizationID
                                        and B.LevelCode like @LevelCode + '%'
                                        ) D
                                        group by D.VariableId";
                }
                List<SqlParameter> parameters = new List<SqlParameter>();
                parameters.Add(new SqlParameter("@LevelCode", m_LevelCode));
                DataTable table = _connFactory.Query(dataString, parameters.ToArray());

                EnergyConsumption_V1.LoadComprehensiveData(table, m_ComprehensiveData, "VariableId", "monthBalance");

                DataItem clinker_ElectricityConsumption_Comprehensive = new DataItem
                {
                    ID = organizationId + ">clinker_ElectricityConsumption_Comprehensive>Comprehensive",
                    Value = EnergyConsumption_V1.GetClinkerPowerConsumption().ToString("#.00").Trim()
                };
                result.Add(clinker_ElectricityConsumption_Comprehensive);

                DataItem clinker_CoalConsumption_Comprehensive = new DataItem
                {
                    ID = organizationId + ">clinker_CoalConsumption_Comprehensive>Comprehensive",
                    Value = EnergyConsumption_V1.GetClinkerCoalConsumption().ToString("#.00").Trim()
                };
                result.Add(clinker_CoalConsumption_Comprehensive);

                decimal defaultCE = 0;
                decimal.TryParse(clinker_ElectricityConsumption_Comprehensive.Value, out defaultCE);
                DataItem cementmill_ElectricityConsumption_Comprehensive = new DataItem
                {
                    ID = organizationId + ">cementmill_ElectricityConsumption_Comprehensive>Comprehensive",
                    Value = EnergyConsumption_V1.GetCementPowerConsumption(defaultCE).ToString("#.00").Trim()
                };
                result.Add(cementmill_ElectricityConsumption_Comprehensive);

                decimal defaultCC = 0;
                decimal.TryParse(clinker_CoalConsumption_Comprehensive.Value, out defaultCC);
                DataItem cementmill_CoalConsumption_Comprehensive = new DataItem
                {
                    ID = organizationId + ">cementmill_CoalConsumption_Comprehensive>Comprehensive",
                    Value = EnergyConsumption_V1.GetCementCoalConsumption(defaultCC).ToString("#.00").Trim()
                };
                result.Add(cementmill_CoalConsumption_Comprehensive);
            }
            return result;
        }
        private DataTable GetOrganizationInfo(string myOrganizationId)
        {
            string m_Sql = @"select A.LevelCode as LevelCode, A.LevelType as LevelType from system_Organization A
                     where A.OrganizationID = @OrganizationID";
            List<SqlParameter> m_Parameters = new List<SqlParameter>();
            m_Parameters.Add(new SqlParameter("@OrganizationID", myOrganizationId));
            DataTable table = _connFactory.Query(m_Sql, m_Parameters.ToArray());
            return table;
        }
    }
}
