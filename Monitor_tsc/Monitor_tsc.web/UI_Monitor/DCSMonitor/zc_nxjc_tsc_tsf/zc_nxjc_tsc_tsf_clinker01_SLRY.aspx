<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_tsc_tsf_clinker01_SLRY.aspx.cs" Inherits="Monitor_tsc.web.UI_Monitor.DCSMonitor.zc_nxjc_tsc_tsf.zc_nxjc_tsc_tsf_clinker01_SLRY" %>

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
        publicData.sceneName = "1#生料入窑";
    </script>
</head>

<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image:url('../../images/page/DCS/zc_nxjc_tsc_tsf_clinker01_SLRY.png'); width: 1073px; height: 705px; overflow: hidden;">
<button onclick="CheckTags()">检查标签</button>
        <%--模拟量--%>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22009cZ_GFR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 75px; left: 147px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22009cZ_GZR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 93px; left: 147px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22010cZ_GFR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 110px; left: 147px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22010cZ_GZR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 127px; left: 147px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22011cZ_GFR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 144px; left: 147px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22011cZ_GZR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 162px; left: 147px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22012cZ_GFR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 177px; left: 147px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22012cZ_GZR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 193px; left: 149px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22013cZ_GFR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 212px; left: 147px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22013cZ_GZR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 227px; left: 147px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22014cZ_GFR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 245px; left: 147px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22014cZ_GZR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 262px; left: 147px; position:absolute;color:#4cff00;text-align:right"></div>

        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22107_RKLJ>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 317px; left: 156px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22111_CUNR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 367px; left: 98px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22101_GFR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 396px; left: 270px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22101_GZR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 413px; left: 271px; position:absolute;color:#4cff00;text-align:right"></div>

        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22105_GFR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 436px; left: 194px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22105_GZR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 454px; left: 195px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22106_GFR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 437px; left: 344px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22106_GZR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 455px; left: 345px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22107_GFR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 533px; left: 191px; position:absolute;color:#4cff00;text-align:right"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22107_GZR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 551px; left: 191px; position:absolute;color:#4cff00;text-align:right; right: 842px;"></div>

        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22107a_SDFR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 533px; left: 335px; position:absolute;color:#4cff00;text-align:right; right: 698px;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22107a_SDZR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 551px; left: 333px; position:absolute;color:#4cff00;text-align:right; right: 700px;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22107a_BLJ>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 536px; left: 444px; position:absolute;color:#4cff00;text-align:right; right: 589px;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22107a_LJ>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 554px; left: 446px; position:absolute;color:#4cff00;text-align:right; right: 587px;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22107_BLJ>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 526px; left: 63px; position:absolute;color:#4cff00;text-align:right; right: 970px;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22107_LJ>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 547px; left: 61px; position:absolute;color:#4cff00;text-align:right; right: 972px;"></div>

        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22000L01R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 159px; left: 329px; position:absolute;color:#4cff00;text-align:right; right: 704px;"></div>

        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22015P01R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 478px; left: 864px; position:absolute;color:#4cff00;text-align:right; "></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22016P01R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 546px; left: 800px; position:absolute;color:#4cff00;text-align:right; right: 233px;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22116P01R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 611px; left: 862px; position:absolute;color:#4cff00;text-align:right; right: 171px;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22015_CUNR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 476px; left: 963px; position:absolute;color:#4cff00;text-align:right; right: 70px;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22016_CUNR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 544px; left: 967px; position:absolute;color:#4cff00;text-align:right; right: 66px;"></div>
        <div class="AnlogSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22116_CUNR>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:40px;display:block; top: 599px; left: 972px; position:absolute;color:#4cff00;text-align:right; right: 61px;"></div>
        <%--end--%>

        <%--汉字隐藏--%>
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22006AR_FT>DCS" class="TextDisplay" data-option="Display='1'" style="background-color:red;position:absolute; top: 31px; left: 313px;">故障</div>  
        <div id="zc_nxjc_tsc_tsf>dcs01_SLKD_XJ>DCS" class="TextDisplay" data-option="Display='1'" style="background-color:red;position:absolute; top: 160px; left: 412px;">巡检点</div>  
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22102_FT>DCS" class="TextDisplay" data-option="Display='1'" style="background-color:red;position:absolute; top: 272px; left: 283px;">故障</div>  
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22111_GLW>DCS" class="TextDisplay" data-option="Display='1'" style="background-color:red;position:absolute; top: 432px; left: 24px;">高料位</div>  
        <div id="zc_nxjc_tsc_tsf>dcs01_F_22111_FT1>DCS" class="TextDisplay" data-option="Display='1'" style="background-color:red;position:absolute; top: 463px; left: -5px;">提升机下部跑偏</div>  
        <%--end--%>

        <%--开关量--%>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22007_RD>DCS" data-option="RelatedTags='dcs01_F_22007_RD,,,,,dcs01_F_22007_ALM,dcs01_F_22007_RN',Shape='Circle'" style="position: absolute; top: 23px; left: 231px; height: 20px; width: 19px;"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22006AR_RD>DCS" style="position: absolute; top: 25px; left: 285px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_22006AR_RD,,,,,dcs01_F_22006AR_ALM,dcs01_F_22006AR_RN',Shape='Square'"></div>

        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22008_RD_RD>DCS" style="position: absolute; top: 104px; left: 291px; height: 20px; width: 19px; bottom: 581px;" data-option="RelatedTags='dcs01_F_22008_RD,,,,,dcs01_F_22008_ALM,dcs01_F_22008_RN',Shape='Circle'"></div>

        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22103_RD>DCS" style="position: absolute; top: 219px; left: 289px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_22103_RD,,,,,dcs01_F_22103_ALM,dcs01_F_22103_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22102_RN>DCS" style="position: absolute; top: 252px; left: 286px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_22102_RD,,,,,dcs01_F_22102_ALM,dcs01_F_22102_RN',Shape='Square'"></div>

        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22107a_RN>DCS" style="position: absolute; top: 531px; left: 313px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_22107a_RD,,,,,dcs01_F_22107a_ALM,dcs01_F_22107a_RN',Shape='Square'"></div>

        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_21110b_RN>DCS" style="position: absolute; top: 604px; left: 385px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_21110b_RD,,,,,dcs01_F_21110b_ALM,dcs01_F_21110b_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22110_RN>DCS" style="position: absolute; top: 605px; left: 339px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_22110_RD,,,,,dcs01_F_22110_ALM,dcs01_F_22110_RN',Shape='Circle'"></div>

        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22015_RN>DCS" style="position: absolute; top: 492px; left: 936px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_22015_RD,,,,,dcs01_F_22015_ALM,dcs01_F_22015_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22016_RD>DCS" style="position: absolute; top: 544px; left: 935px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_22016_RD,,,,,dcs01_F_22016_ALM,dcs01_F_22016_RN',Shape='Circle'"></div>
        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22116_RD>DCS" style="position: absolute; top: 592px; left: 935px; height: 20px; width: 19px;" data-option="RelatedTags='dcs01_F_22116_RD,,,,,dcs01_F_22116_ALM,dcs01_F_22116_RN',Shape='Circle'"></div>
        

        <div class="BoolSignal mchart" id="zc_nxjc_tsc_tsf>dcs01_F_22021_RD>DCS" style="position: absolute; top: 183px; left: 649px; height: 15px; width: 38px;" data-option="RelatedTags='dcs01_F_22021_RD,,,,,,',Shape='Square'"></div>
        <%--end--%>
    </div>
</body>
</html>
