<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02.aspx.cs" Inherits="Monitor_zhuzhou.web.UI_Monitor.ProcessEnergyMonitor.zc_zcshn_zhuzhouc_zhuzhouf.zc_zcshn_zhuzhouc_zhuzhouf_cementmill02" %>

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
    <script>
        publicData.organizationId = "zc_zcshn_zhuzhouc_zhuzhouf_cementmill02";
        publicData.sceneName = "1#水泥磨";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_zcshn_zhuzhouc_zhuzhouf_cementmill02.png'); width: 1350px; height: 740px; overflow: hidden;">
        <table class="mytable" style="position: absolute; top: 220px; left: 257px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>gypsumCrusher>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>gypsumCrusher>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>gypsumCrusher>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 198px; left: 29px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>clinkerStorageBeltMachine>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>clinkerStorageBeltMachine>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>clinkerStorageBeltMachine>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 497px; left: 385px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>rollingMachineSettledRoller>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>rollingMachineSettledRoller>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>rollingMachineSettledRoller>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 370px; left: 561px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>rollingMachineActionRoller>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>rollingMachineActionRoller>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>rollingMachineActionRoller>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 344px; left: 792px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>powderSelectingStorehouse>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>powderSelectingStorehouse>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>powderSelectingStorehouse>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 444px; left: 857px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementMillMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementMillMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementMillMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 28px; left: 957px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>mainExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>mainExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>mainExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>

        <table class="mytable" style="position: absolute; top: 575px; left: 74px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementPreparation>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cement_CementOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementPreparation>ElectricityConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 575px; left: 146px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 576px; left: 226px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
    </div>

    <div id="htmlContainer"></div>

    <!--1#水泥磨主电机运行信号-->
    <div class="imageContainer equipmentInfo" data-equipmentid="cementMillMainMotor" id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>cementMillMainMotor>RunningState" style="position:absolute; top: 541px; left: 759px; height: 20px; width: 19px;"></div>
    <!--1#磨选粉机变频控制柜运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="powderSelectingMachine" id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>powderSelectingMachine>RunningState" style="position:absolute; height: 20px; width: 19px; top: 353px; left: 737px;"></div>
    <!--1#磨排风机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="mainExhaustFan" id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>mainExhaustFan>RunningState" style="position:absolute; height: 20px; width: 19px; top: 117px; left: 941px;"></div>
    <!--1#磨辊压机定辊运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="rollingMachineSettledRoller" id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>rollingMachineSettledRoller>RunningState" style="position:absolute; height: 20px; width: 19px; top: 414px; left: 452px;"></div>
    <!--1#磨辊压机动辊运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="rollingMachineActionRoller" id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>rollingMachineActionRoller>RunningState" style="position:absolute; height: 20px; width: 19px; top: 415px; left: 484px;"></div>
    <!--熟料储存及熟料汽车胶带机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="clinkerStorageBeltMachine" id="zc_zcshn_zhuzhouc_zhuzhouf_cementmill02>clinkerStorageBeltMachine>RunningState" style="position:absolute; height: 20px; width: 19px; top: 335px; left: 170px;"></div>
    <!--石膏破碎机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="gypsumCrusher" id="zc_zcshn_zhuzhouc_zhuzhouf>gypsumCrusher>RunningState" style="position:absolute; top: 210px; left: 215px; height: 20px; width: 19px;"></div>
</body>
</html>