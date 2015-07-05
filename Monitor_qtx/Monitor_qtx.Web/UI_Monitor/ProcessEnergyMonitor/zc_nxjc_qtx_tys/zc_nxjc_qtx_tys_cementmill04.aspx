<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_qtx_tys_cementmill04.aspx.cs" Inherits="Monitor_qtx.Web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_qtx_tys.zc_nxjc_qtx_tys_cementmill04" %>

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
        publicData.organizationId = "zc_nxjc_qtx_tys_cementmill04";
        publicData.sceneName = "4#水泥磨";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_tys_cementmill04.png'); width: 1350px; height: 740px; overflow: hidden;">
        <table class="mytable" style="position: absolute; top: 47px; left: 122px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>gypsumCrusher>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>gypsumCrusher>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>gypsumCrusher>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 189px; left: 5px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys>clinkerStorageBeltMachine>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>clinkerStorageBeltMachine>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys>clinkerStorageBeltMachine>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 320px; left: 355px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>rollingMachineSettledRoller>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>rollingMachineSettledRoller>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>rollingMachineSettledRoller>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 367px; left: 538px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>rollingMachineActionRoller>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>rollingMachineActionRoller>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>rollingMachineActionRoller>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 329px; left: 736px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>powderSelectingStorehouse>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>powderSelectingStorehouse>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>powderSelectingStorehouse>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 435px; left: 846px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementMillMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementMillMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementMillMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 107px; left: 917px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>mainExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>mainExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>mainExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>

        <table class="mytable" style="position: absolute; top: 553px; left: 89px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementPreparation>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cement_CementOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementPreparation>ElectricityConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 553px; left: 163px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 555px; left: 237px;">
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_tys_cementmill04>cementPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
    </div>


    <div id="htmlContainer"></div>
    <!--4#水泥磨主电机运行信号-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_cementmill04>cementMillMainMotor>RunningState" style="position: absolute; top: 513px; left: 742px; height: 20px; width: 19px;"></div>
    <!--4#磨选粉机运行-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_cementmill04>powderSelectingMachine>RunningState" style="position: absolute; height: 20px; width: 19px; top: 327px; left: 692px;"></div>
    <!--4#磨排风机运行-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_cementmill04>mainExhaustFan>RunningState" style="position: absolute; height: 20px; width: 19px; top: 126px; left: 889px;"></div>
    <!--4#磨辊压机定辊运行-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_cementmill04>rollingMachineSettledRoller>RunningState" style="position: absolute; height: 20px; width: 19px; top: 386px; left: 453px;"></div>
    <!--4#磨辊压机动辊运行-->
    <div class="imageContainer" id="zc_nxjc_qtx_tys_cementmill04>rollingMachineActionRoller>RunningState" style="position: absolute; height: 20px; width: 19px; top: 387px; left: 481px;"></div>



</body>
</html>


