<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Monitor_qtx.Web.UI_Monitor.DCSMonitor.zc_nxjc_qtx_efc.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" type="text/css" href="/lib/ealib/themes/gray/easyui.css" />
    <link rel="stylesheet" type="text/css" href="/lib/ealib/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="/lib/extlib/themes/syExtIcon.css" />
    <link rel="stylesheet" type="text/css" href="/lib/extlib/themes/syExtCss.css" />

    <link rel="stylesheet" type="text/css" href="/UI_Monitor/css/common/mymonitor.css" />

    <script type="text/javascript" src="/lib/ealib/jquery.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/common/jquery.utility.js" charset="utf-8"></script>
    <!--[if lt IE 8 ]><script type="text/javascript" src="/js/common/json2.min.js"></script><![endif]-->

    <script type="text/javascript" src="/lib/ealib/jquery.easyui.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="/lib/ealib/easyui-lang-zh_CN.js" charset="utf-8"></script>

    <script src="/UI_Monitor/js/common/monitorjs.js"></script>
    <script src="/UI_Monitor/js/common/chartjs.js"></script>
    <script src="/UI_Monitor/js/common/SubMonitorAdapter.js"></script>
    <script src="/UI_Monitor/js/common/alarm.js"></script>
    <script src="/UI_Monitor/js/common/multiTagChart.js"></script>
    <script src="/UI_Monitor/js/common/RunningState.js"></script>
    <script src="/UI_Monitor/js/common/AmmeterStatistic.js"></script>
    <script src="/UI_Monitor/js/common/EquipmentInfo.js"></script>
    <script src="/UI_Monitor/js/common/DisplayName.js"></script>
    <script src="/UI_Monitor/js/common/myDrag.js"></script>
    <script src="../../DCSMonitor/js/common/OptionHelper.js"></script>
    <script src="../../js/common/DCSMonitorShell.js"></script>
    
    <script>
        publicData.organizationId = "zc_nxjc_qtx_efc_cementmill02";
        publicData.sceneName = "2#水泥磨";
    </script>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_efc_cementmill02.png'); width: 1350px; height: 740px; overflow: hidden;">
        
       <%--开关量--%>  
        <div class="BoolSignal mchart" id="zc_nxjc_byc_byf>dcs01_F_1P8MRD>BoolSignal" style="position: absolute; top: 60px; left: 77px; height: 20px; width: 20px;" data-option="RelatedTags='dcs01_F_1P8MRD,dcs01_F_1N10MRD  ,dcs01_F_1N11MRD,dcs01_F_1N12MRD,dcs01_F_1N13ALCRD,dcs01_F_1N14MRD,dcs01_F_1N15ALCRD'"></div>
      
          <div class="BoolSignal mchart" id="zc_nxjc_byc_byf>dcs01_1M10MRN>BoolSignal" style="position: absolute; top: 100px; left: 100px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_1M10MRN,dcs01_1M10MRD,dcs01_1M12MRD,dcs01_1M12MRN,dcs01_1M13MRD,dcs01_1M15EHRD,dcs01_1M15EHRN'"></div>
        <%--棒图--%>
        <div class="BarGraph mchart" id="zc_nxjc_byc_byf>dcs01_F_1N10MRD>BarGraph"  style="border-style: solid; border-color: inherit; border-width: 1px; width:10px;height:75px; position:absolute; top: 146px; left: 756px;">
            <%--<div style="width:10px;margin-bottom:0px;padding-bottom:0px"></div>--%>
        </div>
        <%--汉字隐藏--%>
        <div id="zc_nxjc_byc_byf>dcs01_F_1N18MRD>DCS" class="TextDisplay" style="position:absolute; top: 63px; left: 485px;">跑偏</div>  
        <%--模拟量--%>
        <div class="AnlogSignal mchart" id="zc_nxjc_byc_byf>dcs01_F_1P9AC_AI_M>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 51px; left: 8px; position:absolute;color:#4cff00;text-align:right"></div>
        
        
        
        <div id="htmlContainer"></div>
        </div>  
</body>
</html>
