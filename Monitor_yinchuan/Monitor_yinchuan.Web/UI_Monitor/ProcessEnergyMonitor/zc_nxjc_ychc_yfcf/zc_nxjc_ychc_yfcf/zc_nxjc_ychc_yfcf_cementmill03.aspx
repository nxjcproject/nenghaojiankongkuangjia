﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_ychc_yfcf_cementmill03.aspx.cs" Inherits="Monitor_yinchuan.Web.UI_Monitor.ProcessEnergyMonitor.zc_nxjc_ychc_yfcf.zc_nxjc_ychc_yfcf_cementmill03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <script src="/lib/ealib/extend/easyUI.WindowsOverrange.js"></script>
    <script>
        publicData.organizationId = "zc_nxjc_ychc_yfcf_cementmill03";
        publicData.sceneName = "3#水泥磨";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_ychc_yfcf_cementmill03.png'); width: 1350px; height: 740px; overflow: hidden;">

        <!--水泥石膏破碎-->
        <table class="mytable" style="position: absolute; top: 89px; left: 5px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>gypsumCrusher>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>gypsumCrusher>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>gypsumCrusher>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--3#84a.29风机-->
        <table class="mytable" style="position: absolute; top: 229px; left: 200px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>rollerDustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>rollerDustFan>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>rollerDustFan>Power" class="mchart"></span></td>
            </tr>
        </table>

        <!--3#84a.53风机-->
        <table class="mytable" style="position: absolute; top: 144px; left: 377px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>mainExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>mainExhaustFan>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>mainExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--3#84a.21提升机-->
        <table class="mytable" style="position: absolute; top: 217px; left: 379px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>breakUpHoist>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>breakUpHoist>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>breakUpHoist>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--水泥磨选粉机-->
       <%-- <table class="mytable" style="position: absolute; top: 80px; left: 611px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>powderSelectingMachine>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>powderSelectingMachine>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>powderSelectingMachine>Power" class="mchart"></span></td>
            </tr>
        </table>--%>
        <!--出磨提升机-->
        <table class="mytable" style="position: absolute; top: 68px; left: 863px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementMillHoist2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementMillHoist2>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementMillHoist2>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--3#84a.23打散电源-->
        <table class="mytable" style="position: absolute; top: 322px; left: 533px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>scatteredGradeMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>scatteredGradeMotor>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>scatteredGradeMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--6109AH 3#循环风机-->
        <table class="mytable" style="position: absolute; top: 398px; left: 740px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementMillCirculatingFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementMillCirculatingFan>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementMillCirculatingFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--6107AH 3#水泥磨主电机-->
        <table class="mytable" style="position: absolute; top: 548px; left: 625px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementMillMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementMillMainMotor>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementMillMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--6111AH 3#水泥磨固定辊-->
        <table class="mytable" style="position: absolute; top: 648px; left: 342px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>rollingMachineSettledRoller>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>rollingMachineSettledRoller>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>rollingMachineSettledRoller>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--6112AH 3#水泥磨活动辊-->
        <table class="mytable" style="position: absolute; top: 645px; left: 410px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>rollingMachineActionRoller>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>rollingMachineActionRoller>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>rollingMachineActionRoller>Power" class="mchart"></span></td>
            </tr>
        </table>

        <!--水泥制备-->
        <table class="mytable" style="position: absolute; top: 631px; left: 75px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementPreparation>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cement_CementOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementPreparation>ElectricityConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 632px; left: 149px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 631px; left: 222px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf_cementmill03>cementPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
        <!--3#排风机87.25-->
        <table class="mytable" style="position: absolute; top: 682px; left: 1134px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>ExhaustFan3>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>ExhaustFan3>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>ExhaustFan3>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--3#排风机87.26-->
        <table class="mytable" style="position: absolute; top: 680px; left: 1064px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>ExhaustFan4>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>ExhaustFan4>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>ExhaustFan4>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--提升机86.70 -->
        <table class="mytable" style="position: absolute; top: 647px; left: 775px; right: 509px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>warehousingHoist1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>warehousingHoist1>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>warehousingHoist1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <!--提升机86.71-->
        <table class="mytable" style="position: absolute; top: 647px; left: 840px;">
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>warehousingHoist2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>warehousingHoist2>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_nxjc_ychc_yfcf>warehousingHoist2>Power" class="mchart"></span></td>
            </tr>
        </table>

        <div id="htmlContainer"></div>
        <!--3#水泥磨主电机运行信号-->
        <div class="imageContainer equipmentInfo" data-equipmentid="cementMillMainMotor" id="zc_nxjc_ychc_yfcf_cementmill03>cementMillMainMotor>RunningState" style="position: absolute; top: 497px; left: 634px; height: 20px; width: 19px;"></div>
        <!--3#磨排风机运行-->
        <div class="imageContainer equipmentInfo" data-equipmentid="mainExhaustFan" id="zc_nxjc_ychc_yfcf_cementmill03>mainExhaustFan>RunningState" style="position: absolute; height: 20px; width: 19px; top: 178px; left: 471px;"></div>
        <!--3#磨辊压机定辊运行-->
        <div class="imageContainer equipmentInfo" data-equipmentid="rollingMachineSettledRoller" id="zc_nxjc_ychc_yfcf_cementmill03>rollingMachineSettledRoller>RunningState" style="position: absolute; height: 20px; width: 19px; top: 561px; left: 359px;"></div>
        <!--3#磨辊压机动辊运行-->
        <div class="imageContainer equipmentInfo" data-equipmentid="rollingMachineActionRoller" id="zc_nxjc_ychc_yfcf_cementmill03>rollingMachineActionRoller>RunningState" style="position: absolute; width: 19px; top: 565px; left: 384px;"></div>
        <!--提升机841.21-->
        <div class="imageContainer equipmentInfo" data-equipmentid="breakUpHoist" id="zc_nxjc_ychc_yfcf_cementmill03>breakUpHoist>RunningState" style="position: absolute; height: 20px; width: 19px; top: 296px; left: 437px;"></div>
        <!--3#打散机-->
        <div class="imageContainer equipmentInfo" data-equipmentid="scatteredGradeMotor" id="zc_nxjc_ychc_yfcf_cementmill03>scatteredGradeMotor>RunningState" style="position: absolute; height: 20px; width: 19px; top: 362px; left: 495px;"></div>
        <!--石膏破碎机-->
        <div class="imageContainer equipmentInfo" data-equipmentid="gypsumCrusher" id="zc_nxjc_ychc_yfcf_cementmill03>gypsumCrusher>RunningState" style="position: absolute; height: 20px; width: 19px; top: 152px; left: 20px;"></div>
        <!--风机84a.29-->
        <div class="imageContainer equipmentInfo" data-equipmentid="rollerDustFan" id="zc_nxjc_ychc_yfcf_cementmill03>rollerDustFan>RunningState" style="position: absolute; height: 20px; width: 19px; top: 280px; left: 303px;"></div>
        <!--水泥磨选粉机-->
        <div class="imageContainer equipmentInfo" data-equipmentid="powderSelectingMachine" id="zc_nxjc_ychc_yfcf_cementmill03>powderSelectingMachine>RunningState" style="position: absolute; height: 20px; width: 19px; top: 167px; left: 720px;"></div>
        <!--出磨提升机-->
        <div class="imageContainer equipmentInfo" data-equipmentid="cementMillHoist2" id="zc_nxjc_ychc_yfcf_cementmill03>cementMillHoist2>RunningState" style="position: absolute; height: 20px; width: 19px; top: 53px; left: 843px;"></div>
        <!--循环风机-->
        <div class="imageContainer equipmentInfo" data-equipmentid="cementMillCirculatingFan" id="zc_nxjc_ychc_yfcf_cementmill03>cementMillCirculatingFan>RunningState" style="position: absolute; height: 20px; width: 19px; top: 351px; left: 769px;"></div>
        <!--86.70提升机-->
        <div class="imageContainer equipmentInfo" data-equipmentid="warehousingHoist1" id="zc_nxjc_ychc_yfcf>warehousingHoist1>RunningState" style="position: absolute; height: 20px; width: 19px; top: 535px; left: 963px;"></div>
        <!--86.71提升机-->
        <div class="imageContainer equipmentInfo" data-equipmentid="warehousingHoist2" id="zc_nxjc_ychc_yfcf>warehousingHoist2>RunningState" style="position: absolute; height: 20px; width: 19px; top: 536px; left: 1041px;"></div>
        <!--87.26排风机-->
        <div class="imageContainer equipmentInfo" data-equipmentid="cementMillCirculatingFan1" id="zc_nxjc_ychc_yfcf_cementmill03>cementMillCirculatingFan1>RunningState" style="position: absolute; height: 20px; width: 19px; top: 559px; left: 1111px;"></div>
        <!--87.25排风机-->
        <div class="imageContainer equipmentInfo" data-equipmentid="ExhaustFan3" id="zc_nxjc_ychc_yfcf>ExhaustFan3>RunningState" style="position: absolute; height: 20px; width: 19px; top: 558px; left: 1239px;"></div>


    </div>
</body>
</html>
