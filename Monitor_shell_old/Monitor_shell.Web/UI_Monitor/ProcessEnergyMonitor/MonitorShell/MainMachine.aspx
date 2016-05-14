<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMachine.aspx.cs" Inherits="Monitor_shell.Web.UI_Monitor.ProcessEnergyMonitor.MonitorShell.MainMachine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/lib/ealib/themes/gray/easyui.css" />
    <link rel="stylesheet" type="text/css" href="/lib/ealib/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="/lib/extlib/themes/syExtIcon.css" />
    <link rel="stylesheet" type="text/css" href="/lib/extlib/themes/syExtCss.css" />

    <link rel="stylesheet" type="text/css" href="/UI_Monitor/css/common/mymonitor.css" />

    <style type="text/css">
        .AnlogSignal {
            font-size: 15px;
        }
    </style>
    <%--<script src="../../js/common/DCSMonitorShell.js"></script>--%>
    
    
    
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_efc_cementmill02.png') ; width:1350px;height:740px; overflow: hidden;">
        <button onclick="CheckTags()">检查标签</button>
          
          <div style="position: absolute; top: 100px; left: 47px; height: 20px; width: 19px;"><img style="position:absolute" src="../../images/common/arrowGreenDown.gif"/><img src="../../images/common/yellowS.gif"/></div>
        <%--开关量--%>  
        <div class="BoolSignal mchart" id="zc_nxjc_byc_byf>dcs01_F_1P8MRD>BoolSignal" style="position: absolute; top: 82px; left: 116px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_1P8MRD,dcs01_F_1N10MRD  ,dcs01_F_1N11MRD',Display='111:greenCircle,000:redCircle,111:redCircle,'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_byc_byf>dcs01_1M10MRN>BoolSignal" style="position: absolute; top: 100px; left: 100px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_1N12MRD,dcs01_F_1N10MRD  ,dcs01_F_1N12MRD',Display='111:greenCircle,000:yellowCircle'"></div>
        <%--棒图--%>
        <div class="BarGraph mchart" id="zc_nxjc_byc_byf>dcs01_F_1N10MRD>BarGraph"  style="border-style: solid; border-color: inherit; border-width: 1px; width:16px; height:88px; position:absolute; top: 203px; left: 626px;">
            <%--<div style="width:10px;margin-bottom:0px;padding-bottom:0px"></div>--%>
        </div>
        <%--汉字隐藏--%>
        <div id="zc_nxjc_byc_byf>dcs01_F_1N18MRD>DCS" class="TextDisplay" data-option="Display='1'" style="position:absolute; top: 97px; left: 392px;">跑偏</div>  
        <%--模拟量--%>
        <div class="AnlogSignal mchart" id="zc_nxjc_byc_byf>dcs01_F_1P9AC_AI_M>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 51px; left: 8px; position:absolute;color:green"></div>
        
        <%--汉字隐藏--%>
        <div id="zc_nxjc_byc_byf>Clinker03_DI6_131_03>DCS" class="TextDisplay" style="position:absolute; top: 80px; left: 466px; color:red;text-align:center">跑偏</div>  
        <div id="zc_nxjc_byc_byf>Cement01_DI2_M13M>DCS" class="TextDisplay" style="position:absolute; top: 136px; left: 503px; color:red;text-align:center">跑偏</div>  

         <div id="zc_nxjc_byc_byf>dcs01_1M10MRD>DCS" class="TextDisplay" style="position:absolute; top: 143px; left: 427px; color:red;text-align:center">测试</div>  

         <div class="BarGraph mchart" id="zc_nxjc_byc_byf>Cement01_M51AC_8AHR>BarGraph"  style="border-style: solid; border-color: inherit; border-width: 1px; width:30px; height:134px; position:absolute; top: 146px; left: 756px;"></div>
        
        <div id="htmlContainer"></div>
        </div>
</body>
    <script type="text/javascript" src="/lib/ealib/jquery.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/common/jquery.utility.js" charset="utf-8"></script>
    <!--[if lt IE 8 ]><script type="text/javascript" src="/js/common/json2.min.js"></script><![endif]-->

    <script type="text/javascript" src="/lib/ealib/jquery.easyui.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="/lib/ealib/easyui-lang-zh_CN.js" charset="utf-8"></script>


    <script src="/UI_Monitor/js/common/DCSTagInfo.js"></script>
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
    <script>
        publicData.organizationId = "zc_nxjc_byc_byf";
        publicData.sceneName = "2#水泥磨";

    </script>
</html>
