<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_qtx_efc_cementmill03.aspx.cs" Inherits="Monitor_qtx.Web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_qtx_efc.zc_nxjc_qtx_efc_cementmill03" %>

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
        publicData.organizationId = "zc_nxjc_qtx_efc_cementmill03";
        publicData.sceneName = "3#水泥磨";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_efc_cementmill03.png'); width: 1350px; height: 740px; overflow: hidden;">
         <!--石膏破碎电机 -->  
             <table class="mytable" style="position: absolute; top: 4px; left: 183px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>gypsumCrusher>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>gypsumCrusher>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>gypsumCrusher>Power" class="mchart"></span></td>
            </tr>
        </table>
           <!--3,4包机 -->  
         <table class="mytable" style="position: absolute; top: 681px; left: 1129px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc>packageTransformer>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>packageTransformer>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc>packageTransformer>Power" class="mchart"></span></td>
            </tr>
        </table>
         <!--辊压机定辊主电机 -->   
        <table class="mytable" style="position: absolute; top: 434px; left: 262px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>rollingMachineSettledRoller>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>rollingMachineSettledRoller>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>rollingMachineSettledRoller>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--辊压机动辊主电机 -->
        <table class="mytable" style="position: absolute; top: 436px; left: 361px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>rollingMachineActionRoller>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>rollingMachineActionRoller>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>rollingMachineActionRoller>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--选粉电机 -->
        <table class="mytable" style="position: absolute; top: 226px; left: 686px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>powderSelectingStorehouse>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>powderSelectingStorehouse>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>powderSelectingStorehouse>Power" class="mchart"></span></td>
            </tr>
        </table>
         <!--水泥磨主电机 -->
        <table class="mytable" style="position: absolute; top: 436px; left: 673px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementMillMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementMillMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementMillMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
         <!--水泥磨排风机 -->
        <table class="mytable" style="position: absolute; top: 22px; left: 859px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>mainExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>mainExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>mainExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!-- 打散分级-->
         <table class="mytable" style="position: absolute; top: 86px; left: 578px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>brokenMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>brokenMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>gradeMotor>Current" class="mchart"></span></td>
            </tr>
             <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>brokenMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 553px; left: 89px; height: 59px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPreparation>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cement_CementOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPreparation>ElectricityConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 553px; left: 163px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 555px; left: 237px;">
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_qtx_efc_cementmill03>cementPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>

        <!--运行信号 -->
     <!--1#水泥磨主电机运行信号-->
    <div class="imageContainer equipmentInfo" data-equipmentid="cementMillMainMotor" id="zc_nxjc_qtx_efc_cementmill03>cementMillMainMotor>RunningState" style="position:absolute; top: 372px; left: 684px; height: 20px; width: 19px;"></div>
    <!--1#磨选粉机变频控制柜运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="powderSelectingMachine" id="zc_nxjc_qtx_efc_cementmill03>powderSelectingMachine>RunningState" style="position:absolute; height: 20px; width: 19px; top: 153px; left: 715px;"></div>
    <!--1#磨排风机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="mainExhaustFan" id="zc_nxjc_qtx_efc_cementmill03>mainExhaustFan>RunningState" style="position:absolute; height: 20px; width: 19px; top: 72px; left: 823px;"></div>
    <!--1#磨辊压机定辊运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="rollingMachineSettledRoller" id="zc_nxjc_qtx_efc_cementmill03>rollingMachineSettledRoller>RunningState" style="position:absolute; height: 20px; width: 19px; top: 334px; left: 417px;"></div>
    <!--1#磨辊压机动辊运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="rollingMachineActionRoller" id="zc_nxjc_qtx_efc_cementmill03>rollingMachineActionRoller>RunningState" style="position:absolute; height: 20px; width: 19px; top: 334px; left: 447px;"></div>
   <!--打散分级运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="brokenMotor" id="zc_nxjc_qtx_efc_cementmill03>brokenMotor>RunningState" style="position:absolute; top: 237px; left: 431px; height: 20px; width: 19px;"></div>

    </div>

    <div id="htmlContainer"></div>
</body>
</html>
