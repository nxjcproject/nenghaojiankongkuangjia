<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_qtx_tys.aspx.cs" Inherits="Monitor_qtx.Web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_qtx_tys.zc_nxjc_qtx_tys" %>

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
    <script>
        publicData.organizationId = "zc_nxjc_qtx_tys";
        publicData.sceneName = "";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_tys.png'); width: 1350px; height: 740px; overflow: hidden;">
        <%--4号熟料线，4号水泥磨开始--%>
        <%--原料预均化--%>
        <table class="mytable" style="position: absolute; top: 26px; left: 69px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsHomogenize_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsHomogenize_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsHomogenize_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 26px; left: 134px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsHomogenize_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsHomogenize_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsHomogenize_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--生料产量--%>
        <table class="mytable" style="position: absolute; top: 75px; left: 258px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_MixtureMaterialsOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_MixtureMaterialsOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_MixtureMaterialsOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--煤粉制备--%>
        <table class="mytable" style="position: absolute; top: 204px; left: 471px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 204px; left: 536px; height: 27px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>coalPreparation_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--废气处理--%>
        <table class="mytable" style="position: absolute; top: 48px; left: 358px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnSystem_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnSystem_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnSystem_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 47px; left: 423px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnSystem_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnSystem_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>kilnSystem_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--生料制备--%>
        <table class="mytable" style="position: absolute; top: 238px; left: 43px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--原料粉磨--%>
        <table class="mytable" style="position: absolute; top: 237px; left: 110px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--煤粉产量--%>
        <table class="mytable" style="position: absolute; top: 237px; left: 790px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--混合材制备--%>
        <table class="mytable" style="position: absolute; top: 54px; left: 856px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>hybridMaterialsPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>hybridMaterialsPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>hybridMaterialsPreparation_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 55px; left: 921px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>hybridMaterialsPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>hybridMaterialsPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>hybridMaterialsPreparation_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--熟料输送--%>
        <table class="mytable" style="position: absolute; top: 232px; left: 896px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>clinkerTransport_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>clinkerTransport_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>clinkerTransport_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 231px; left: 961px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>clinkerTransport_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>clinkerTransport_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>clinkerTransport_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>

       
        <%--发电量--%>
        <table class="mytable" style="position: absolute; top: 93px; left: 637px; right: 584px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerElectricityGeneration_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerElectricityGeneration_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>electricityOutput_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>electricityOwnDemand_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 93px; left: 701px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerElectricityGeneration_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerElectricityGeneration_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>electricityOutput_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>electricityOwnDemand_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥粉磨 --%>
        <table class="mytable" style="position: absolute; top: 117px; left: 1023px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 119px; left: 1087px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥产量--%>
        <table class="mytable" style="position: absolute; top: 263px; left: 1061px; height: 50px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cement_CementOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--水泥粉磨--%>
        <%--熟料产量--%>
        <table class="mytable" style="position: absolute; top: 291px; left: 290px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_ClinkerOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_ClinkerOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_ClinkerOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--水泥包装--%>
        <table class="mytable" style="position: absolute; top: 373px; left: 1197px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementPacking_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementPacking_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementPacking_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 373px; left: 1259px; height: 60px;">
            <tr>
                <td><span id="Span5" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="Span6" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="Span7" class="mchart"></span></td>
            </tr>
        </table>
       <%--煤粉消耗量--%>
        <table class="mytable" style="position: absolute; top: 19px; left: 694px; right: 590px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalInput>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalInput>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_PulverizedCoalInput>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--煤耗--%>
        <table class="mytable" style="position: absolute; top: 16px; left: 759px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_CoalConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_CoalConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_CoalConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--熟料烧成--%>
        <table class="mytable" style="position: absolute; top: 15px; left: 538px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 16px; left: 601px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinkerBurning_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--4号熟料线，4号水泥磨结束--%>



        <%--五号熟料线，五号水泥磨开始--%>
        <%--原料预均化--%>
        <table class="mytable" style="position: absolute; top: 310px; left: 81px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsHomogenize_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsHomogenize_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsHomogenize_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 310px; left: 147px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsHomogenize_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsHomogenize_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsHomogenize_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--生料产量--%>
        <table class="mytable" style="position: absolute; top: 367px; left: 255px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_MixtureMaterialsOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_MixtureMaterialsOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_MixtureMaterialsOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--煤粉制备--%>
        <table class="mytable" style="position: absolute; top: 499px; left: 467px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>coalPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>coalPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>coalPreparation_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 497px; left: 533px; height: 27px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>coalPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>coalPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>coalPreparation_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--废气处理--%>
        <table class="mytable" style="position: absolute; top: 350px; left: 388px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>kilnSystem_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>kilnSystem_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>kilnSystem_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 349px; left: 452px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>kilnSystem_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>kilnSystem_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>kilnSystem_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--生料制备--%>
        <table class="mytable" style="position: absolute; top: 523px; left: 47px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--原料粉磨--%>
        <table class="mytable" style="position: absolute; top: 523px; left: 113px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--煤粉产量--%>
        <table class="mytable" style="position: absolute; top: 533px; left: 790px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_PulverizedCoalOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_PulverizedCoalOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_PulverizedCoalOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--混合材制备--%>
        <table class="mytable" style="position: absolute; top: 368px; left: 804px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>hybridMaterialsPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>hybridMaterialsPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>hybridMaterialsPreparation_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 367px; left: 868px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>hybridMaterialsPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>hybridMaterialsPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>hybridMaterialsPreparation_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--熟料输送--%>
        <table class="mytable" style="position: absolute; top: 518px; left: 898px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>clinkerTransport_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>clinkerTransport_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>clinkerTransport_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 516px; left: 963px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>clinkerTransport_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>clinkerTransport_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>clinkerTransport_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>

       
        <%--发电量--%>
        <table class="mytable" style="position: absolute; top: 367px; left: 626px; right: 595px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinkerElectricityGeneration_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinkerElectricityGeneration_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>electricityOutput_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>electricityOwnDemand_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 367px; left: 689px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinkerElectricityGeneration_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinkerElectricityGeneration_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>electricityOutput_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>electricityOwnDemand_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
        </table>
        <%--辅助用电--%>
        <table class="mytable" style="position: absolute; top: 63px; left: 1237px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>auxiliaryProduction_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>auxiliaryProduction_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>auxiliaryProduction_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥粉磨 --%>
        <table class="mytable" style="position: absolute; top: 397px; left: 1040px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cementGrind_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cementGrind_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cementGrind_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 396px; left: 1107px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cementGrind_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cementGrind_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cementGrind_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--水泥产量--%>
        <table class="mytable" style="position: absolute; top: 553px; left: 1065px; height: 50px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cement_CementOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--水泥粉磨--%>
        <%--熟料产量--%>
        <table class="mytable" style="position: absolute; top: 676px; left: 646px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_ClinkerOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_ClinkerOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_ClinkerOutput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--水泥包装--%>
        <table class="mytable" style="position: absolute; top: 655px; left: 1159px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cementPacking_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cementPacking_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill05>cementPacking_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 655px; left: 1224px; height: 60px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>cementPacking_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>cementPacking_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>cementPacking_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
       <%--煤粉消耗量--%>
        <table class="mytable" style="position: absolute; top: 677px; left: 900px; right: 384px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_PulverizedCoalInput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_PulverizedCoalInput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_PulverizedCoalInput>Month" class="mchart nodisplay"></span></td>
            </tr>
        </table>
        <%--煤耗--%>
        <table class="mytable" style="position: absolute; top: 677px; left: 964px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_CoalConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_CoalConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_CoalConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--熟料烧成--%>
        <table class="mytable" style="position: absolute; top: 677px; left: 742px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinkerBurning_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinkerBurning_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinkerBurning_ElectricityQuantity>Month" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 676px; left: 806px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinkerBurning_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinkerBurning_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinkerBurning_ElectricityConsumption>Month" class="mchart"></span></td>
            </tr>
        </table>
        <%--五号熟料线，五号水泥磨结束--%>

        <%--综合电耗煤耗--%>
        <table class="mytable" style="position: absolute; top: 684px; left: 423px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>clinker_ElectricityConsumption>SumMonth" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>clinker_CoalConsumption>SumMonth" ></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 684px; left: 493px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>cementmill_ElectricityConsumption>SumMonth" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>cementmill_CoalConsumption>SumMonth" ></span></td>
            </tr>
        </table>
        <%--工序电耗（所有产线的该工序电量之和除以所有产线该工序产量之和） --%>
        <table class="mytable" style="position: absolute; top: 658px; left: 76px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>rawMaterialsPreparation_ElectricityConsumption>SumProcessClass"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>clinkerPreparation_ElectricityConsumption>SumProcessClass"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>cementPreparation_ElectricityConsumption>SumProcessClass" ></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 659px; left: 151px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>rawMaterialsPreparation_ElectricityConsumption>SumProcessDay" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>clinkerPreparation_ElectricityConsumption>SumProcessDay" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>cementPreparation_ElectricityConsumption>SumProcessDay"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 655px; left: 226px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>rawMaterialsPreparation_ElectricityConsumption>SumProcessMonth" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>clinkerPreparation_ElectricityConsumption>SumProcessMonth" ></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>cementPreparation_ElectricityConsumption>SumProcessMonth" ></span></td>
            </tr>
        </table>
        <%--<span id="zc_nxjc_byc_byf_clinker01>rawMaterialsHomogenize_ElectricityConsumption>Class" class="mchart"></span>--%>
        <%--<span id="zc_nxjc_byc_byf_clinker01>clinker_MixtureMaterialsOutput>Class" class="mchart">qqqq</span>--%>
    </div>
</body>
</html>