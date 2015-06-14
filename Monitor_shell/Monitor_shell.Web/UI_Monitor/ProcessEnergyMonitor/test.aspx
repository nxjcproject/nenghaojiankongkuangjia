<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Monitor_shell.Web.UI_Monitor.ProcessEnergyMonitor.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <script src="../js/common/AmmeterStatistic.js"></script>
    <script src="../js/common/RunningState.js"></script>
    <script src="../js/common/multiTagChart.js"></script>
</head>
<body>
    <div class="imageContainer" id="zc_nxjc_byc_byf_cementmill01>F_1M25ACRN>RunningState" style="position: absolute; top: 110px; left: 74px; height: 20px; width: 19px;">
        
    </div>
    <span id="zc_nxjc_byc_byf_clinker01>rawMaterialsHomogenize_ElectricityQuantity>Class" class="mchart">qqqq</span>

    <div class="imageContainer" id="zc_nxjc_byc_byf_cementmill02>F_2M8MRN>RunningState" style="position: absolute; top: 115px; left: 353px; height: 20px; width: 19px;">
        
    </div>
    <span id="zc_nxjc_byc_byf_clinker01>clinker_ClinkerOutput>Class" class="mchart">111</span>

    <div id="mm" class="easyui-menu" style="width: 120px;">
        <div data-options="iconCls:'icon-add'" onclick="javascript:ClassificationId(multiTagCharData.selectedId)">添加到趋势列表</div>
        <div data-options="iconCls:'icon-search'" onclick="javascript:ShowAmmeterStatistics(multiTagCharData.selectedId)">打开电表数据列</div>
    </div>

    <div id="ammeterDialog" class="easyui-dialog" title="电表详细信息" data-options="iconCls:'icon-save',closed:true" style="width:600px;height:300px;padding:10px">
        计算公式：<span id="ammeterFormula"></span>
        <table id="dg" class="easyui-datagrid" title="" style="width: 100%; height: auto">
        </table>
    </div>
</body>
</html>
