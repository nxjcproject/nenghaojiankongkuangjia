<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_ychc_yfcf_clinker01_yaoxunhuanshuibeng.aspx.cs" Inherits="Monitor_yinchuan.Web.UI_Monitor.DCSMonitor.zc_nxjc_ychc_yfcf.zc_nxjc_ychc_yfcf_clinker01_yaoxunhuanshuibeng" %>

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
            color:rgb(182, 255, 0);
            text-align: center;
        }

        .TextDisplay {
            color:red;
            font-size: 15px;
        }
    </style>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('/UI_Monitor/images/page/DCS/zc_nxjc_ychc_yfcf/zc_nxjc_ychc_yfcf_clinker01_yaoxunhuanshuibeng.bmp'); width: 1224px; height: 739px; overflow: hidden;">
        <button onclick="CheckTags()">检查标签</button>
         <%--模拟量开始--%>
        <div class="AnlogSignal mchart" id="zc_nxjc_ychc_yfcf>dcs01_I_620L1I>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width: 40px; display: block; top: 265px; left: 577px; position: absolute;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_ychc_yfcf>dcs01_I_620L2I>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width: 40px; display: block; top: 275px; left: 435px; position: absolute;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_ychc_yfcf>dcs01_I_6204IT>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width: 40px; display: block; top: 294px; left: 796px; position: absolute;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_ychc_yfcf>dcs01_I_6203IT>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width: 40px; display: block; top: 339px; left: 766px; position: absolute;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_ychc_yfcf>dcs01_I_6202IT>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width: 40px; display: block; top: 369px; left: 743px; position: absolute;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_ychc_yfcf>dcs01_I_6201IT>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width: 40px; display: block; top: 398px; left: 721px; position: absolute; "></div>
        <%--模拟量结束--%>

        <%--棒图开始--%>
        <div class="BarGraph mchart" id="zc_nxjc_ychc_yfcf>dcs01_I_620L2I>BarGraph"  style="border-style: solid; border-color: inherit; border-width: 1px; width:6px; height:71px; position:absolute; top: 305px; left: 410px;"></div>
        <div class="BarGraph mchart" id="zc_nxjc_ychc_yfcf>dcs01_I_620L1I>BarGraph"  style="border-style: solid; border-color: inherit; border-width: 1px; width:6px; height:66px; position:absolute; top: 287px; left: 553px;"></div>
        <%--棒图结束--%>
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
<%--<script src="/UI_Monitor/js/common/myDrag.js"></script>--%>
<script src="../../DCSMonitor/js/common/OptionHelper.js"></script>
<script>
    publicData.organizationId = "zc_nxjc_ychc_yfcf_clinker01";
    publicData.sceneName = "1#熟料";

</script>
</html>
