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
    <script src="/UI_Monitor/js/common/EquipmentInfo.js"></script>
    <script src="/UI_Monitor/js/common/DisplayName.js"></script>
    <script src="/UI_Monitor/js/common/myDrag.js"></script>
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
        <table class="mytable" style="position: absolute; top: 205px; left: 213px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply1>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
            <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--2号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 207px; left: 381px;">
          
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply2>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--3号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 344px; left: 208px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply3>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply3>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--4号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 344px; left: 382px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply4>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerAirCompressorPowerSupply4>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--原料压缩空气站控制箱--%>
        <table class="mytable" style="position: absolute; top: 469px; left: 214px;">
           
            <tr>
                <td><span id="zc_nxjc_byc_byf>rawMaterialCompressedAirStation>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>rawMaterialCompressedAirStation>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥1号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 203px; left: 590px; ">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply1>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥2号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 203px; left: 752px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply2>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥3号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 344px; left: 589px;">
           
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply3>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply3>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥4号空压机电源--%>
        <table class="mytable" style="position: absolute; top: 344px; left: 759px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply4>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementMaillAirCompressorPowerSupply4>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥压缩空气站控制箱--%>
        <table class="mytable" style="position: absolute; top: 467px; left: 590px;">
            
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementCompressedAirStation>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>cementCompressedAirStation>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--窑中空压机--%>
        <table class="mytable" style="position: absolute; top: 265px; left: 1015px;">
           
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerInAirCompressorPowerSupply>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>clinkerInAirCompressorPowerSupply>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泵房--%>
        <table class="mytable" style="position: absolute; top: 470px; left: 388px;">
           
            <tr>
                <td><span id="zc_nxjc_byc_byf>waterPumpHouse>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf>waterPumpHouse>Power" class="mchart"></span></td>
            </tr>
        </table>
        </div>

     <div id="htmlContainer"></div>

    <%--1号空压机电源--%>
        <div class="imageContainer equipmentInfo" data-equipmentid="clinkerAirCompressorPower1" id="zc_nxjc_byc_byf_clinker01>clinkerAirCompressorPower1>RunningState" style="position:absolute; top: 209px; left: 167px; height: 20px; width: 19px;"></div>
    <%--2号空压机电源--%>
     <div class="imageContainer equipmentInfo" data-equipmentid="clinkerAirCompressorPower2" id="zc_nxjc_byc_byf_clinker01>clinkerAirCompressorPower2>RunningState" style="position:absolute; top: 215px; left: 337px; height: 20px; width: 19px;"></div>
    <%--3号空压机电源--%>
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerAirCompressorPower3" id="zc_nxjc_byc_byf_clinker01>clinkerAirCompressorPower3>RunningState" style="position:absolute; top: 352px; left: 165px; height: 20px; width: 19px;"></div>
   <%--4号空压机电源--%>
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerAirCompressorPower4" id="zc_nxjc_byc_byf_clinker01>clinkerAirCompressorPower4>RunningState" style="position:absolute; top: 354px; left: 340px; height: 20px; width: 19px;"></div>
   <%--水泥磨1号空压机电源--%>
     <div class="imageContainer equipmentInfo" data-equipmentid="cementMaillAirCompressorPower1" id="zc_nxjc_byc_byf_cementmill01>cementMaillAirCompressorPower1>RunningState" style="position:absolute; top: 212px; left: 544px; height: 20px; width: 19px;"></div>
  <%--水泥磨2号空压机电源--%>
     <div class="imageContainer equipmentInfo" data-equipmentid="cementMaillAirCompressorPower2" id="zc_nxjc_byc_byf_cementmill01>cementMaillAirCompressorPower2>RunningState" style="position:absolute; height: 20px; width: 19px; top: 213px; left: 715px;"></div>
  <%--水泥磨3号空压机电源--%>
     <div class="imageContainer equipmentInfo" data-equipmentid="cementMaillAirCompressorPower3" id="zc_nxjc_byc_byf_cementmill01>cementMaillAirCompressorPower3>RunningState" style="position:absolute; height: 20px; width: 19px; top: 357px; left: 543px;"></div>
  <%--水泥磨4号空压机电源--%>
     <div class="imageContainer equipmentInfo"data-equipmentid="cementMaillAirCompressorPower4"  id="zc_nxjc_byc_byf_cementmill01>cementMaillAirCompressorPower4>RunningState" style="position:absolute; height: 20px; width: 19px; top: 357px; left: 716px;"></div>
  <%--窑中空压机--%>
     <div class="imageContainer equipmentInfo" data-equipmentid="cementMaillAirCompressorPower1" id="zc_nxjc_byc_byf>YWKYAYX>RunningState" style="position:absolute; height: 20px; width: 19px; top: 277px; left: 978px;"></div>
  
  
    
  
</body>
</html>
