﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_qtx_efc_clinker03_shu.aspx.cs" Inherits="Monitor_qtx.Web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_qtx_efc.zc_nxjc_qtx_efc_clinker03_shu" %>

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
    <script>
        publicData.organizationId = "zc_nxjc_qtx_efc_clinker03";
        publicData.sceneName = "3#熟料线";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_efc_clinker03_shu.png'); width: 1350px; height: 740px; overflow: hidden;">
        <table class="mytable" style="position: absolute; top: 76px; left: 36px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerHoist1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerHoist1>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerHoist1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 144px; left: 37px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerHoist2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerHoist2>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerHoist2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--新加的窑尾排风机--%>
        <table class="mytable" style="position: absolute; top: 264px; left: 25px;">
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
        <table class="mytable" style="position: absolute; top: 418px; left: 63px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>highTemperatureFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>highTemperatureFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>highTemperatureFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 230px; left: 742px;">
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
        <table class="mytable" style="position: absolute; top: 465px; left: 364px;">
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
        <table class="mytable" style="position: absolute; top: 453px; left: 478px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerFVOA>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerFVOA>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerFVOA>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 521px; left: 478px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerFVOB>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerFVOB>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerFVOB>Power" class="mchart"></span></td>
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
        <table class="mytable" style="position: absolute; top: 276px; left: 994px;">
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
        <table class="mytable" style="position: absolute; top: 279px; left: 1227px;">
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
        <table class="mytable" style="position: absolute; top: 568px; left: 607px;">
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
        <table class="mytable" style="position: absolute; top: 567px; left: 669px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerFVOC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerFVOC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerFVOC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 569px; left: 735px;">
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
        <table class="mytable" style="position: absolute; top: 569px; left: 799px;">
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
        <table class="mytable" style="position: absolute; top: 569px; left: 864px;">
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
        <table class="mytable" style="position: absolute; top: 568px; left: 932px;">
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
        <table class="mytable" style="position: absolute; top: 677px; left: 585px;">
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
        <table class="mytable" style="position: absolute; top: 677px; left: 650px;">
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
        <table class="mytable" style="position: absolute; top: 677px; left: 715px;">
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
        <table class="mytable" style="position: absolute; top: 677px; left: 780px;">
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
        <table class="mytable" style="position: absolute; top: 678px; left: 844px;">
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

        <table class="mytable" style="position: absolute; top: 677px; left: 909px;">
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
        <table class="mytable" style="position: absolute; top: 677px; left: 975px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF12AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF12AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerF12AC>Power" class="mchart"></span></td>
            </tr>
        </table>


        <table class="mytable" style="position: absolute; top: 530px; left: 234px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalOutput>Day" class="mchart"></span></td>
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
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalOutput>Class" class="mchart"></span></td>
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
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalOutput>Material" class="mchart"></span></td>
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
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_ClinkerOutput>Material" class="mchart"></span></td>
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
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_ClinkerOutput>Class" class="mchart"></span></td>
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
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_ClinkerOutput>Day" class="mchart"></span></td>
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
    </div>
</body>
</html>

