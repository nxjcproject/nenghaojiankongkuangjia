﻿var equipmentInfo = "";


$(function () {
    $('#htmlContainer').append(GetAmmeterDialogHtml());
    InitializeGrid("");
    $.parser.parse('#htmlContainer');
    initDialog();
});
function ShowAmmeterStatistics(id) {
    var idArray = id.split('>');
    var dataToServer = {
        organizationId: idArray[0],
        variableId: idArray[1].split('_')[0]
    };
    loadGridData(dataToServer);
}

function initDialog() {
    $("#ammeterDialog").dialog({
        onClose:clearData
    });
}
//清空上次数据，防止本次数据读不上来后会显示上次数据的问题
function clearData() {
    //清空公式
    $("#ammeterFormula").panel({
        content:""
    });
    //清空电表信息
    $("#dg").datagrid("loadData", []);
    //如果不为空说明为主要设备，清空主要设备；不是主要设备时不要清空数据
    if (equipmentInfo != "") {
        $("#ammeterInfo").datagrid("loadData", []);
    }
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
            if (m_MsgData.equipmentInfo != "") {
                equipmentInfo = m_MsgData.equipmentInfo;
                $('#ammeterInfo').datagrid({
                    data: m_MsgData.equipmentInfo,
                    title: '设备信息',
                    singleSelect: true, rownumbers: true, striped: true,
                    columns: [[
                        {
                            field: 'VoltageGrade', title: '电压等级', width: '30%', align: 'center'
                        },
                        {
                            field: 'Power', title: '额定功率', width: '30%', align: 'center'
                        },
                        {
                            field: 'Current', title: '额定电流', width: '30%', align: 'center'
                        }
                    ]]
                });
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
                field: 'Name', title: '电表名称', width: '37%', align: 'center'
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
            <div id="ammeterFormula" class="easyui-panel" title="计算公式" style="background: #fafafa;padding-bottom:5px;" data-options="border:true">\
                &nbsp\
            </div>\
            <div><table id="dg" class="easyui-datagrid" title="电表明细"></table></div>\
            <div style="margin-top:5px"><table id="ammeterInfo"></table></div>\
            </div>';
    return html;
}