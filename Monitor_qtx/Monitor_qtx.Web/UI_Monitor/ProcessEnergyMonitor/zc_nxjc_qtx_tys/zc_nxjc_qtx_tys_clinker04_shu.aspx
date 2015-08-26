<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_qtx_tys_clinker04_shu.aspx.cs" Inherits="Monitor_qtx.Web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_qtx_tys.zc_nxjc_qtx_tys_clinker04_shu" %>

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
        publicData.organizationId = "zc_nxjc_qtx_tys_clinker04";
        publicData.sceneName = "4#熟料线";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_tys_clinker04_shu.png'); width: 1350px; height: 740px; overflow: hidden;">
        <table class="mytable" style="position: absolute; top: 76px; left: 36px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerHoist1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerHoist1>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerHoist1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 144px; left: 37px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerHoist2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerHoist2>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerHoist2>Power" class="mchart"></span></td>
            </tr>
        </table>
         <%--新加的窑尾排风机--%>
        <table class="mytable" style="position: absolute; top: 264px; left: 25px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnTailExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnTailExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnTailExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--新加的窑尾高温风机--%>
        <table class="mytable" style="position: absolute; top: 418px; left: 63px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>highTemperatureFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>highTemperatureFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>highTemperatureFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 230px; left: 742px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMillMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMillMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMillMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 465px; left: 364px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 118px; left: 1240px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMillFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMillFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMillFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--罗茨风机--%>
        <table class="mytable" style="position: absolute; top: 355px; left: 1130px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMilRootsBlower1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMilRootsBlower1>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMilRootsBlower1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 307px; left: 1004px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMilRootsBlower2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMilRootsBlower2>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMilRootsBlower2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 305px; left: 1210px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMilRootsBlower3>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMilRootsBlower3>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalMilRootsBlower3>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--罗茨风机--%>
        <table class="mytable" style="position: absolute; top: 450px; left: 1142px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnHeadExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnHeadExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnHeadExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 534px; left: 1229px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerChainConveyor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerChainConveyor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerChainConveyor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 440px; left: 859px;" class="mchart">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerCrusher>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerCrusher>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerCrusher>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 678px; left: 714px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF3AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF3AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF3AC>Power" class="mchart"></span></td>
            </tr>
        </table>
       
        <table class="mytable" style="position: absolute; top: 678px; left: 780px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF5AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF5AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF5AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 569px; left: 864px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF8AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF8AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF8AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 568px; left: 932px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF10AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF10AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF10AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 678px; left: 649px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF1AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF1AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF1AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 570px; left: 669px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF2AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF2AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF2AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 570px; left: 735px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF4AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF4AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF4AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 570px; left: 800px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF6AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF6AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF6AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 678px; left: 844px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF7AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF7AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF7AC>Power" class="mchart"></span></td>
            </tr>
        </table>

        <table class="mytable" style="position: absolute; top: 677px; left: 909px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF9AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF9AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF9AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 677px; left: 975px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF11AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF11AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerF11AC>Power" class="mchart"></span></td>
            </tr>
        </table>


        <table class="mytable" style="position: absolute; top: 530px; left: 234px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 531px; left: 159px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 532px; left: 86px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation>ElectricityConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 622px; left: 87px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_ClinkerOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalInput>Material" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker>CoalConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 622px; left: 160px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_ClinkerOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalInput>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_CoalConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 622px; left: 235px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_ClinkerOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalInput>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_CoalConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
        </div>

        <div id="htmlContainer"></div>
     <!--高温风机运行-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>highTemperatureFan>RunningState" style="position:absolute; height: 20px; width: 19px; top: 448px; left: 195px;"></div>
    <!--废气排风机运行-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>kilnTailExhaustFan>RunningState" style="position:absolute; height: 20px; width: 19px; top: 339px; left: 114px;"></div>
    <!--窑主电机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>kilnMainMotor>RunningState" style="position:absolute; height: 20px; width: 19px; top: 441px; left: 407px;"></div>
    <!--窑头排风机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>kilnHeadExhaustFan>RunningState" style="position:absolute; height: 20px; width: 19px; top: 416px; left: 1163px;"></div>
    <!--熟料拉链机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerChainConveyor>RunningState" style="position:absolute; height: 20px; width: 19px; top: 527px; left: 1203px;"></div>
    <!--熟料破碎机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerCrusher>RunningState" style="position:absolute; height: 20px; width: 19px; top: 485px; left: 967px;"></div>
    <!--篦冷机F1-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerF12AC>RunningState" style="position:absolute; top: 653px; left: 683px; height: 20px; width: 19px;"></div>
    <!--篦冷机F11-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerF11AC>RunningState" style="position:absolute; top: 649px; left: 996px; height: 20px; width: 19px;"></div>
    <!--篦冷机F10-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerF10AC>RunningState" style="position:absolute; top: 537px; left: 929px; height: 20px; width: 19px;"></div>
    <!--篦冷机F9-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerF9AC>RunningState" style="position:absolute; top: 648px; left: 927px; height: 20px; width: 19px;"></div>
    <!--篦冷机F8-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerF8AC>RunningState" style="position:absolute; top: 539px; left: 882px; height: 20px; width: 19px;"></div>
    <!--篦冷机F7-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerF7AC>RunningState" style="position:absolute; top: 649px; left: 861px; height: 20px; width: 19px;"></div>
     <!--篦冷机F6-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker06>clinkerF6AC>RunningState" style="position:absolute; top: 538px; height: 20px; width: 19px; left: 833px;"></div>
     <!--篦冷机F5-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerF5AC>RunningState" style="position:absolute; top: 653px; left: 799px; height: 20px; width: 19px;"></div>
     <!--篦冷机F3-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerF3AC>RunningState" style="position:absolute; top: 654px; left: 740px; height: 20px; width: 19px; right: 591px;"></div>
    <!--篦冷机F2-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerF21C>RunningState" style="position:absolute; top: 539px; left: 703px; height: 20px; width: 19px;"></div>
    <!--煤磨三号罗茨风机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>coalMilRootsBlower3>RunningState" style="position:absolute; top: 335px; left: 1194px; height: 20px; width: 19px;"></div>
     <!--1#入窑提升机电机运行状态-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>clinkerHoist>RunningState" style="position:absolute; top: 21px; left: 172px; height: 20px; width: 19px;"></div>
    <!--煤磨主电机运行状态-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>coalMillMainMotor>RunningState" style="position:absolute; top: 320px; left: 911px; height: 20px; width: 19px;"></div>
    <!--煤磨通风机运行状态-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>coalMillFan>RunningState" style="position:absolute; top: 94px; left: 1295px; height: 20px; width: 19px;"></div>
     <!--煤磨二号罗茨风机运行状态-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>coalMilRootsBlower2>RunningState" style="position:absolute; top: 334px; left: 1104px; height: 20px; width: 19px;"></div>
    <!----------------------------运行状态------------------------------------>
</body>
</html>

