using Monitor_shell.Infrastructure.Configuration;
using Monitor_shell.Service.Formula;
using Monitor_shell.Service.MeterStatistics;
using Monitor_shell.Service.ProcessEnergyMonitor.DCSMonitorShell;
using Monitor_shell.Web.UI_Monitor.TrendTool;
using SqlServerDataAdapter;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Monitor_shell.Web.UI_Monitor.ProcessEnergyMonitor.MonitorShell
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TrendlineRenderer.GetData("zc_nxjc_byc_byf_clinker01%3EkilnSystem_ElectricityQuantity%3EDay", "2015-09-25 22:53:12", "2015-10-05 22:53:12", 5);
            //FormulaHelper formulaService = new FormulaHelper();
            //formulaService.Claculate("zc_nxjc_byc_byf_cementmill01", "P0102");
            //string nxjcConn = ConnectionStringFactory.NXJCConnectionString;
            //ISqlServerDataFactory nxjcFactory = new SqlServerDataFactory(nxjcConn);
            //string ammeterConn = ConnectionStringFactory.GetAmmeterConnectionString("zc_nxjc_byc_byf_cementmill01");
            //ISqlServerDataFactory ammeterFactory = new SqlServerDataFactory(ammeterConn);
            //MeterStatisticsHelper helper = new MeterStatisticsHelper(nxjcFactory, ammeterFactory);
           // helper.GetMeterStatictisticsData("zc_nxjc_byc_byf_cementmill01", "hybridMaterialsPreparation", 10);

           // formulaService.GetDenominatorFormulaJson("zc_nxjc_byc_byf_cementmill01", "hybridMaterialsPreparation");
            //MeterStatisticsHelper.GetEquipmentInfo("", "");





            //DataTable table = new DataTable();//table为从数据库中取出的
            ////.....
            //foreach (DataRow dr in table.Rows)
            //{
            //    DateTime time = Convert.ToDateTime(dr["时间列"]);//取出当前列的时间
            //    TimeSpan span = DateTime.Now - time;//时间间隔
            //    double mimutesSpan = span.TotalMinutes;//将间隔时间转化为分钟
            //    if (mimutesSpan > 1)//如果间隔时间大于1分钟
            //    {
            //        //......
            //    }
            //}

            //DCSMonitorHelper.GetViewPageInfosMethod("027fd8ff-0f99-4af7-b554-8eb9099019a1");
            DCSMonitorHelper.GetRelatedTags("zc_nxjc_byc_byf", "F_1M13MRN,F_1N10MRD  ,F_1N11MRD,F_1N12MRD,F_1N13ALCRD,F_1N14MRD,F_1N15ALCRD;");
        } 
    }
}