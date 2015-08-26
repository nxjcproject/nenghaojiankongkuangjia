<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_qtx_efc_clinker03_shu.aspx.cs" Inherits="Monitor_qtx.Web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_qtx_efc.zc_nxjc_qtx_efc_clinker03_shu" %>

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
    <script src="/UI_Monitor/js/common/DisplayName.js"></script>
    <script src="/UI_Monitor/js/common/myDrag.js"></script>
    <script>
        publicData.organizationId = "zc_nxjc_qtx_efc_clinker03";
        publicData.sceneName = "3#熟料线";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_efc_clinker03_shu.png'); width: 1350px; height: 740px; overflow: hidden;">
       
          <%--入窑提升机--%>
         <table class="mytable" style="position: absolute; top: 76px; left: 36px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerHoist>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerHoist>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerHoist>Power" class="mchart"></span></td>
            </tr>
        </table>
        
        <%--新加的窑尾排风机--%>
        <table class="mytable" style="position: absolute; top: 287px; left: 25px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnTailExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnTailExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnTailExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--新加的窑尾高温风机--%>
        <table class="mytable" style="position: absolute; top: 398px; left: 75px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>highTemperatureFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>highTemperatureFan1>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>highTemperatureFan2>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>highTemperatureFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 240px; left: 742px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMillMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMillMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMillMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 465px; left: 389px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
       
        <table class="mytable" style="position: absolute; top: 118px; left: 1240px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMillFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMillFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMillFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--罗茨风机--%>
        <table class="mytable" style="position: absolute; top: 352px; left: 1120px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower1>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 304px; left: 1005px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower2>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 302px; left: 1211px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower3>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower3>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower3>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--罗茨风机--%>
        <table class="mytable" style="position: absolute; top: 450px; left: 1142px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnHeadExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnHeadExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnHeadExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 534px; left: 1229px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerChainConveyor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerChainConveyor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerChainConveyor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 440px; left: 859px;" class="mchart">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerCrusher>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerCrusher>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerCrusher>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 568px; left: 671px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF2AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF2AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF2AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 569px; left: 735px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF4AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF4AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF4AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 569px; left: 799px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF6AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF6AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF6AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 569px; left: 864px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF8AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF8AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF8AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 568px; left: 932px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF10AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF10AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF10AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 677px; left: 650px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF1AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF1AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF1AC>Power" class="mchart"></span></td>
            </tr>
        </table>
       
        <table class="mytable" style="position: absolute; top: 677px; left: 715px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF3AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF3AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF3AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 677px; left: 780px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF5AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF5AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF5AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 678px; left: 844px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF7AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF7AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF7AC>Power" class="mchart"></span></td>
            </tr>
        </table>

        <table class="mytable" style="position: absolute; top: 677px; left: 909px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF9AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF9AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF9AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 677px; left: 975px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF11AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF11AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF11AC>Power" class="mchart"></span></td>
            </tr>
        </table>


        <table class="mytable" style="position: absolute; top: 530px; left: 234px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 531px; left: 159px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 532px; left: 86px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation>ElectricityConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 622px; left: 87px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_ClinkerOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalInput>Material" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker>CoalConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 622px; left: 160px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_ClinkerOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalInput>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_CoalConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 622px; left: 235px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_ClinkerOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalInput>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_CoalConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>

        
    <!--高温风机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="highTemperatureFan" id="zc_nxjc_qtx_efc_clinker03>highTemperatureFan>RunningState" style="position:absolute; height: 20px; width: 19px; top: 449px; left: 195px;"></div>
    <!--废气排风机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="kilnTailExhaustFan" id="zc_nxjc_qtx_efc_clinker03>kilnTailExhaustFan>RunningState" style="position:absolute; height: 20px; width: 19px; top: 338px; left: 116px;"></div>
    <!--窑主电机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="kilnMainMotor" id="zc_nxjc_qtx_efc_clinker03>kilnMainMotor>RunningState" style="position:absolute; height: 20px; width: 19px; top: 441px; left: 410px;"></div>
    <!--窑头排风机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="kilnHeadExhaustFan" id="zc_nxjc_qtx_efc_clinker03>kilnHeadExhaustFan>RunningState" style="position:absolute; height: 20px; width: 19px; top: 417px; left: 1160px;"></div>
    <!--熟料拉链机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerChainConveyor" id="zc_nxjc_qtx_efc_clinker03>clinkerChainConveyor>RunningState" style="position:absolute; height: 20px; width: 19px; top: 520px; left: 1211px;"></div>
    <!--熟料破碎机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerCrusher" id="zc_nxjc_qtx_efc_clinker03>clinkerCrusher>RunningState" style="position:absolute; height: 20px; width: 19px; top: 482px; left: 964px;"></div>
    <!--篦冷机F12-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerF12AC" id="zc_nxjc_qtx_efc_clinker03>clinkerF11AC>RunningState" style="position:absolute; top: 653px; left: 995px; height: 20px; width: 19px;"></div>
    <!--篦冷机F11-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerF9AC" id="zc_nxjc_qtx_efc_clinker03>clinkerF9AC>RunningState" style="position:absolute; top: 652px; left: 926px; height: 20px; width: 19px;"></div>
    <!--篦冷机F10-->
    <!--篦冷机F9-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerF8AC" id="zc_nxjc_qtx_efc_clinker03>clinkerF8AC>RunningState" style="position:absolute; top: 539px; left: 881px; height: 20px; width: 19px;"></div>
    <!--篦冷机F8-->
    <!--篦冷机F7-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerF7AC" id="zc_nxjc_qtx_efc_clinker03>clinkerF7AC>RunningState" style="position:absolute; top: 651px; left: 859px; height: 20px; width: 19px;"></div>
     <!--篦冷机F6-->
     <!--篦冷机F5-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerF6AC" id="zc_nxjc_qtx_efc_clinker03>clinkerF6AC>RunningState" style="position:absolute; top: 539px; left: 832px; height: 20px; width: 19px;"></div>   
     <!--篦冷机F3-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerF3AC" id="zc_nxjc_qtx_efc_clinker03>clinkerF5AC>RunningState" style="position:absolute; top: 652px; left: 801px; height: 20px; width: 19px;"></div>
    <!--篦冷机F2-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerF4AC" id="zc_nxjc_qtx_efc_clinker03>clinkerF4AC>RunningState" style="position:absolute; top: 539px; left: 767px; height: 20px; width: 19px;"></div>
    <!--篦冷机F1-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerF3AC" id="zc_nxjc_qtx_efc_clinker03>clinkerF3AC>RunningState" style="position:absolute; top: 652px; left: 740px; height: 20px; width: 19px;"></div>
    <!--FVOA-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerF1AC" id="zc_nxjc_qtx_efc_clinker03>clinkerF1AC>RunningState" style="position:absolute; top: 652px; left: 685px; height: 20px; width: 19px;"></div>
    <!--FVOB-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerF2AC" id="zc_nxjc_qtx_efc_clinker03>clinkerF2AC>RunningState" style="position:absolute; top: 539px; left: 700px; height: 20px; width: 19px;"></div>
    <!--FVOC-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerF10AC" id="zc_nxjc_qtx_efc_clinker03>clinkerF10AC>RunningState" style="position:absolute; top: 539px; left: 928px; height: 20px; width: 19px;"></div>
    <!--煤磨三号罗茨风机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalMilRootsBlower3" id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower3>RunningState" style="position:absolute; top: 333px; left: 1188px; width: 19px;"></div>
     <!--1#入窑提升机电机运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerHoist" id="zc_nxjc_qtx_efc_clinker03>clinkerHoist>RunningState" style="position:absolute; top: 25px; left: 171px; height: 20px; width: 19px;"></div>
    <!--煤磨主电机运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalMillMainMotor" id="zc_nxjc_qtx_efc_clinker03>coalMillMainMotor>RunningState" style="position:absolute; top: 314px; left: 911px;  width: 19px;"></div>
    <!--煤磨高温风机运行状态-->
     <!--煤磨通风机运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalMillFan" id="zc_nxjc_qtx_efc_clinker03>coalMillFan>RunningState" style="position:absolute; top: 91px; left: 1294px; height: 20px; width: 19px;"></div>
      <!--煤破碎运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalCrusher" id="zc_nxjc_qtx_efc_clinker03>coalCrusher>RunningState" style="position:absolute; top: 26px; left: 740px; height: 20px; width: 19px;"></div>
     <!--煤堆料运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalPileReclaimer" id="zc_nxjc_qtx_efc_clinker03>coalPileReclaimer>RunningState" style="position:absolute; top: 104px; left: 672px; height: 20px; width: 19px;"></div>
    
    <!--煤磨一号罗茨风机运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalMilRootsBlower1" id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower1>RunningState" style="position:absolute; top: 331px; left: 1147px; height: 20px; width: 19px;"></div>
     <!--煤磨二号罗茨风机运行状态-->
    <div class="imageContainer equipmentInfo" data-equipmentid="coalMilRootsBlower2" id="zc_nxjc_qtx_efc_clinker03>coalMilRootsBlower2>RunningState" style="position:absolute; top: 334px; left: 1101px; height: 20px; width: 19px;"></div>
   



    </div>


    <div id="htmlContainer"></div>
</body>
</html>



