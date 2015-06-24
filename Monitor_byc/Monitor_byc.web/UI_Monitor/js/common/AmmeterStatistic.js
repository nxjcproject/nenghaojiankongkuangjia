$(function () {
    $('#htmlContainer').append(GetAmmeterDialogHtml());
    InitializeGrid("");
    $.parser.parse('#htmlContainer');
});
function ShowAmmeterStatistics(id) {
    var idArray = id.split('>');
    var dataToServer = {
        organizationId: idArray[0],
        variableId: idArray[1].split('_')[0]
    };
    loadGridData(dataToServer);
}

function loadGridData(dataToServer) {
    $.ajax({
        type: "POST",
        url: "../MonitorShell/MultiMonitorShell.asmx/GetAmmeterStatisticData",
        data: JSON.stringify(dataToServer),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            m_MsgData = jQuery.parseJSON(msg.d);
            $("#ammeterFormula").html(m_MsgData.formula);
            //InitializeGrid(m_MsgData.data);
            if (m_MsgData.data == "") {
                $('#dg').datagrid("loadData", []);
            }
            else {
                $('#dg').datagrid("loadData", m_MsgData.data);
            }
            $('#ammeterDialog').dialog('open');
        }
    });
}
function InitializeGrid(myData) {
    $('#dg').datagrid({
        data: myData,
        singleSelect: true, rownumbers: true, striped: true,
        columns: [[
            {
                field: 'AmmeterName', title: '电表名称', width: '37%', align: 'center'
            },
            {
                field: 'CurrentData', title: '当前增量值', width: '20%', align: 'center', formatter: ValueFormatter
            },
            {
                field: 'AverageData', title: '平均增量值', width: '20%', align: 'center', formatter: ValueFormatter
            },
            {
                field: 'VarianceData', title: '方差', width: '20%', align: 'center', formatter: ValueFormatter
            }
        ]]
    });
}

function ValueFormatter(value, row, index) {
    return isNaN(parseFloat(value)) ? '' : parseFloat(value).toFixed(2);
}

function GetAmmeterDialogHtml() {
    var html = '<div id="ammeterDialog" class="easyui-dialog" title="电表详细信息" data-options="iconCls:\'icon-save\',closed:true" style="width: 700px; height: 330px; padding: 5px">\
            <div id="ammeterFormula" class="easyui-panel" title="计算公式" style="background: #fafafa;padding-bottom:5px;">\
                &nbsp\
            </div>\
            <table id="dg" class="easyui-datagrid" title="电表明细" style="height:200px;">\
            </table>\
            </div>';
    return html;
}