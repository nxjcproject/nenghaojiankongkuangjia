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
        url: "MultiMonitorShell.asmx/GetAmmeterStatisticData",
        data: JSON.stringify(dataToServer),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            m_MsgData = jQuery.parseJSON(msg.d);
            $("#ammeterFormula").html(m_MsgData.formula);
            InitializeGrid(m_MsgData.data);
            $('#ammeterDialog').dialog('open');
        }
    });
}
function InitializeGrid(myData) {
    $('#dg').datagrid({
        data: myData,
        iconCls: 'icon-edit', singleSelect: true, rownumbers: true, striped: true, toolbar: '#tb',
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