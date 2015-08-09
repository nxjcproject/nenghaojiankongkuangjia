﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_qtx_tys_clinker05_sheng.aspx.cs" Inherits="Monitor_qtx.Web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_qtx_tys.zc_nxjc_qtx_tys_clinker05_sheng" %>

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
    <script src="/UI_Monitor/js/common/DisplayName.js"></script>
    <script>
        publicData.organizationId = "zc_nxjc_qtx_tys_clinker05";
        publicData.sceneName = "5#熟料线";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_tys_clinker05_sheng.png'); width: 1350px; height: 740px; overflow: hidden;">
        <table class="mytable" style="position: absolute; top: 45px; left: 19px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneCrusher1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>limestoneCrusher1>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneCrusher1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 139px; left: 17px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneMineBelt>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>limestoneMineBelt>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneMineBelt>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 217px; left: 19px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>limestoneStacker>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>limestoneStacker>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>limestoneStacker>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 316px; left: 17px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>limestoneStorageBeltMachine>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>limestoneStorageBeltMachine>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>limestoneStorageBeltMachine>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 40px; left: 191px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneCrusher2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>limestoneCrusher2>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneCrusher2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 143px; left: 404px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>sandstoneCrusher>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>sandstoneCrusher>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>sandstoneCrusher>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 358px; left: 500px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>powderSelectingMachine>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>powderSelectingMachine>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>powderSelectingMachine>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 232px; left: 872px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>circulatingFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>circulatingFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>circulatingFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 222px; left: 1138px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>highTemperatureFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>highTemperatureFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>highTemperatureFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 608px; left: 515px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMealGrindingMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMealGrindingMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMealGrindingMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 428px; left: 1196px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>kilnTailExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>kilnTailExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>kilnTailExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>

        <table class="mytable" style="position: absolute; top: 563px; left: 97px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsPreparation>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_MixtureMaterialsOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsPreparation>ElectricityConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 564px; left: 170px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_MixtureMaterialsOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 565px; left: 247px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>clinker_MixtureMaterialsOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker05>rawMaterialsPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
    </div>

    <div id="htmlContainer"></div>
    <!--原料磨主电机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker05>rawMealGrindingMainMotor>RunningState" style="position: absolute; height: 20px; width: 19px; top: 564px; left: 545px;"></div>
    <!--原料磨循环风机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker05>circulatingFan>RunningState" style="position: absolute; height: 20px; width: 19px; top: 300px; left: 855px;"></div>
    <!--原料磨选粉机电机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker05>powderSelectingMachine>RunningState" style="position: absolute; height: 20px; width: 19px; top: 488px; left: 544px;"></div>
    <!--破碎机电机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker05>crusher>RunningState" style="position: absolute; height: 20px; width: 19px; top: 66px; left: 136px;"></div>
</body>
</html>


