<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_byc_byf_aircompressor.aspx.cs" Inherits="Monitor_byc.web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_byc_byf.zc_nxjc_byc_byf_aircompressor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
    <script src="/UI_Monitor/js/common/ComprehensiveStatistic.js"></script>
    <script>
        publicData.organizationId = "zc_nxjc_byc_byf";
        publicData.sceneName = "";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_byc_byf_aircompressor.png'); width: 1350px; height: 740px; overflow: hidden;">
        <%--<div onclick="getAllCookie()">cookie测试</div>--%>
        <%--<div onclick="openWindow()">打开趋势窗口</div>--%>

        <%--1号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 147px; left: 444px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply1>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
            <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--2号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 244px; left: 444px;">
          
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply2>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--3号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 333px; left: 445px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply3>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply3>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--4号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 426px; left: 443px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply4>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply4>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--原料压缩空气站控制箱--%>
        <table class="mytable" style="position: absolute; top: 244px; left: 987px;">
           
            <tr>
                <td><span id="zc_nxjc_byc_byf>rawMaterialCompressedAirStation>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>rawMaterialCompressedAirStation>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥1号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 147px; left: 707px; ">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply1>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥2号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 243px; left: 708px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply2>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥3号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 335px; left: 708px;">
           
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply3>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply3>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥4号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 425px; left: 707px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply4>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply4>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥压缩空气站控制箱--%>
        <table class="mytable" style="position: absolute; top: 337px; left: 988px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementCompressedAirStation>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementCompressedAirStation>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--窑中空压机--%>
        <table class="mytable" style="position: absolute; top: 145px; left: 986px;">
           
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerInAirCompressorPowerSupply>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerInAirCompressorPowerSupply>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泵房--%>
        <table class="mytable" style="position: absolute; top: 432px; left: 987px;">
           
            <tr>
                <td><span id="zc_nxjc_byc_byf>waterPumpHouse>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>waterPumpHouse>Power" class="mchart"></span></td>
            </tr>
        </table>
       
        </div>
</body>
</html>
