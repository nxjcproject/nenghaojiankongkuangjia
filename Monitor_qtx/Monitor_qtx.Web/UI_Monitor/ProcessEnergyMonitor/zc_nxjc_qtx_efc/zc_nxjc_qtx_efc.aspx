<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_qtx_efc.aspx.cs" Inherits="Monitor_qtx.Web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_qtx_efc.zc_nxjc_qtx_efc" %>

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
    <script>
        publicData.organizationId = "zc_nxjc_qtx_efc";
        publicData.sceneName = "";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_efc.png'); width: 1350px; height: 740px; overflow: hidden;">
        <%--4号熟料线，4号水泥磨开始--%>
        <%--原料预均化--%>
        <table class="mytable" style="position: absolute; top: 26px; left: 69px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsHomogenize_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsHomogenize_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsHomogenize_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 26px; left: 134px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsHomogenize_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsHomogenize_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsHomogenize_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--生料产量--%>
        <table class="mytable" style="position: absolute; top: 105px; left: 256px; height: 26px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_MixtureMaterialsOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_MixtureMaterialsOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_MixtureMaterialsOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--煤粉制备--%>
        <table class="mytable" style="position: absolute; top: 217px; left: 471px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>coalPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>coalPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>coalPreparation_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 217px; left: 536px; height: 27px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>coalPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>coalPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>coalPreparation_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--废气处理--%>
        <table class="mytable" style="position: absolute; top: 52px; left: 381px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>kilnSystem_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>kilnSystem_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>kilnSystem_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 52px; left: 447px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>kilnSystem_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>kilnSystem_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>kilnSystem_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--生料制备--%>
        <table class="mytable" style="position: absolute; top: 238px; left: 22px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--原料粉磨--%>
        <table class="mytable" style="position: absolute; top: 238px; left: 89px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMaterialsGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--煤粉产量--%>
        <table class="mytable" style="position: absolute; top: 237px; left: 790px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_PulverizedCoalOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_PulverizedCoalOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_PulverizedCoalOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--混合材制备--%>
        <table class="mytable" style="position: absolute; top: 18px; left: 849px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>hybridMaterialsPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>hybridMaterialsPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>hybridMaterialsPreparation_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 18px; left: 915px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>hybridMaterialsPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>hybridMaterialsPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>hybridMaterialsPreparation_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--熟料输送--%>
        <table class="mytable" style="position: absolute; top: 164px; left: 904px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>clinkerTransport_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>clinkerTransport_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>clinkerTransport_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 165px; left: 970px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>clinkerTransport_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>clinkerTransport_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>clinkerTransport_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>

       
        <%--发电量--%>
        <table class="mytable" style="position: absolute; top: 91px; left: 712px; right: 509px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinkerElectricityGeneration_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinkerElectricityGeneration_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>electricityOutput_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>electricityOwnDemand_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 92px; left: 776px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinkerElectricityGeneration_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinkerElectricityGeneration_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>electricityOutput_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>electricityOwnDemand_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥粉磨 --%>
        <table class="mytable" style="position: absolute; top: 78px; left: 1043px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>cementGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>cementGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>cementGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 78px; left: 1108px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>cementGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>cementGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>cementGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥产量--%>
        <table class="mytable" style="position: absolute; top: 186px; left: 1068px; height: 50px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill01>cement_CementOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--水泥粉磨--%>
        <%--熟料产量--%>
        <table class="mytable" style="position: absolute; top: 307px; left: 326px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_ClinkerOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_ClinkerOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_ClinkerOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--水泥包装--%>
        <table class="mytable" style="position: absolute; top: 271px; left: 1208px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc>cementPacking_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>cementPacking_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>cementPacking_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 271px; left: 1273px; height: 60px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc>cementPacking_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>cementPacking_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>cementPacking_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
       <%--煤粉消耗量--%>
        <table class="mytable" style="position: absolute; top: 19px; left: 694px; right: 590px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_PulverizedCoalInput>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_PulverizedCoalInput>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_PulverizedCoalInput>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--煤耗--%>
        <table class="mytable" style="position: absolute; top: 16px; left: 759px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_CoalConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_CoalConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinker_CoalConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--熟料烧成--%>
        <table class="mytable" style="position: absolute; top: 15px; left: 538px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinkerBurning_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinkerBurning_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinkerBurning_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 16px; left: 601px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinkerBurning_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinkerBurning_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>clinkerBurning_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--4号熟料线，4号水泥磨结束--%>



        <%--五号熟料线，五号水泥磨开始--%>
        <%--原料预均化--%>
        <table class="mytable" style="position: absolute; top: 315px; left: 24px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsHomogenize_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsHomogenize_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsHomogenize_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 313px; left: 89px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsHomogenize_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsHomogenize_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsHomogenize_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--生料产量--%>
        <table class="mytable" style="position: absolute; top: 383px; left: 254px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_MixtureMaterialsOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_MixtureMaterialsOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_MixtureMaterialsOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--煤粉制备--%>
        <table class="mytable" style="position: absolute; top: 499px; left: 467px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 497px; left: 533px; height: 27px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>coalPreparation_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--废气处理--%>
        <table class="mytable" style="position: absolute; top: 352px; left: 417px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnSystem_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnSystem_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnSystem_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 350px; left: 482px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnSystem_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnSystem_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>kilnSystem_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--生料制备--%>
        <table class="mytable" style="position: absolute; top: 523px; left: 47px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--原料粉磨--%>
        <table class="mytable" style="position: absolute; top: 523px; left: 113px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMaterialsGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--煤粉产量--%>
        <table class="mytable" style="position: absolute; top: 533px; left: 790px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--混合材制备--%>
        <table class="mytable" style="position: absolute; top: 260px; left: 997px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>hybridMaterialsPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>hybridMaterialsPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>hybridMaterialsPreparation_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 261px; left: 1063px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>hybridMaterialsPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>hybridMaterialsPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>hybridMaterialsPreparation_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--熟料输送--%>
        <table class="mytable" style="position: absolute; top: 410px; left: 1044px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>clinkerTransport_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>clinkerTransport_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>clinkerTransport_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 410px; left: 1111px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>clinkerTransport_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>clinkerTransport_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>clinkerTransport_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>

       
        <%--发电量--%>
        <table class="mytable" style="position: absolute; top: 367px; left: 626px; right: 595px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerElectricityGeneration_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerElectricityGeneration_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>electricityOutput_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>electricityOwnDemand_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 367px; left: 689px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerElectricityGeneration_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerElectricityGeneration_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>electricityOutput_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>electricityOwnDemand_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
        </table>
        <%--辅助用电--%>
        <table class="mytable" style="position: absolute; top: 48px; left: 1243px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc>auxiliaryProduction_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>auxiliaryProduction_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>auxiliaryProduction_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
         <%--供电用电--%>
        <table class="mytable" style="position: absolute; top: 28px; left: 237px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc>purchasedElectricity_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>purchasedElectricity_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>purchasedElectricity_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
          <%--生料均化01--%>
        <table class="mytable" style="position: absolute; top: 308px; left: 172px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMealHomogenization_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMealHomogenization_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMealHomogenization_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
         <table class="mytable" style="position: absolute; top: 308px; left: 238px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMealHomogenization_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMealHomogenization_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker02>rawMealHomogenization_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
            <%--生料均化02--%>
        <table class="mytable" style="position: absolute; top: 578px; left: 236px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMealHomogenization_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMealHomogenization_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMealHomogenization_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
         <table class="mytable" style="position: absolute; top: 577px; left: 298px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMealHomogenization_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMealHomogenization_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>rawMealHomogenization_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥粉磨 --%>
        <table class="mytable" style="position: absolute; top: 352px; left: 1205px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>cementGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>cementGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>cementGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 350px; left: 1272px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>cementGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>cementGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>cementGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥产量--%>
        <table class="mytable" style="position: absolute; top: 448px; left: 1210px; height: 50px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill02>cement_CementOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--水泥粉磨--%>
        <%--熟料产量--%>
        <table class="mytable" style="position: absolute; top: 676px; left: 646px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_ClinkerOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_ClinkerOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_ClinkerOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--水泥包装--%>
        <table class="mytable" style="position: absolute; top: 662px; left: 1198px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPacking_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPacking_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPacking_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 662px; left: 1265px; height: 60px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPacking_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPacking_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPacking_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
       <%--煤粉消耗量--%>
        <table class="mytable" style="position: absolute; top: 677px; left: 900px; right: 384px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalInput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalInput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_PulverizedCoalInput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--煤耗--%>
        <table class="mytable" style="position: absolute; top: 677px; left: 964px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_CoalConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_CoalConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinker_CoalConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--熟料烧成--%>
        <table class="mytable" style="position: absolute; top: 677px; left: 742px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 676px; left: 806px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_clinker03>clinkerBurning_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--五号熟料线，五号水泥磨结束--%>

        <%--三号水泥线开始--%>
         <%--混合材制备--%>
        <table class="mytable" style="position: absolute; top: 384px; left: 819px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>hybridMaterialsPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>hybridMaterialsPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>hybridMaterialsPreparation_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 383px; left: 884px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>hybridMaterialsPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>hybridMaterialsPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>hybridMaterialsPreparation_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
		<%--熟料输送--%>
        <table class="mytable" style="position: absolute; top: 530px; left: 892px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>clinkerTransport_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>clinkerTransport_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>clinkerTransport_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 530px; left: 957px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>clinkerTransport_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>clinkerTransport_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>clinkerTransport_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
		<%--水泥粉磨 --%>
        <table class="mytable" style="position: absolute; top: 616px; left: 1041px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 615px; left: 1106px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥产量--%>
        <table class="mytable" style="position: absolute; top: 544px; left: 1076px; height: 50px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cement_CementOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--三号水泥线结束--%>

        <%--综合电耗煤耗--%>
        <table class="mytable" style="position: absolute; top: 684px; left: 423px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc>clinker_ElectricityConsumption_Comprehensive>Comprehensive" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>clinker_CoalConsumption_Comprehensive>Comprehensive" ></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 684px; left: 493px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc>cementmill_ElectricityConsumption_Comprehensive>Comprehensive" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>cementmill_CoalConsumption_Comprehensive>Comprehensive" ></span></td>
            </tr>
        </table>
        <%--工序电耗（所有产线的该工序电量之和除以所有产线该工序产量之和） --%>
        <table class="mytable" style="position: absolute; top: 675px; left: 92px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc>rawMaterialsPreparation_ElectricityConsumption>SumProcessClass"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>clinkerPreparation_ElectricityConsumption>SumProcessClass"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>cementPreparation_ElectricityConsumption>SumProcessClass" ></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 675px; left: 165px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc>rawMaterialsPreparation_ElectricityConsumption>SumProcessDay" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>clinkerPreparation_ElectricityConsumption>SumProcessDay" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>cementPreparation_ElectricityConsumption>SumProcessDay"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 673px; left: 237px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc>rawMaterialsPreparation_ElectricityConsumption>SumProcessMonth" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>clinkerPreparation_ElectricityConsumption>SumProcessMonth" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>cementPreparation_ElectricityConsumption>SumProcessMonth" ></span></td>
            </tr>
        </table>
        
        <%--<span id="zc_nxjc_byc_byf_clinker01>rawMaterialsHomogenize_ElectricityConsumption>Class" class="mchart"></span>--%>
        <%--<span id="zc_nxjc_byc_byf_clinker01>clinker_MixtureMaterialsOutput>Class" class="mchart">qqqq</span>--%>
    </div>


    <div id="htmlContainer"></div>
</body>
</html>