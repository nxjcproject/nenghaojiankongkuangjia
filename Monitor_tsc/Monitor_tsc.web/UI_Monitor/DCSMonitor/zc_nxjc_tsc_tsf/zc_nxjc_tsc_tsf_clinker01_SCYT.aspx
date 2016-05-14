<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_tsc_tsf_clinker01_SCYT.aspx.cs" Inherits="Monitor_tsc.web.UI_Monitor.DCSMonitor.zc_nxjc_tsc_tsf.zc_nxjc_tsc_tsf_clinker01_SCYT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
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
        publicData.organizationId = "zc_nxjc_tsc_tsf_clinker01";
        publicData.sceneName = "1#烧成窑头";
    </script>
</head>

<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/DCS/zc_nxjc_tsc_tsf_clinker01_SCYT.png'); width: 1073px; height: 705px; overflow: hidden;">
        <button onclick="CheckTags()">检查标签</button>




        <%--开关量--%>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33020AR_RD>DCS" data-option="RelatedTags='dcs01_F_33020AR_RD,,,,,dcs01_F_33020AR_ALM,dcs01_F_33020AR_RNN',Shape='Circle'" style="position: absolute; top: 79px; left: 320px; height: 20px; width: 19px;"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22007_RD33022aZ01_RD>DCS" data-option="RelatedTags='dcs01_F_33022aZ01_RD,,,,,dcs01_F_33022aZ01_ALM,dcs01_F_33022aZ01_RN',Shape='Circle'" style="position: absolute; top: 113px; left: 328px; height: 11px; width: 9px;"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33022bZ01_RD>DCS" data-option="RelatedTags='dcs01_F_33022bZ01_RD,,,,,dcs01_F_33022bZ01_ALM,dcs01_F_33022bZ01_RN',Shape='Circle'" style="position: absolute; top: 135px; left: 359px; height: 8px; width: 7px;"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33023Z01_RD>DCS" data-option="RelatedTags='dcs01_F_33023Z01_RD,,,,,dcs01_F_33023Z01_ALM,dcs01_F_33023Z01_RN',Shape='Circle'" style="position: absolute; top: 173px; left: 342px; height: 7px; width: 9px;"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33021AR_RD>DCS" data-option="RelatedTags='dcs01_F_33021AR_RD,,,,,dcs01_F_33021AR_ALM,dcs01_F_33021AR_RNN',Shape='Circle'" style="position: absolute; top: 84px; left: 423px; height: 20px; width: 19px;"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33022AR_RD>DCS" data-option="RelatedTags='dcs01_F_33022AR_RD,,,,,dcs01_F_33022AR_ALM,dcs01_F_33022AR_RNN',Shape='Circle'" style="position: absolute; top: 150px; left: 420px; height: 15px; width: 12px;"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33022aZ01_RD>DCS" data-option="RelatedTags='dcs01_F_33022aZ01_RD,,,,,dcs01_F_33022aZ01_ALM,dcs01_F_33022aZ01_RN',Shape='Circle'" style="position: absolute; top: 175px; left: 423px; height: 9px; width: 10px;"></div>


        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33027_RD>DCS" data-option="RelatedTags='dcs01_F_33027_RD,,,,,dcs01_F_33027_ALM,dcs01_F_33027_RN',Shape='Circle'" style="position: absolute; top: 259px; left: 78px; height: 20px; width: 19px;"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33002d1AR_RD>DCS" data-option="RelatedTags='dcs01_F_33002d1AR_RD,,,,,dcs01_F_33002d1AR_ALM,dcs01_F_33002d1AR_RN',Shape='Circle'"  style="position: absolute; top: 368px; left: 153px; height: 20px; width: 19px; bottom: 317px;"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33002a8_RD>DCS" data-option="RelatedTags='dcs01_F_33002a8_RD,,,,,dcs01_F_33002a7AR_ALM,dcs01_F_33002a8_RN',Shape='Square'"  style="position: absolute; top: 255px; left: 290px; height: 20px; width: 19px;" ></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33030_RD>DCS"  data-option="RelatedTags='dcs01_F_33030_RD,,,,,,dcs01_F_33030_RN',Shape='Circle'" style="position: absolute; top: 311px; left: 203px; height: 20px; width: 19px;"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33002a3_RD>DCS" data-option="RelatedTags='dcs01_F_33002a3_RD,,,,,dcs01_F_33002a4AR_ALM,dcs01_F_33002a3_RN',Shape='Circle'"  style="position: absolute; top: 259px; left: 420px; height: 20px; width: 19px;"></div>

        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33002c_RD>DCS" data-option="RelatedTags='dcs01_F_33002c_RD,,,,,dcs01_F_33002c_ALM,dcs01_F_33002c_RN',Shape='Circle'"  style="position: absolute; top: 294px; left: 566px; height: 20px; width: 19px;"></div>

        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33002a1_RD>DCS" style="position: absolute; top: 282px; left: 288px; height: 6px; width: 24px;" data-option="RelatedTags='dcs01_F_33002a1_RD,,,,,dcs01_F_33002a21_ALM,dcs01_F_33002a1_RN',Shape='Square'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33002a2_RD>DCS" style="position: absolute; top: 281px; left: 411px; height: 8px; width: 31px;" data-option="RelatedTags='dcs01_F_33002a2_RD,,,,,dcs01_F_33002a22_ALM,dcs01_F_33002a2_RN',Shape='Square'"></div> 
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33002a4_RD>DCS" style="position: absolute; top: 268px; left: 504px; height: 9px; width: 27px;" data-option="RelatedTags='dcs01_F_33002a4_RD,,,,,dcs01_F_33002a4_ALM,dcs01_F_33002a4_RN',Shape='Square'"></div>
        
        
        <%--篦冷机--%>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33003_RD>DCS" style="position: absolute; top: 497px; left: 167px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33003_RD,,,,,dcs01_F_33003_ALM,dcs01_F_33003_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33004_RD>DCS" style="position: absolute; top: 497px; left: 206px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33004_RD,,,,,dcs01_F_33004_ALM,dcs01_F_33004_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33005_RD>DCS" style="position: absolute; top: 496px; left: 246px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33005_RD,,,,,dcs01_F_33005_ALM,dcs01_F_33005_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33006_RD>DCS" style="position: absolute; top: 497px; left: 280px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33006_RD,,,,,dcs01_F_33006_ALM,dcs01_F_33006_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33007AR_RD>DCS" style="position: absolute; top: 497px; left: 317px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33007AR_RD,,,,,dcs01_F_33007AR_ALM,dcs01_F_33007AR_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33008_RD>DCS" style="position: absolute; top: 497px; left: 354px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33008_RD,,,,,dcs01_F_33008_ALM,dcs01_F_33008_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33009_RD>DCS" style="position: absolute; top: 495px; left: 391px; height: 20px; width: 19px; right: 663px;" data-option="RelatedTags='dcs01_F_33009_RD,,,,,dcs01_F_33009_ALM,dcs01_F_33009_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33010AR_RD>DCS" style="position: absolute; top: 497px; left: 429px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33010AR_RD,,,,,dcs01_F_33010AR_ALM,dcs01_F_33010AR_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33011AR_RD>DCS" style="position: absolute; top: 496px; left: 466px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33011AR_RD,,,,,dcs01_F_33011AR_ALM,dcs01_F_33011AR_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33012AR_RD>DCS" style="position: absolute; top: 495px; left: 505px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33012AR_RD,,,,,dcs01_F_33012AR_ALM,dcs01_F_33012AR_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33013AR_RD>DCS" style="position: absolute; top: 495px; left: 540px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33013AR_RD,,,,,dcs01_F_33013AR_ALM,dcs01_F_33013AR_RN',Shape='Circle'"></div>


        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_330161_RD>DCS" style="position: absolute; top: 134px; left: 685px; height: 9px; width: 27px;" data-option="RelatedTags='dcs01_F_330161_RD,,,,,dcs01_F_330161_ALM,dcs01_F_330161_RN',Shape='Square'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_330162_RD>DCS" style="position: absolute; top: 135px; left: 717px; height: 9px; width: 27px;" data-option="RelatedTags='dcs01_F_330162_RD,,,,,dcs01_F_330162_ALM,dcs01_F_330162_RN',Shape='Square'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_330163_RD>DCS" style="position: absolute; top: 132px; left: 759px; height: 9px; width: 27px;" data-option="RelatedTags='dcs01_F_330163_RD,,,,,dcs01_F_330163_ALM,dcs01_F_330163_RN',Shape='Square'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_330164_RD>DCS" style="position: absolute; top: 131px; left: 793px; height: 9px; width: 27px;" data-option="RelatedTags='dcs01_F_330164_RD,,,,,dcs01_F_330164_ALM,dcs01_F_330164_RN',Shape='Square'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_330165_RD>DCS" style="position: absolute; top: 168px; left: 731px; height: 9px; width: 27px;" data-option="RelatedTags='dcs01_F_330165_RD,,,,,dcs01_F_330165_ALM,dcs01_F_330165_RN',Shape='Square'"></div>

        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_330186_RD>DCS" style="position: absolute; top: 257px; left: 684px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_330186_RD,,,,,dcs01_F_330186_ALM,dcs01_F_330186_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_330187_RD>DCS" style="position: absolute; top: 311px; left: 664px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_330187_RD,,,,,dcs01_F_330187_ALM,dcs01_F_330187_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33018_RD>DCS" style="position: absolute; top: 360px; left: 652px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33018_RD,,,,,dcs01_F_33018_ALM,dcs01_F_33018_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33101_RD>DCS" style="position: absolute; top: 346px; left: 911px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33101_RD,,,,,dcs01_F_33101_ALM,dcs01_F_33101_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33017M_RD>DCS" style="position: absolute; top: 259px; left: 923px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_33017M_RD,,,,,dcs01_F_33017M_ALM,dcs01_F_33017M_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_34104_RD>DCS" style="position: absolute; top: 399px; left: 1038px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_34104_RD,,,,,dcs01_F_34104_ALM,dcs01_F_34104_RN',Shape='Circle'"></div>

        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33017AR_RD>DCS" style="position: absolute; top: 290px; left: 898px; height: 9px; width: 27px;" data-option="RelatedTags='dcs01_F_33017AR_RD,,,,,,dcs01_F_33017AR_RN',Shape='Square'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_33017EH_RD>DCS" style="position: absolute; top: 289px; left: 947px; height: 9px; width: 27px;" data-option="RelatedTags='dcs01_F_33017EH_RD,,,,,dcs01_F_33017EH_ALM,dcs01_F_33017EH_RN',Shape='Square'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_34102AR_RD>DCS" style="position: absolute; top: 405px; left: 953px; height: 9px; width: 27px;" data-option="RelatedTags='dcs01_F_34102AR_RD,,,,,dcs01_F_34102AR_ALM,dcs01_F_34102AR_RN',Shape='Square'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_340166_RD>DCS" style="position: absolute; top: 466px; left: 1038px; height: 9px; width: 27px;" data-option="RelatedTags='dcs01_F_340166_RD,,,,,dcs01_F_340166_ALM,dcs01_F_340166_RN',Shape='Square'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_340167_RD>DCS" style="position: absolute; top: 484px; left: 1039px; height: 9px; width: 27px;" data-option="RelatedTags='dcs01_F_340167_RD,,,,,dcs01_F_340167_ALM,dcs01_F_340167_RN',Shape='Square'"></div>
        <%--end--%>


        <%--汉字隐藏--%>
        <div id="zc_nxjc_tsc_tsf>dcs01_F_33020AR_FT>DCS" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 58px; left: 313px;">故障</div>  
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22006AR_FT>DCS" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 63px; left: 416px;">故障</div>  
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22006AR_FT>DCS" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 128px; left: 418px;">故障</div>  
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22006AR_FT>DCS" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 309px; left: 222px;">故障</div>  
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22006AR_FT>DCS" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 354px; left: 187px;">故障</div>  
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22006AR_FT>DCS" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 114px; left: 673px;">故障</div>  
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22006AR_FT>DCS" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 113px; left: 716px;">故障</div> 
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22006AR_FT>DCS" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 113px; left: 757px;">故障</div>  
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22006AR_FT>DCS" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 114px; left: 795px;">故障</div>  

        <div id="Div9" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 476px; left: 313px;">故障</div>  
        <div id="Div10" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 473px; left: 427px;">故障</div>  
        <div id="Div11" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 475px; left: 464px;">故障</div> 
        <div id="Div12" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 474px; left: 501px;">故障</div>  
        <div id="Div13" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 475px; left: 542px;">故障</div>

        <div id="Div14" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 321px; left: 908px;">故障</div> 
        <div id="Div15" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 385px; left: 945px;">故障</div>  
        <div id="Div16" class="TextDisplay" data-option="Display='1'" style="font-size:10px;background-color:red;position:absolute; top: 388px; left: 1008px;">故障</div>

        <div id="Div17" class="TextDisplay" data-option="Display='1'" style="font-size:12px;background-color:red;position:absolute; top: 431px; left: 38px;">报警</div> 
        <div id="Div18" class="TextDisplay" data-option="Display='1'" style="font-size:12px;background-color:red;position:absolute; top: 446px; left: 40px;">报警</div> 
        <div id="Div19" class="TextDisplay" data-option="Display='1'" style="font-size:12px;background-color:red;position:absolute; top: 458px; left: 40px;">报警</div> 
        <div id="Div20" class="TextDisplay" data-option="Display='1'" style="font-size:12px;background-color:red;position:absolute; top: 470px; left: 41px;">报警</div> 
        <div id="Div21" class="TextDisplay" data-option="Display='1'" style="font-size:12px;background-color:red;position:absolute; top: 483px; left: 43px;">报警</div> 
        <div id="Div22" class="TextDisplay" data-option="Display='1'" style="font-size:12px;background-color:red;position:absolute; top: 495px; left: 43px;">报警</div> 
        <div id="Div23" class="TextDisplay" data-option="Display='1'" style="font-size:12px;background-color:red;position:absolute; top: 506px; left: 41px;">报警</div> 
        <div id="Div24" class="TextDisplay" data-option="Display='1'" style="font-size:12px;background-color:red;position:absolute; top: 523px; left: 39px;">报警</div> 
        <%--end--%>
    </div>

</body>
</html>
