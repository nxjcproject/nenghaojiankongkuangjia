using Monitor_shell.Service.ProcessEnergyMonitor.DCSMonitorShell;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Monitor_shell.Web.UI_Monitor.DCSMonitor.MonitorShell
{
    /// <summary>
    /// DCSMonitorShell1 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    [System.Web.Script.Services.ScriptService]
    public class DCSMonitorShell1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        /// <summary>
        /// 仪表信息
        /// </summary>
        /// <param name="organizationId"></param>
        /// <param name="tagSet"></param>
        /// <returns></returns>
        [WebMethod]
        public List<GaugesInfo> GetGaugesInfors(string organizationId, string tagSet)
        {
            return DCSMonitorHelper.GetGaugesInfos(organizationId,tagSet);
        }
        /// <summary>
        /// 获得颜色信息
        /// </summary>
        /// <param name="organizationId"></param>
        /// <returns></returns>
        [WebMethod]
        public SyetemColor GetSystemColorInfo(string organizationId)
        {
            return DCSMonitorHelper.GetAlarmColorInfo(organizationId);
        }
        /// <summary>
        /// 获取分厂组织机构Id
        /// </summary>
        /// <param name="organizationId"></param>
        /// <returns></returns>
        [WebMethod]
        public string GetFactoryId(string organizationId)
        {
            return DCSMonitorHelper.GetFactoryId(organizationId);
        }
        /// <summary>
        /// 运行状态信息
        /// </summary>
        /// <param name="factoryId"></param>
        /// <param name="relatedTags"></param>
        /// <returns></returns>
        [WebMethod]
        public Dictionary<string, RunningStatus> GetRelatedTags(string factoryId, string relatedTags)
        {
            return DCSMonitorHelper.GetRelatedTags(factoryId, relatedTags);
        }
    }
}
