﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_zcshn_zhuzhouc_zhuzhouf.aspx.cs" Inherits="Monitor_zhuzhou.web.UI_Monitor.ProcessEnergyMonitor.zc_zcshn_zhuzhouc_zhuzhouf.zc_zcshn_zhuzhouc_zhuzhouf" %>

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
    <script src="/UI_Monitor/js/common/ComprehensiveStatistic.js" charset="utf-8"></script>
    <script>
        publicData.organizationId = "zc_zcshn_zhuzhouc_zhuzhouf";
        publicData.sceneName = "";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">   
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_zcshn_zhuzhouc_zhuzhouf.png'); width: 1350px; height: 740px; overflow: hidden;">
       <%--<div onclick="getAllCookie()">cookie测试</div>--%>
        <%--<div onclick="openWindow()">打开趋势窗口</div>--%>
         <table class="mytable" style="position: absolute; top: 90px; left: 27px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsHomogenize_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsHomogenize_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsHomogenize_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 91px; left: 92px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsHomogenize_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsHomogenize_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsHomogenize_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 205px; left: 215px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_MixtureMaterialsOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_MixtureMaterialsOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_MixtureMaterialsOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 322px; left: 522px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 321px; left: 586px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>coalPreparation_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 59px; left: 385px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnSystem_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnSystem_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnSystem_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 58px; left: 451px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnSystem_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnSystem_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnSystem_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 410px; left: 26px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 411px; left: 91px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 407px; left: 528px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 56px; left: 976px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>hybridMaterialsPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>hybridMaterialsPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>hybridMaterialsPreparation_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 56px; left: 1041px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>hybridMaterialsPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>hybridMaterialsPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>hybridMaterialsPreparation_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>

        <table class="mytable" style="position: absolute; top: 104px; left: 721px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerTransport_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerTransport_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerTransport_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 104px; left: 785px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerTransport_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerTransport_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerTransport_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 223px; left: 655px; right: 566px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerElectricityGeneration_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerElectricityGeneration_ElectricityConsumption>Class"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cogeneration01>electricityOutput_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cogeneration01>electricityOwnDemand_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 223px; left: 717px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerElectricityGeneration_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerElectricityGeneration_ElectricityConsumption>Day"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cogeneration01>electricityOutput_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cogeneration01>electricityOwnDemand_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 56px; left: 1202px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>auxiliaryProduction_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>auxiliaryProduction_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>auxiliaryProduction_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥粉磨 --%>
        <table class="mytable" style="position: absolute; top: 167px; left: 1146px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>cementGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>cementGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>cementGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 168px; left: 1209px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>cementGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>cementGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>cementGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 205px; left: 1056px; height: 50px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>cement_CementOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 431px; left: 1057px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cement_CementOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 391px; left: 885px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 391px; left: 950px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 530px; left: 813px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_ClinkerOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_ClinkerOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_ClinkerOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>

        <table class="mytable" style="position: absolute; top: 609px; left: 1080px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>cementPacking_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>cementPacking_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>cementPacking_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 609px; left: 1145px; height: 60px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>cementPacking_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>cementPacking_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>cementPacking_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 636px; left: 791px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalInput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalInput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_PulverizedCoalInput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 635px; left: 856px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_CoalConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_CoalConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_CoalConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--熟料烧成--%>
        <table class="mytable" style="position: absolute; top: 636px; left: 628px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 636px; left: 694px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinkerBurning_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 643px; left: 424px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>clinker_ElectricityConsumption_Comprehensive>Comprehensive" class ="comprehensive"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>clinker_CoalConsumption_Comprehensive>Comprehensive" class ="comprehensive"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 644px; left: 496px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>cementmill_ElectricityConsumption_Comprehensive>Comprehensive" class ="comprehensive"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>cementmill_CoalConsumption_Comprehensive>Comprehensive" class ="comprehensive"></span></td>
            </tr>
        </table>
        <%--工序电耗（所有产线的该工序电量之和除以所有产线该工序产量之和） --%>
        <table class="mytable" style="position: absolute; top: 617px; left: 88px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>rawMaterialsPreparation_ElectricityConsumption>SumProcessClass"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>clinkerPreparation_ElectricityConsumption>SumProcessClass"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>cementPreparation_ElectricityConsumption>SumProcessClass" ></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 616px; left: 161px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>rawMaterialsPreparation_ElectricityConsumption>SumProcessDay" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>clinkerPreparation_ElectricityConsumption>SumProcessDay" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>cementPreparation_ElectricityConsumption>SumProcessDay"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 616px; left: 233px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>rawMaterialsPreparation_ElectricityConsumption>SumProcessMonth" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>clinkerPreparation_ElectricityConsumption>SumProcessMonth" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>cementPreparation_ElectricityConsumption>SumProcessMonth" ></span></td>
            </tr>
        </table>
    </div>

    <div id="htmlContainer"></div>
    
   <!--矿山1号破碎机 -->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf>Y5MRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 224px; left: 13px;"></div>
    <!--矿山2号破碎机 -->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf>Y7MRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 224px; left: 38px;"></div>
     <!--砂岩破碎机 -->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>X8MRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 229px; left: 177px;"></div>
     <!--石灰石入库皮带电机-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>Q1MRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 358px; left: 155px;"></div>
    <!--原料磨主电机-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>B26M_CUN_M>RunningState" style="position:absolute; height: 20px; width: 19px; top: 453px; left: 184px;"></div>
     <!--原料磨选粉机电机-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>B25M_CUN_M>RunningState" style="position:absolute; height: 20px; width: 19px; top: 399px; left: 183px;"></div>
    <!--高温风机运行-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>F29ACRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 217px; left: 289px;"></div>
    <!--废气排风机运行-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>E8MRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 172px; left: 485px;"></div>
    <!--窑主电机-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>F4AC2RN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 513px; left: 472px;"></div>
     <!--1#入窑提升机电机运行状态-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>F27M2RN>RunningState" style="position:absolute; top: 278px; left: 318px; height: 20px; width: 19px;"></div>
     <!--1#水泥磨主电机运行信号-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>F_1M13MRN>RunningState" style="position:absolute; top: 314px; left: 1098px; height: 20px; width: 19px;"></div>
    
    <!--熟料储存及熟料汽车胶带机运行-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill01>L24MRN>RunningState" style="position:absolute; height: 20px; width: 19px; top: 265px; left: 1007px;"></div>
    <!--石膏破碎机运行-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf>L26MRN>RunningState" style="position:absolute; top: 100px; left: 918px; height: 20px; width: 19px;"></div>
     <!--2#水泥磨主电机运行信号-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>F_2M13MRN>RunningState" style="position:absolute; top: 367px; left: 1102px; height: 20px; width: 19px;"></div>
     <!--煤磨主电机运行状态-->
    <div class="imageContainer" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>K22MRN>RunningState" style="position:absolute; top: 420px; left: 634px; height: 20px; width: 19px;"></div>
</body>
</html>
