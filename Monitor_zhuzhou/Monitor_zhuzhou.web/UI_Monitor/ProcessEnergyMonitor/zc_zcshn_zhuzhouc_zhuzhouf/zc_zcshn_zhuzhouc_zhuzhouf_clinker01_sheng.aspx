<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_zcshn_zhuzhouc_zhuzhouf_clinker01_sheng.aspx.cs" Inherits="Monitor_zhuzhou.web.UI_Monitor.ProcessEnergyMonitor.zc_zcshn_zhuzhouc_zhuzhouf.zc_zcshn_zhuzhouc_zhuzhouf_clinker01_sheng" %>

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
        publicData.organizationId = "zc_zcshn_zhuzhouc_zhuzhouf_clinker01";
        publicData.sceneName = "1#熟料线";
    </script>
    <title></title>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/zc_zcshn_zhuzhouc_zhuzhouf_clinker01_sheng.png'); width: 1350px; height: 740px; overflow: hidden;">
        <table class="mytable" style="position: absolute; top: 100px; left: 26px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>limestoneCrusher1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>limestoneCrusher1>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>limestoneCrusher1>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 175px; left: 22px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>limestoneMineBelt>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>limestoneMineBelt>Current" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf>limestoneMineBelt>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 254px; left: 23px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>limestoneStacker>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>limestoneStacker>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>limestoneStacker>Power" class="mchart"></span></td>
            </tr>
        </table>
        
        <table class="mytable" style="position: absolute; top: 337px; left: 24px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>limestoneStorageBeltMachine>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>limestoneStorageBeltMachine>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>limestoneStorageBeltMachine>Power" class="mchart"></span></td>
            </tr>
        </table>
        
        <table class="mytable" style="position: absolute; top: 339px; left: 524px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>powderSelectingMachine>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>powderSelectingMachine>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>powderSelectingMachine>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 191px; left: 749px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>circulatingFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>circulatingFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>circulatingFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 168px; left: 1037px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>highTemperatureFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>highTemperatureFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>highTemperatureFan>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 589px; left: 751px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMealGrindingMainMotor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMealGrindingMainMotor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMealGrindingMainMotor>Power" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 297px; left: 1201px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnTailExhaustFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnTailExhaustFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnTailExhaustFan>Power" class="mchart"></span></td>
            </tr>
        </table>

        <table class="mytable" style="position: absolute; top: 551px; left: 96px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsPreparation>ElectricityQuantity" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_MixtureMaterialsOutput>Material" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsPreparation>ElectricityConsumption" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 552px; left: 171px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsPreparation_ElectricityQuantity>Class" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_MixtureMaterialsOutput>Class" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsPreparation_ElectricityConsumption>Class" class="mchart"></span></td>
            </tr>
        </table>
        <table class="mytable" style="position: absolute; top: 553px; left: 242px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsPreparation_ElectricityQuantity>Day" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>clinker_MixtureMaterialsOutput>Day" class="mchart nodisplay"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialsPreparation_ElectricityConsumption>Day" class="mchart"></span></td>
            </tr>
        </table>
        <%--废气处理链式输送机--%>

        <%--<table class="mytable" style="position: absolute; top: 430px; left: 1124px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>wasteGasChainConveyor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>wasteGasChainConveyor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>wasteGasChainConveyor>Power" class="mchart"></span></td>
            </tr>
        </table>--%>
        <%--增湿塔链式输送机--%>
        <%--<table class="mytable" style="position: absolute; top: 282px; left: 1078px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>humidifyingTowerChainConveyor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>humidifyingTowerChainConveyor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>humidifyingTowerChainConveyor>Power" class="mchart"></span></td>
            </tr>
        </table>     --%>  
        <%--增湿塔螺旋输送机--%>
        <%--<table class="mytable" style="position: absolute; top: 98px; left: 858px; height: 24px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>humidifyingTowerScrewConveyor>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>humidifyingTowerScrewConveyor>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>humidifyingTowerScrewConveyor>Power" class="mchart"></span></td>
            </tr>
        </table>--%>
        
       
        <%--原料调配库顶胶带机--%>
        <%--<table class="mytable" style="position: absolute; top: 356px; left: 414px; height: 1px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialMixTapeMachine>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialMixTapeMachine>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialMixTapeMachine>Power" class="mchart"></span></td>
            </tr>
        </table>--%>
        <%--废气处理收尘风机--%>
        <%--<table class="mytable" style="position: absolute; top: 534px; left: 702px; height: 0px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>wasteGasDustCollectingFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>wasteGasDustCollectingFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>wasteGasDustCollectingFan>Power" class="mchart"></span></td>
            </tr>
        </table>    --%>   
        <%--砂岩破碎2#收尘风机--%>
        <%--<table class="mytable" style="position: absolute; top: 93px; left: 525px; height: 24px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandsToneBrokenDustCollectFan2>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandsToneBrokenDustCollectFan2>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandsToneBrokenDustCollectFan2>Power" class="mchart"></span></td>
            </tr>
        </table>--%>
        <%--砂岩破碎1#收尘风机--%>
        <%--<table class="mytable" style="position: absolute; top: 21px; left: 300px; height: 24px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandsToneBrokenDustCollectFan1>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandsToneBrokenDustCollectFan1>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandsToneBrokenDustCollectFan1>Power" class="mchart"></span></td>
            </tr>
        </table>--%>
        <%--均化库收尘风机--%>
        <%--<table class="mytable" style="position: absolute; top: 483px; left: 1006px; height: 24px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>homogenizationDustCollectFan>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>homogenizationDustCollectFan>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>homogenizationDustCollectFan>Power" class="mchart"></span></td>
            </tr>
        </table>--%>
        <%--砂岩破碎机--%>
        <table class="mytable" style="position: absolute; top: 187px; left: 425px;">
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandstoneCrusher>ElectricityConsumption" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandstoneCrusher>Current" class="mchart"></span></td>
            </tr>
            <tr>
                <td><span id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandstoneCrusher>Power" class="mchart"></span></td>
            </tr>
        </table>
    </div>
    <div id="htmlContainer"></div>

    <!----------------------------运行状态------------------------------------>

    <!--矿山1号破碎机 -->
    <div class="imageContainer equipmentInfo" data-equipmentid="limestoneCrusher1" id="zc_zcshn_zhuzhouc_zhuzhouf>limestoneCrusher1>RunningState" style="position: absolute; height: 20px; width: 19px; top: 139px; left: 143px;"></div>
    <!--矿山2号破碎机 -->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="limestoneCrusher2" id="zc_zcshn_zhuzhouc_zhuzhouf>limestoneCrusher2>RunningState" style="position: absolute; height: 20px; width: 19px; top: 67px; left: 151px;"></div>--%>
    <!--砂岩破碎机 -->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="sandstoneCrusher" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandstoneCrusher>RunningState" style="position: absolute; height: 20px; width: 19px; top: 67px; left: 446px;"></div>--%>
    <!--堆料机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="limestoneStacker" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>limestoneStacker>RunningState" style="position: absolute; height: 20px; width: 19px; top: 233px; left: 180px;"></div>
    <!--取料机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="" id="Div1" style="position: absolute; height: 20px; width: 19px; top: 232px; left: 215px;"></div>
    <!--石灰石入库皮带电机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="limestoneStorageBeltMachine" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>limestoneStorageBeltMachine>RunningState" style="position: absolute; height: 20px; width: 19px; top: 414px; left: 187px;"></div>
    <!--原料磨主电机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="rawMealGrindingMainMotor" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMealGrindingMainMotor>RunningState" style="position: absolute; height: 20px; width: 19px; top: 558px; left: 554px;"></div>
    <!--原料磨循环风机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="circulatingFan" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>circulatingFan>RunningState" style="position: absolute; height: 20px; width: 19px; top: 312px; left: 778px;"></div>
    <!--原料磨选粉机电机-->
    <div class="imageContainer equipmentInfo" data-equipmentid="powderSelectingMachine" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>powderSelectingMachine>RunningState" style="position: absolute; height: 20px; width: 19px; top: 502px; left: 554px;"></div>
    <!--废气处理链式输送机-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="wasteGasChainConveyor" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>wasteGasChainConveyor>RunningState" style="position: absolute; height: 20px; width: 19px; left: 1113px; top: 410px;"></div>--%>
    <!--增湿塔链式输送机-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="humidifyingTowerChainConveyor" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>humidifyingTowerChainConveyor>RunningState" style="position: absolute; height: 20px; width: 19px; top: 325px; left: 1051px;"></div>--%>
    <!--增湿塔螺旋输送机运行-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="humidifyingTowerScrewConveyor" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>humidifyingTowerScrewConveyor>RunningState" style="position: absolute; height: 20px; width: 19px; top: 263px; left: 992px;"></div>--%>
    <!--原料调配2#收尘风机运行-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="rawMaterialDustCollectingFan2" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialDustCollectingFan2>RunningState" style="position: absolute; height: 20px; width: 19px; top: 207px; left: 328px;"></div>--%>
    <!--原料调配库顶胶带机运行-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="rawMaterialMixTapeMachine" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialMixTapeMachine>RunningState" style="position: absolute; height: 20px; width: 19px; top: 231px; left: 230px;"></div>--%>
    <!--原料调配3#收尘风机运行-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="rawMaterialDustCollectingFan3" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialDustCollectingFan3>RunningState" style="position: absolute; height: 20px; width: 19px; top: 203px; left: 385px;"></div>--%>
    <!--石灰石预均化1#收尘器风机运行-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="rawMaterialDustCollectingFan01" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialDustCollectingFan01>RunningState" style="position: absolute; height: 22px; width: 22px; top: 232px; left: 177px;"></div>--%>
    <!--废气处理收尘风机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="wasteGasDustCollectingFan" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>wasteGasDustCollectingFan>RunningState" style="/*position: absolute; height: 20px; width: 19px; top: 437px; left: 803px;*/"></div>
    <!--生料库4#罗茨风机运行-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="rawMaterialLibraryRootsBlower4" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialLibraryRootsBlower4>RunningState" style="position: absolute; height: 20px; width: 19px; top: 626px; left: 957px;"></div>--%>
    <!--生料库#3罗茨风机运行-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="rawMaterialLibraryRootsBlower3" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialLibraryRootsBlower3>RunningState" style="position: absolute; height: 20px; width: 19px; top: 624px; left: 905px;"></div>--%>
    <!--生料库#1罗茨风机运行-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="rawMaterialLibraryRootsBlower1" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialLibraryRootsBlower1>RunningState" style="position: absolute; height: 20px; width: 19px; top: 626px; left: 931px;"></div>--%>
    <!--生料库#2罗茨风机运行-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="rawMaterialLibraryRootsBlower2" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>rawMaterialLibraryRootsBlower2>RunningState" style="position: absolute; height: 20px; width: 19px; top: 626px; left: 980px;"></div>--%>
    <!--砂岩破碎2#收尘风机运行-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="sandsToneBrokenDustCollectFan2" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandsToneBrokenDustCollectFan2>RunningState" style="position: absolute; height: 20px; width: 19px; top: 92px; left: 494px;"></div>--%>
    <!--砂岩破碎1#收尘风机运行-->
    <%--<div class="imageContainer equipmentInfo" data-equipmentid="sandsToneBrokenDustCollectFan1" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>sandsToneBrokenDustCollectFan1>RunningState" style="position: absolute; height: 20px; width: 19px; top: 96px; left: 359px;"></div>--%>
    <!--均化库收尘风机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="homogenizationDustCollectFan" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>homogenizationDustCollectFan>RunningState" style="position: absolute; height: 20px; width: 19px; top: 469px; left: 947px;"></div>
    <!--袋收尘运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="bagdustcollector" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>bagdustcollector>RunningState" style="position: absolute; height: 20px; width: 19px; top: 256px; left: 1071px;"></div>
    <!--窑尾排风机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="kilnTailExhaustFan" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>kilnTailExhaustFan>RunningState" style="position: absolute; height: 20px; width: 19px; top: 245px; left: 1222px;"></div>
    <!--窑尾高温风机运行-->
    <div class="imageContainer equipmentInfo" data-equipmentid="highTemperatureFan" id="zc_zcshn_zhuzhouc_zhuzhouf_clinker01>highTemperatureFan>RunningState" style="position: absolute; height: 20px; width: 19px; top: 138px; left: 1045px;"></div>

    <!----------------------------运行状态------------------------------------>
</body>
</html>
