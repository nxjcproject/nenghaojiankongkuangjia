<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_qtx_tys_clinker04_sheng.aspx.cs" Inherits="Monitor_qtx.Web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_qtx_tys.zc_nxjc_qtx_tys_clinker04_sheng" %>

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
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_tys_clinker04_sheng.png'); width: 1350px; height: 740px; overflow: hidden;">
        <table class="mytable" style="position: absolute; top: 45px; left: 19px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneCrusher1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>limestoneCrusher1>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneCrusher1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 139px; left: 18px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneMineBelt>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>limestoneMineBelt>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneMineBelt>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 217px; left: 19px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>limestoneStacker>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>limestoneStacker>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>limestoneStacker>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 318px; left: 18px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>limestoneStorageBeltMachine>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>limestoneStorageBeltMachine>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>limestoneStorageBeltMachine>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 41px; left: 191px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneCrusher2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>limestoneCrusher2>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>limestoneCrusher2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 142px; left: 403px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>sandstoneCrusher>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>sandstoneCrusher>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>sandstoneCrusher>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 358px; left: 502px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>powderSelectingMachine>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>powderSelectingMachine>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>powderSelectingMachine>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 233px; left: 871px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>circulatingFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>circulatingFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>circulatingFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 220px; left: 1136px;">
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
        <table class="mytable" style="position: absolute; top: 608px; left: 515px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMealGrindingMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMealGrindingMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMealGrindingMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 427px; left: 1197px;">
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

        <table class="mytable" style="position: absolute; top: 563px; left: 97px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsPreparation>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_MixtureMaterialsOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsPreparation>ElectricityConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 564px; left: 170px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_MixtureMaterialsOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 565px; left: 247px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>clinker_MixtureMaterialsOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_clinker04>rawMaterialsPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
    </div>


    <div id="htmlContainer"></div>
    <!--破碎机 -->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>crusher>RunningState" style="position: absolute; height: 20px; width: 19px; top: 65px; left: 135px;"></div>
    <!--原料磨主电机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>rawMealGrindingMainMotor>RunningState" style="position: absolute; height: 20px; width: 19px; top: 564px; left: 545px;"></div>
    <!--原料磨循环风机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>circulatingFan>RunningState" style="position: absolute; height: 20px; width: 19px; top: 300px; left: 855px;"></div>
    <!--原料磨选粉机电机-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_clinker04>powderSelectingMachine>RunningState" style="position: absolute; height: 20px; width: 19px; top: 488px; left: 544px;"></div>

</body>
</html>

