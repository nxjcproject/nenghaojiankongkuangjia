<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zc_nxjc_qtx_tys_clinker04.aspx.cs" Inherits="Monitor_qtx.Web.UI_Monitor.DCSMonitor.zc_nxjc_qtx_tys.zc_nxjc_qtx_tys_clinker04" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="/lib/ealib/themes/gray/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/lib/ealib/themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="/lib/extlib/themes/syExtIcon.css" rel="stylesheet" type="text/css" />
    <link href="/lib/extlib/themes/syExtCss.css" rel="stylesheet" type="text/css" />

    <link href="/UI_Monitor/css/common/mymonitor.css" rel="stylesheet" type="text/css" />

    <script charset="utf-8" src="/lib/ealib/jquery.min.js" type="text/javascript"></script>
    <script charset="utf-8" src="/js/common/jquery.utility.js" type="text/javascript"></script>
    <!--[if lt IE 8 ]><script type="text/javascript" src="/js/common/json2.min.js"></script><![endif]-->

    <script charset="utf-8" src="/lib/ealib/jquery.easyui.min.js" type="text/javascript"></script>
    <script charset="utf-8" src="/lib/ealib/easyui-lang-zh_CN.js" type="text/javascript"></script>

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
        publicData.organizationId = "zc_nxjc_qtx_tys_clinker04";
        publicData.sceneName = "4#线烧成窑头窑尾";
    </script>
</head>
<body id="SubMonitorBody" style="margin: 0px; padding: 0px; overflow: auto;">
    <div id="SubMonitorLayout" style="position: relative; background-image: url('../../images/page/DCS/zc_nxjc_qtx_tys_clinker04.png'); width: 1557px; height: 811px; overflow: hidden;">
        <div id="aaa"></div>

        <div id="bbb" style="color:red"></div>
         <%--模拟量--%>
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33107_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:45px;display:block; top: 45px; left: 35px;  position:absolute;color:#4cff00;text-align:right"></div>
              <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31107V01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:45px;display:block; top: 66px; left: 35px; position:absolute;color:#4cff00;text-align:right"></div>--%>
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31107T01a_b_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:45px;display:block;top: 85px; left: 35px; position:absolute;color:#4cff00;text-align:right"></div>
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31107MT01a_b_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:45px;display:block;top: 104px; left: 35px; position:absolute;color:#4cff00;text-align:right"></div>
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31107MT02a_c_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:45px;display:block; top: 127px; left: 35px; position:absolute;color:#4cff00;text-align:right"></div>               
    

              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_SZZ01_F_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 78px; left: 129px; position:absolute;color:#4cff00;text-align:right"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_WYR_Z01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 193px; left: 131px; position:absolute;color:#4cff00;text-align:right"></div>               
    
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C1A01_CO_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 26px; left: 263px; position:absolute;color:#4cff00;text-align:right"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C1P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 44px; left: 263px; position:absolute;color:#4cff00;text-align:right"></div>                  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C1T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 64px; left: 263px; position:absolute;color:#4cff00;text-align:right"></div>               
    
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C1A01_O2_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 24px; left: 372px; position:absolute;color:#4cff00;text-align:right"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C1P02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 44px; left: 372px; position:absolute;color:#4cff00;text-align:right"></div>                  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C1T02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 64px; left: 372px; position:absolute;color:#4cff00;text-align:right"></div>               
    
              <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W31005Z01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 117px; left: 223px; position:absolute;color:#4cff00;text-align:right"></div>--%>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C1P03_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 165px; left: 244px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C2P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 114px; left: 390px; position:absolute;color:#4cff00;text-align:right"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C2T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 135px; left: 390px; position:absolute;color:#4cff00;text-align:right"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C1P04_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 163px; left: 370px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <%--开关量  
              <%--<div class="BoolSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33107_ZRD>BoolSignal" style="position: absolute; top: 160px; left: 53px; height: 29px; width: 32px;" data-option="RelatedTags='dcs01_Y33107_ZRD,dcs01_Y33107_ZRN,,,,dcs01_Y33107_ERR,'"></div>--%>
         

              <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31107aZ01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 223px; left: 12px; position:absolute;color:#4cff00;text-align:right; bottom: 572px;"></div>--%>               
              <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31104P02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:59px; display:block; top: 242px; left: 11px; position:absolute;color:#4cff00;text-align:right; height: 18px;"></div>--%>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31104T02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 262px; left: 12px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C3P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 221px; left: 230px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C3T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 241px; left: 229px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  

              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C2P02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 268px; left: 394px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C4P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 310px; left: 388px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C4T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 329px; left: 389px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31104P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 329px; left: 73px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31104T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 347px; left: 72px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31101T02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 378px; left: 73px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31101P02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 396px; left: 72px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C3P02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 344px; left: 225px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>                
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C5P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 377px; left: 225px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C5T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 395px; left: 225px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310CPT01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 387px; left: 352px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310CPP01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 407px; left: 352px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C4P02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 390px; left: 489px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C4T02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 414px; left: 489px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31101P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 466px; left: 8px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31101T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 488px; left: 7px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31102aZ01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 449px; left: 127px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>--%>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31102P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 471px; left: 126px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31102T02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 489px; left: 126px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C5P02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 486px; left: 224px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310C5T02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 507px; left: 225px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
      
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W31001aZO1_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:36px; display:block; top: 457px; left: 459px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102_F_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:52px; display:block; top: 608px; left: 114px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:52px; display:block; top: 609px; left: 199px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W31001P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:55px; display:block; top: 618px; left: 293px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W31001T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:55px; display:block; top: 638px; left: 292px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
               <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W32001T06a_d_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:43px; display:block; top: 641px; left: 495px; position:absolute;color:blue;text-align:right; height: 17px;"></div>               
               <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W32001T04a_d_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:43px; display:block; top: 641px; left: 644px; position:absolute;color:blue;text-align:right; height: 17px; right: 870px;"></div>               
               <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W32001T02a_d_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:43px; display:block; top: 639px; position:absolute;color:blue;text-align:right; height: 17px; left: 786px;"></div>               
  
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102_I2_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:55px; display:block; top: 700px; left: 125px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102AR_TC_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:55px; display:block; top: 719px; left: 125px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102AR_DT01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:54px; display:block; top: 742px; left: 124px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102AR_DT02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:55px; display:block; top: 761px; left: 124px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102AR_FT01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:54px; display:block; top: 783px; left: 124px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  
              <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102AR_V01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:55px; display:block; top: 699px; left: 207px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>--%>               
              <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102AR_V02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:55px; display:block; top: 719px; left: 207px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>--%>                            
 <%--             <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102AR_TA_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:54px; display:block; top: 741px; left: 207px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102AR_TB_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:55px; display:block; top: 761px; left: 207px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y33102AR_FT02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:54px; display:block; top: 783px; left: 207px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  --%>
              <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_YWSO2_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:55px; display:block; top: 706px; left: 359px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 88px;"></div>--%>               
              <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_YWNOX_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:55px; display:block; top: 723px; left: 359px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>--%>               
              <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_YWFC_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:54px; display:block; top: 743px; left: 359px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 51px;"></div>--%>               
              <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_YWO2_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:55px; display:block; top: 763px; left: 360px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>--%>               
              <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_NH3_H2OHL_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:54px; display:block; top: 786px; left: 360px; position:absolute;color:#4cff00;text-align:right; height: 17px;"></div>               
  

       <%--aaa--%>
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22111_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 31px; left: 635px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 763px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22107F01_R_LJ>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 271px; left: 618px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 523px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22107F01_R_LJ1>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:64px; display:block; top: 310px; left: 618px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 484px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22107F01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 348px; left: 642px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 446px;"></div>               
                <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22106bZ01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 374px; left: 644px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 420px;"></div>               
                <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22105bZ01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:49px; display:block; top: 373px; left: 792px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 421px;"></div>--%>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310CPP02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 514px; left: 833px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 280px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W310CPT02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 540px; left: 834px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 254px;"></div>
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W32001AR1_S_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 555px; left: 670px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 239px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W32001AR1_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 578px; left: 669px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 216px;"></div>


                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22015P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 310px; left: 986px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 484px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22015_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 333px; left: 988px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 461px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22016P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 382px; left: 988px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 412px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22016_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 403px; left: 989px; position:absolute;color:#4cff00;text-align:right; height: 16px; bottom: 392px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22118P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 451px; left: 989px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 343px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_W22118_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:47px; display:block; top: 472px; left: 989px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 322px;"></div>               

                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43115AR_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 441px; left: 1068px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 353px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43114AR_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 440px; left: 1162px; position:absolute;color:#4cff00;text-align:right; height: 16px; bottom: 355px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43113_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 439px; left: 1249px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 355px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_WT43111P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:68px; display:block; top: 484px; left: 1150px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 310px;"></div>       
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43112P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:68px; display:block; top: 498px; left: 1024px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 296px;"></div>       
          
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33001P01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 541px; left: 979px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 253px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33001T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:47px; display:block; top: 558px; left: 977px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 236px;"></div>               

                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33021AR_S_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 569px; left: 1187px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 225px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33021AR_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:47px; display:block; top: 587px; left: 1187px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 207px;"></div>               
                

          <%--b--%>
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43108W01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:51px; display:block; top: 169px; left: 1219px; position:absolute;color:blue;text-align:center; height: 18px; bottom: 624px;"></div>               
                <%--<div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33017BP_PL_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 203px; left: 1452px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 591px;"></div>--%>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33017BP_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 223px; left: 1452px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 570px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33017_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 244px; left: 1452px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 550px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33017MT01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 264px; left: 1451px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 529px;"></div>               
             
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33017MT02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 285px; left: 1452px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 509px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33017T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 306px; left: 1450px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 487px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33016T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 405px; left: 1347px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 389px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33016T02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 406px; left: 1469px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 387px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T330161_V_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 492px; left: 1335px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 302px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T330161_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 513px; left: 1335px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 280px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T330163_V_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 534px; left: 1335px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 260px;"></div>  

         <%--a--%>
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43112_S_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 29px; left: 1110px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 765px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43112_T_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 48px; left: 1110px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 746px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43112_F_LJ>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 69px; left: 1110px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 725px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43112_F_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 89px; left: 1110px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 705px;"></div>               
               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43111_S_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 28px; left: 1201px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 766px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43111_T_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 48px; left: 1200px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 746px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43111_F_LJ>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 69px; left: 1201px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 725px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43111_F_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:57px; display:block; top: 89px; left: 1201px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 705px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43004T02_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 28px; left: 1305px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 766px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43000L01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:51px; display:block; top: 65px; left: 1303px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 728px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43108T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 139px; left: 1100px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 655px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43107T01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:51px; display:block; top: 140px; left: 1219px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 653px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T43107W01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 165px; left: 1096px; position:absolute;color:blue;text-align:right; height: 17px; bottom: 629px;"></div> 
 
          <%--s--%>
               <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T330163_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 555px; left: 1334px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 238px;"></div>    

                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T330162_V_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 492px; left: 1423px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 302px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T330162_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 512px; left: 1423px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 281px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T330164_V_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:46px; display:block; top: 533px; left: 1423px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 261px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T330164_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 555px; left: 1422px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 238px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33201_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 597px; left: 1399px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 196px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33002c_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 640px; left: 1266px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 153px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33002cT01_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 659px; left: 1266px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 134px;"></div>               

               <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33020AR_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 535px; left: 1188px; position:absolute;color:#4cff00;text-align:right; height: 17px; bottom: 259px;"></div>               





            <%--开关量--%>  
             <%--<div class="BoolSignal mchart" id="zc_nxjc_qtx_tys>dcs01_Y31102AR_ZRD>BoolSignal" style="position: absolute; top: 590px; left: 64px; height: 26px; width: 27px;" data-option="RelatedTags='dcs01_Y31102AR_ZRD,dcs01_Y33102_RN,,,,,'"></div>--%>
      

                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33002a1_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 732px; left: 876px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 61px;"></div>               
                <div class="AnlogSignal mchart" id="zc_nxjc_qtx_tys>dcs01_T33002a2_I_R>DCS" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 778px; left: 875px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 15px;"></div>               

         <div class="AnlogSignal mchart" id="Div1" data-option="Alarm='HH,H,LL,L',Range='Max,Min'" style="width:48px; display:block; top: 732px; left: 876px; position:absolute;color:#4cff00;text-align:right; height: 18px; bottom: 61px;"></div>               
            <div id="htmlContainer"></div>         
    </div>
</body>
</html>
