<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_zcshn_zhuzhouc_zhuzhouf_clinker01_shu.aspx.cs" Inherits="Monitor_zhuzhou.web.UI_Monitor.ProcessEnergyMonitor.zc_zcshn_zhuzhouc_zhuzhouf.zc_zcshn_zhuzhouc_zhuzhouf_clinker01_shu" %>

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
    <script src="/UI_Monitor/js/common/EquipmentInfo.js"></script>
    <script>
        publicData.organizationId = "zc_zcshn_zhuzhouc_zhuzhouf_clinker01";
        publicData.sceneName = "1#熟料线";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_zcshn_zhuzhouc_zhuzhouf_clinker01_shu.png'); width: 1350px; height: 740px; overflow: hidden;">
        <table class="mytable" style="position: absolute; top: 88px; left: 410px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerHoist>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerHoist>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerHoist>Power" class="mchart"></span></td>
            </tr>
        </table>
           <%--新加的窑尾排风机--%>
        <table class="mytable" style="position: absolute; top: 417px; left: 235px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnTailExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnTailExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnTailExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--新加的窑尾高温风机--%>
        <table class="mytable" style="position: absolute; top: 291px; left: 18px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>highTemperatureFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>highTemperatureFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>highTemperatureFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 263px; left: 1062px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMillMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMillMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMillMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 418px; left: 482px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        
        
        <table class="mytable" style="position: absolute; top: 41px; left: 701px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMillFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMillFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMillFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        
        <table class="mytable" style="position: absolute; top: 281px; left: 800px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower3>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower3>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower3>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 280px; left: 925px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower5>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower5>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower5>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 278px; left: 861px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower4>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower4>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower4>Power" class="mchart"></span></td>
            </tr>
        </table>
        
        <table class="mytable" style="position: absolute; top: 275px; left: 1178px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnHeadExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnHeadExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnHeadExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 460px; left: 1237px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerChainConveyor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerChainConveyor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerChainConveyor>Power" class="mchart"></span></td>
            </tr>
        </table>
       <%-- <table class="mytable" style="position: absolute; top: 680px; left: 983px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>adhesiveTape1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>adhesiveTape1>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>adhesiveTape1>Power" class="mchart"></span></td>
            </tr>
        </table>--%>
       <%-- <table class="mytable" style="position: absolute; top: 680px; left: 1048px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>adhesiveTape2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>adhesiveTape2>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>adhesiveTape2>Power" class="mchart"></span></td>
            </tr>
        </table>--%>
        <table class="mytable" style="position: absolute; top: 394px; left: 850px;" >
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerCrusher>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerCrusher>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerCrusher>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 504px; left: 611px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker07>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker07>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker07>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 503px; left: 677px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker09a>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker09a>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker09a>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 503px; left: 743px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker09b>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker09b>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker09b>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 503px; left: 805px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker10b>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker10b>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker10b>Power" class="mchart"></span></td>
            </tr>
        </table>
        
        <table class="mytable" style="position: absolute; top: 501px; left: 872px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker12>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker12>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker12>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 499px; left: 935px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker14>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker14>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker14>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 499px; left: 1000px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker16>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker16>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker16>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 608px; left: 511px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker06>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker06>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker06>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 606px; left: 574px; height: 59px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker08a>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker08a>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker08a>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 608px; left: 639px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker08b>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker08b>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker08b>Power" class="mchart"></span></td>
            </tr>
        </table>

        <table class="mytable" style="position: absolute; top: 608px; left: 706px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker10a>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker10a>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker10a>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 608px; left: 769px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker11>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker11>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker11>Power" class="mchart"></span></td>
            </tr>
        </table>   
         <table class="mytable" style="position: absolute; top: 607px; left: 836px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker13>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker13>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker13>Power" class="mchart"></span></td>
            </tr>
        </table>   
           <table class="mytable" style="position: absolute; top: 606px; left: 901px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker15>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker15>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker15>Power" class="mchart"></span></td>
            </tr>
        </table> 
         <table class="mytable" style="position: absolute; top: 609px; left: 964px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker17>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker17>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker17>Power" class="mchart"></span></td>
            </tr>
        </table>   
             <table class="mytable" style="position: absolute; top: 608px; left: 1030px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker18>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker18>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker18>Power" class="mchart"></span></td>
            </tr>
        </table>   
            <table class="mytable" style="position: absolute; top: 605px; left: 1092px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker19>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker19>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker19>Power" class="mchart"></span></td>
            </tr>
        </table>              
        <table class="mytable" style="position: absolute; top: 540px; left: 232px; right: 1052px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 540px; left: 157px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 540px; left: 83px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation>ElectricityConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 633px; left: 84px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_ClinkerOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalInput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker>CoalConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 632px; left: 156px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_ClinkerOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalInput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_CoalConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 633px; left: 231px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_ClinkerOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalInput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_CoalConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
        <span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerF9AC>ElectricityConsumption" class="mchart"></span>
    </div>

    <div id="htmlContainer"></div>

    <!----------------------------运行状态------------------------------------>
    <!--高温风机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="highTemperatureFan" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>highTemperatureFan>RunningState" style="position:absolute; height: 20px; width: 19px; top: 248px; left: 44px;"></div>
    <!--废气排风机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="kilnTailExhaustFan" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnTailExhaustFan>RunningState" style="position:absolute; height: 20px; width: 19px; top: 435px; left: 191px;"></div>
    <!--窑主电机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="kilnMainMotor" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnMainMotor>RunningState" style="position:absolute; height: 20px; width: 19px; top: 393px; left: 432px;"></div>
    <!--窑头排风机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="kilnHeadExhaustFan" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnHeadExhaustFan>RunningState" style="position:absolute; height: 20px; width: 19px; top: 367px; left: 1213px;"></div>
    <!--熟料拉链机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerChainConveyor" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerChainConveyor>RunningState" style="position:absolute; height: 20px; width: 19px; top: 411px; left: 1172px; bottom: 133px;"></div>
    <!--熟料破碎机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerCrusher" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerCrusher>RunningState" style="position:absolute; height: 20px; width: 19px; top: 406px; left: 952px;"></div>
    <!--篦冷机11-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker11" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker11>RunningState" style="position:absolute; top: 580px; left: 795px; height: 20px; width: 19px;"></div>
    <!--篦冷机10a-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker10a" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker10a>RunningState" style="position:absolute; top: 580px; left: 730px; height: 20px; width: 19px;"></div>
    <!--篦冷机08b-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker08b" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker08b>RunningState" style="position:absolute; top: 579px; left: 664px; height: 20px; width: 19px;"></div>
    <!--篦冷机08a-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker08a" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker08a>RunningState" style="position:absolute; top: 580px; left: 601px; height: 20px; width: 19px;"></div>
    <!--篦冷机16-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker16" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker16>RunningState" style="position:absolute; top: 474px; left: 1012px; height: 20px; width: 19px;"></div>
    <!--篦冷机14-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker14" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker14>RunningState" style="position:absolute; top: 476px; left: 952px; height: 20px; width: 19px;"></div>
     <!--篦冷机12-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker12" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker12>RunningState" style="position:absolute; top: 476px; left: 892px; height: 20px; width: 19px;"></div>
     <!--篦冷机10b-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker10b" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker10b>RunningState" style="position:absolute; top: 477px; left: 831px; height: 20px; width: 19px;"></div>
     <!--篦冷机09b-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker09b" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker09b>RunningState" style="position:absolute; top: 475px; left: 769px; height: 20px; width: 19px;"></div>
     <!--篦冷机09a-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker09a" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker09a>RunningState" style="position:absolute; top: 478px; left: 707px; height: 20px; width: 19px;"></div>
    <!--篦冷机07-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker07" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker07>RunningState" style="position:absolute; top: 477px; left: 647px; height: 20px; width: 19px;"></div>
    <!--篦冷机5706-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker06" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker06>RunningState" style="position:absolute; top: 579px; left: 537px; height: 20px; width: 19px;"></div>
    <!--篦冷机13-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker13" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker13>RunningState" style="position:absolute; top: 578px; left: 859px; height: 20px; width: 19px;"></div>
    <!--篦冷机15-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker15" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker15>RunningState" style="position:absolute; top: 582px; left: 920px; height: 20px; width: 19px;"></div>
    <!--篦冷机17-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker17" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker17>RunningState" style="position:absolute; top: 580px; left: 985px; height: 20px; width: 19px;"></div>
    <!--篦冷机18-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker18" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker18>RunningState" style="position:absolute; top: 580px; left: 1051px; height: 20px; width: 19px;"></div>
    <!--篦冷机19-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinker19" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker19>RunningState" style="position:absolute; top: 581px; left: 1117px; height: 20px; width: 19px;"></div>
    <!--煤磨三号罗茨风机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalMilRootsBlower3" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower5>RunningState" style="position:absolute; top: 263px; left: 926px; height: 20px; width: 19px;"></div>
     <!--1#入窑提升机电机运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerHoist1" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerHoist1>RunningState" style="position:absolute; top: 61px; left: 384px; height: 20px; width: 19px;"></div>
    <!--煤磨主电机运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalMillMainMotor" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMillMainMotor>RunningState" style="position:absolute; top: 234px; left: 1127px; height: 20px; width: 19px;"></div>
    <!--煤磨通风机运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalMillFan" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMillFan>RunningState" style="position:absolute; top: 73px; left: 819px; height: 20px; width: 19px;"></div>
     <!--煤磨一号罗茨风机运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalMilRootsBlower1" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower4>RunningState" style="position:absolute; top: 262px; left: 869px; height: 20px; width: 19px;"></div>
     <!--煤磨二号罗茨风机运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalMilRootsBlower2" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalMilRootsBlower3>RunningState" style="position:absolute; top: 261px; left: 814px; height: 20px; width: 19px;"></div>    
   

    <!----------------------------运行状态------------------------------------>
</body>
</html>

