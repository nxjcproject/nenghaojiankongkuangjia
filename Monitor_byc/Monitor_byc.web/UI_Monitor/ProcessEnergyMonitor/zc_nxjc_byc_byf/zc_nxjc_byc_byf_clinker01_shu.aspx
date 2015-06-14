﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_byc_byf_clinker01_shu.aspx.cs" Inherits="Monitor_byc.web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_byc_byf.zc_nxjc_byc_byf_clinker01_shu" %>

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

    <script>
        publicData.organizationId = "zc_nxjc_byc_byf_clinker01";
        publicData.sceneName = "1#熟料线";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_byc_byf_clinker01_shu.png'); width: 1350px; height: 740px; overflow: hidden;">
        <table class="mytable" style="position: absolute; top: 76px; left: 36px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerHoist1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerHoist1>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerHoist1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 144px; left: 37px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerHoist2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerHoist2>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerHoist2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--新加的窑尾排风机--%>
        <table class="mytable" style="position: absolute; top: 264px; left: 25px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>kilnTailExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>kilnTailExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>kilnTailExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--新加的窑尾高温风机--%>
        <table class="mytable" style="position: absolute; top: 418px; left: 63px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>highTemperatureFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>highTemperatureFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>highTemperatureFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 230px; left: 742px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMillMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMillMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMillMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 465px; left: 364px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>kilnMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>kilnMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>kilnMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 453px; left: 478px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerFVOA>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerFVOA>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerFVOA>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 521px; left: 478px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerFVOB>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerFVOB>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerFVOB>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 118px; left: 1240px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMillFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMillFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMillFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--罗茨风机--%>
        <table class="mytable" style="position: absolute; top: 276px; left: 994px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMilRootsBlower2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMilRootsBlower2>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMilRootsBlower2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 279px; left: 1227px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMilRootsBlower3>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMilRootsBlower3>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMilRootsBlower3>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 352px; left: 1053px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMilRootsBlower1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMilRootsBlower1>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalMilRootsBlower1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <%--罗茨风机--%>
        <table class="mytable" style="position: absolute; top: 450px; left: 1142px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>kilnHeadExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>kilnHeadExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>kilnHeadExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 534px; left: 1229px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerChainConveyor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerChainConveyor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerChainConveyor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 440px; left: 859px;" class="mchart">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerCrusher>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerCrusher>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerCrusher>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 568px; left: 607px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF3AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF3AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF3AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 567px; left: 669px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerFVOC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerFVOC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerFVOC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 569px; left: 735px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF5AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF5AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF5AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 569px; left: 799px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF7AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF7AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF7AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 569px; left: 864px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF9AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF9AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF9AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 568px; left: 932px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF11AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF11AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF11AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 677px; left: 585px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF1AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF1AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF1AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 677px; left: 650px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF2AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF2AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF2AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 677px; left: 715px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF4AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF4AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF4AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 677px; left: 780px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF6AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF6AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF6AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 678px; left: 844px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF8AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF8AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF8AC>Power" class="mchart"></span></td>
            </tr>
        </table>

        <table class="mytable" style="position: absolute; top: 677px; left: 909px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF10AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF10AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF10AC>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 677px; left: 975px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF12AC>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF12AC>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerF12AC>Power" class="mchart"></span></td>
            </tr>
        </table>


        <table class="mytable" style="position: absolute; top: 530px; left: 234px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker_PulverizedCoalOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 531px; left: 159px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker_PulverizedCoalOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 532px; left: 86px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalPreparation>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker_PulverizedCoalOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>coalPreparation>ElectricityConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 622px; left: 87px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerBurning>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker_ClinkerOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerBurning>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker_PulverizedCoalInput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker>CoalConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 622px; left: 160px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerBurning_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker_ClinkerOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerBurning_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker_PulverizedCoalInput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker_CoalConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 622px; left: 235px;">
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerBurning_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker_ClinkerOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinkerBurning_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker_PulverizedCoalInput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_byc_byf_clinker01>clinker_CoalConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
    </div>

    <!----------------------------运行状态------------------------------------>
    <!--高温风机运行-->
    <div class="imageContainer" id="zc_nxjc_byc_byf_clinker01>ProcessVariable04_F29ACRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 191px; left: 1100px;"></div>
    <!--废气排风机运行-->
    <div class="imageContainer" id="zc_nxjc_byc_byf_clinker01>ProcessVariable03_E8MRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 369px; left: 1245px;"></div>
    <!--1#磨排风机运行-->
    <div class="imageContainer" id="zc_nxjc_byc_byf_cementmill01>ProcessVariable07_1M8MRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 125px; left: 888px;"></div>
    <!--1#磨辊压机定辊运行-->
    <div class="imageContainer" id="zc_nxjc_byc_byf_cementmill01>ProcessVariable07_1M17MRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 386px; left: 453px;"></div>
    <!--1#磨辊压机动辊运行-->
    <div class="imageContainer" id="zc_nxjc_byc_byf_cementmill01>ProcessVariable07_1M16MRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 387px; left: 481px;"></div>
    <!--熟料储存及熟料汽车胶带机运行-->
    <div class="imageContainer" id="zc_nxjc_byc_byf_cementmill01>ProcessVariable07_L24MRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 395px; left: 1050px;"></div>
    <!--石膏破碎机运行-->
    <div class="imageContainer" id="zc_nxjc_byc_byf_cementmill01>ProcessVariable07_L26MRN>RunningState" style="position:absolute; top: 134px; left: 104px; height: 20px; width: 19px;"></div>
    <!--运行状态-->
    <div class="imageContainer" id="Div7" style="position:absolute; top: 513px; left: 742px; height: 20px; width: 19px;"></div>
    <!----------------------------运行状态------------------------------------>
</body>
</html>
