<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMachine.aspx.cs" Inherits="Monitor_shell.Web.UI_Monitor.ProcessEnergyMonitor.MonitorShell.MainMachine" %>

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
    <script src="../../DCSMonitor/js/common/OptionHelper.js"></script>
    <script src="../../js/common/DCSMonitorShell.js"></script>
    
    <script>
        publicData.organizationId = "zc_nxjc_byc_byf_clinker01";
        publicData.sceneName = "2#水泥磨";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_nxjc_qtx_efc_cementmill02.png'); width: 1350px; height: 740px; overflow: hidden;">
            <span id="zc_nxjc_byc_byf>F_1N10MRD>DCS" data-option="DataSources = 'DCS',ElementType ='AnlogSignal',Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block"></span>
        <div class="BarGraph" id="zc_nxjc_byc_byf>F_1N10MRD>BarGraph"  style="border-style: solid; border-color: inherit; border-width: 1px; width:10px;height:75px; position:absolute; top: 146px; left: 756px;">
            <div style="width:10px;margin-bottom:0px;padding-bottom:0px"></div>
        </div>
        <div style="position: absolute; top: 97px; left: 43px;"><span id="zc_nxjc_byc_byf>F_1N18MRD>DCS" class="TextDisplay">跑偏</span></div>
            <!--石膏破碎电机 -->
            <table class="mytable" style="position: absolute; top: 13px; left: 245px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>gypsumCrusher>ElectricityConsumption" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>gypsumCrusher>Current" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>gypsumCrusher>Power" class="mchart"></span></td>
                </tr>
            </table>
            <!--石膏提升机-->
            <table class="mytable" style="position: absolute; top: 63px; left: 352px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>gypsumHoist>ElectricityConsumption" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>gypsumHoist>Current" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>gypsumHoist>Power" class="mchart"></span></td>
                </tr>
            </table>
            <!--水泥胶带输送机-->
            <table class="mytable" style="position: absolute; top: 363px; left: 265px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementMilltape>ElectricityConsumption" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementMilltape>Current" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementMilltape>Power" class="mchart"></span></td>
                </tr>
            </table>
            <!--3,4包机 -->
            <table class="mytable" style="position: absolute; top: 681px; left: 1133px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc>packageTransformer>ElectricityConsumption" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc>packageTransformer>Current" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc>packageTransformer>Power" class="mchart"></span></td>
                </tr>
            </table>
            <!--辊压机定辊主电机 -->
            <table class="mytable" style="position: absolute; top: 435px; left: 283px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>rollingMachineSettledRoller>ElectricityConsumption" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>rollingMachineSettledRoller>Current" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>rollingMachineSettledRoller>Power" class="mchart"></span></td>
                </tr>
            </table>
            <!--辊压机动辊主电机 -->
            <table class="mytable" style="position: absolute; top: 434px; left: 381px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>rollingMachineActionRoller>ElectricityConsumption" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>rollingMachineActionRoller>Current" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>rollingMachineActionRoller>Power" class="mchart"></span></td>
                </tr>
            </table>
            <!--选粉电机 -->
            <!--水泥磨主电机 -->
            <table class="mytable" style="position: absolute; top: 435px; left: 675px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementMillMainMotor>ElectricityConsumption" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementMillMainMotor>Current" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementMillMainMotor>Power" class="mchart"></span></td>
                </tr>
            </table>
            <!--水泥磨排风机 -->
            <table class="mytable" style="position: absolute; top: 22px; left: 859px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>mainExhaustFan>ElectricityConsumption" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>mainExhaustFan>Current" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>mainExhaustFan>Power" class="mchart"></span></td>
                </tr>
            </table>
            <!--打散分级 -->
            <table class="mytable" style="position: absolute; top: 108px; left: 577px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>scatteredGradeMotor>ElectricityConsumption" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>scatteredGradeMotor>Current" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>scatteredGradeMotor>Power" class="mchart"></span></td>
                </tr>
            </table>
            <table class="mytable" style="position: absolute; top: 553px; left: 89px; height: 59px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementPreparation>ElectricityQuantity" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cement_CementOutput>Material" class="mchart nodisplay"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementPreparation>ElectricityConsumption" class="mchart"></span></td>
                </tr>
            </table>
            <table class="mytable" style="position: absolute; top: 553px; left: 163px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cement_CementOutput>Class" class="mchart nodisplay"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
                </tr>
            </table>
            <table class="mytable" style="position: absolute; top: 555px; left: 237px;">
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cement_CementOutput>Day" class="mchart nodisplay"></span></td>
                </tr>
                <tr>
                    <td><span id="zc_nxjc_qtx_efc_cementmill02>cementPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
                </tr>
            </table>

            <!--运行信号 -->
            <!--1#水泥磨主电机运行信号-->
            <div class="imageContainer equipmentInfo" data-equipmentid="cementMillMainMotor" id="zc_nxjc_qtx_efc_cementmill02>cementMillMainMotor>RunningState" style="position: absolute; top: 372px; left: 684px; height: 20px; width: 19px;"></div>
            <!--1#磨选粉机变频控制柜运行-->
            <div class="imageContainer equipmentInfo" data-equipmentid="powderSelectingMachine" id="zc_nxjc_qtx_efc_cementmill02>powderSelectingMachine>RunningState" style="position: absolute; height: 20px; width: 19px; top: 153px; left: 715px;"></div>
            <!--1#磨排风机运行-->
            <div class="imageContainer equipmentInfo" data-equipmentid="mainExhaustFan" id="zc_nxjc_qtx_efc_cementmill02>mainExhaustFan>RunningState" style="position: absolute; height: 20px; width: 19px; top: 72px; left: 823px;"></div>
            <!--1#磨辊压机定辊运行-->
            <div class="imageContainer equipmentInfo" data-equipmentid="rollingMachineSettledRoller" id="zc_nxjc_qtx_efc_cementmill02>rollingMachineSettledRoller>RunningState" style="position: absolute; height: 20px; width: 19px; top: 334px; left: 417px;"></div>
            <!--1#磨辊压机动辊运行-->
            <div class="imageContainer equipmentInfo" data-equipmentid="rollingMachineActionRoller" id="zc_nxjc_qtx_efc_cementmill02>rollingMachineActionRoller>RunningState" style="position: absolute; height: 20px; width: 19px; top: 334px; left: 447px;"></div>
            <!--打散分级运行-->
            <div class="imageContainer equipmentInfo" data-equipmentid="brokenMotor" id="zc_nxjc_qtx_efc_cementmill02>scatteredGradeMotor>RunningState" style="position: absolute; top: 204px; left: 591px; height: 20px; width: 19px;"></div>
            <!--石膏破碎-->
            <div class="imageContainer equipmentInfo" data-equipmentid="gypsumCrusher" id="zc_nxjc_qtx_efc_cementmill02>gypsumCrusher>RunningState" style="position: absolute; top: 104px; left: 230px; height: 20px; width: 19px;"></div>
            <!--石膏提升机-->
            <div class="imageContainer equipmentInfo" data-equipmentid="gypsumHoist" id="zc_nxjc_qtx_efc_cementmill02>gypsumHoist>RunningState" style="position: absolute; top: 78px; left: 316px; height: 20px; width: 19px;"></div>
            <!--水泥胶带-->
            <div class="imageContainer equipmentInfo" data-equipmentid="cementMilltape" id="zc_nxjc_qtx_efc_cementmill02>cementMilltape>RunningState" style="position: absolute; top: 348px; left: 357px; height: 20px; width: 19px;"></div>
            
        <div class="BoolSignal" id="F_1M13MRN" style="position: absolute; top: 40px; left: 40px; height: 20px; width: 19px;" data-option="DataSources = 'DCS',ElementType ='BoolSignal',RelatedTags='F_1M13MRN,F_1N10MRD  ,F_1N11MRD,F_1N12MRD,F_1N13ALCRD,F_1N14MRD,F_1N15ALCRD'"></div>
        <div class="BoolSignal" id="1M10MRN" style="position: absolute; top: 100px; left: 100px; height: 20px; width: 19px;" data-option="DataSources = 'DCS',ElementType ='BoolSignal',RelatedTags='1M10MRN,1M10MRD,1M12MRD,1M12MRN,1M13MRD,1M15EHRD,1M15EHRN'"></div>
            <div id="htmlContainer"></div>
        </div>
</body>
</html>
