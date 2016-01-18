
$(function () {
    FactoryId = GetFactoryID();
    GetSystemColor();
    InitializePage();
    
});

var RelatedTags = "";
var g_DataSet;  //数据集合
var SystemColor = new Object();//系统颜色
var AnlogSignalTags = "";//模拟量标签
var BoolSignalTags = "";//数字量标签
var FactoryId = "";//分厂组织机构Id
var publicData = {
    ids:"",
    realTimer: {},
    pollingIntervals: 10000
};

//以下为数据准备工作

//获取分厂组织机构Id
function GetFactoryID() {
    var factoryId = "";
    $.ajax({
        type: "POST",
        url: "/UI_Monitor/DCSMonitor/MonitorShell/DCSMonitorShell.asmx/GetFactoryId",
        data: '{organizationId:"' + publicData.organizationId + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: false,//同步执行
        success: function (data) {
            factoryId = data.d;
        }
    })
    return factoryId;
}
//获取系统颜色信息
function GetSystemColor() {
    $.ajax({
        type: "POST",
        url: "/UI_Monitor/DCSMonitor/MonitorShell/DCSMonitorShell.asmx/GetSystemColorInfo",
        data: '{organizationId:"' + FactoryId + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: false,//同步执行
        success: function (data) {
            SystemColor = data.d;
        }
    })
}

function InitializePage() {
    var spans = $("span");//document.getElementsByTagName("span");
    for (var i = 0; i < spans.length; i++) {
        publicData.ids = publicData.ids + spans[i].id + ",";
        //处理dcs相关标签
        DealWidthDCSTags(spans[i]);
    }
    var divs = $("div");
    for (var j in divs) {
        DealWidthDCSTags(divs[j]);
    }
    setTimeout(CycleOperate, 1000);
}

//需要循环执行的操作
function CycleOperate() {
    getLatestData();
    GetRunningStatusRelatedTags();
}

////开关量处理
function GetRunningStatusRelatedTags() {
    var boolSignalArray = $(".BoolSignal");
    for (var x in boolSignalArray) {
        var dcsObj = boolSignalArray[x];
        var dcsOptions = $(dcsObj).attr("data-option");
        var tags = OptionPick(dcsOptions, "RelatedTags").replace(/ /g, "");
        RelatedTags = RelatedTags + tags + ';';
    }
    GetTagsData();
}
//首先获取开关量相关标签数据
function GetTagsData() {
    if (RelatedTags.replace(/ /g, "") == "") {
        return;
    }
    var dataToServer = {
        factoryId: FactoryId,
        relatedTags: RelatedTags
    };
    var urlString = "/UI_Monitor/DCSMonitor/MonitorShell/DCSMonitorShell.asmx/GetRelatedTags";
    $.ajax({
        type: "POST",
        url: urlString,
        data: JSON.stringify(dataToServer),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            RunningStatusService(data.d);
        }
    });
}
//处理运行状态显示
function RunningStatusService(myData) {
    for(var x in myData){
        var obj = $("#" + x);
        if (obj == undefined) {
            continue;
        }
        var src = "";
        switch (myData[x].ResultNum) {
            case 0:
                src = "redL.gif";
                break;
            case 1:
                src = "redL.gif";
                break;
            case 2:
                src = "redL.gif";
                break;
            case 3:
                src = "redL.gif";
                break;
            case 4:
                src = "redL.gif";
                break;
            case 5:
                src = "greenL.gif";
                break;
            case 6:
                src = "redL.gif";
                break;
        }
        var imgStr = '<img class="myimg" src="/UI_Monitor/images/common/' + src + '" style="width:100%;height:100%;" />';
        obj.html(imgStr);
    }
}
//从dcs标签中找出模拟量和数字量
function DealWidthDCSTags(dcsObj) {
    dcsObj = $(dcsObj);
    var dcsOptions = dcsObj.attr("data-option");
    //var t_id = dcsObj.attr("id");
    //var t_organizationId = t_id.split('>')[0];
    //var t_dcsTag = t_id.split('>')[1];//dcs标签
    if (null == dcsOptions || undefined == dcsOptions || "" == dcsOptions) {
        return;
    }
    else if ("DCS" != OptionPick(dcsOptions, "DataSources")) {
        return;
    }
    else {      

        var t_elementType=OptionPick(dcsOptions, "ElementType");
        if ("AnlogSignal" == t_elementType || "BarGraph" == t_elementType) {  //模拟量(会有重复的，重复标签在后台做去重工作)
            //拆分标签
            var t_id = dcsObj.attr("id");
            var t_organizationId = t_id.split('>')[0];
            var t_dcsTag = t_id.split('>')[1];//dcs标签
            AnlogSignalTags = AnlogSignalTags + t_dcsTag + ",";
        }
        else if ("BoolSignal" == t_elementType) {//数字量
            var relatedTags = OptionPick(dcsOptions, "RelatedTags");
            BoolSignalTags = BoolSignalTags + relatedTags + ";";
        }
    }
}
function getLatestData() {
    //var m_MsgData;
    var dataToServer = {
        ids:publicData.ids,
        organizationId: publicData.organizationId,
        sceneName: publicData.sceneName
    };
    var urlString = "../MonitorShell/MultiMonitorShell.asmx/GetRealTimeData";
    $.ajax({
        type: "POST",
        url: urlString,
        data: JSON.stringify(dataToServer),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            g_DataSet = data.d;
            serviceSuccessful(data);
            AnlogSignalService();//取得数值后再设置颜色
        },
        error: function () {
            setupTimerToPollLatestData();
        }

    });
}

function serviceSuccessful(resultObject) {
    displayScene(resultObject.d);
    setupTimerToPollLatestData();
}
function setupTimerToPollLatestData() {
    // 设置获取最新数据定时器
    clearTimeout(publicData.realTimer);
    publicData.realTimer = setTimeout(
        function () {
            CycleOperate();
        }, publicData.pollingIntervals);
}
function displayScene(scene) {
    // 显示监控画面参数
    // $("#sceneName").html(scene.Name);
    var datetime = $.jsonDateToDateTime(scene.time);
    $("#timestamp").html(datetime);

    // 显示数据项
    displayDataItem(scene.DataSet);
}
function displayDataItem(dataSets) {
    $.each(dataSets, function (i, item) {
        var value = Number(item.Value)
        var element = $(document.getElementById(item.ID));
        //if (element.attr("tagName") == "span")
        //element.html(value.toFixed(0));
        element.html(value);
        //else
            //element.val(value.toFixed(0));
    });
}


//模拟量
function AnlogSignalService() {
    var sendData = {
        organizationId: publicData.organizationId,
        tagSet: AnlogSignalTags
    };
    $.ajax({
        type: "POST",
        url: "/UI_Monitor/DCSMonitor/MonitorShell/DCSMonitorShell.asmx/GetGaugesInfors",
        data: JSON.stringify(sendData),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            AnlogSignalStatus(data.d);
        },
        error: function () {
            setupTimerToPollLatestData();
        }
    });
}

//处理模拟量状态
function AnlogSignalStatus(myData) {
    //将标签加工成前台标准标签格式
    for(var x in myData){     
        DealWidthAlarmColor(myData[x]);
        DealWidthBarGraph(myData[x]);
    } 
}

//处理报警颜色
function DealWidthAlarmColor(gaugeObj) {
    var dcsTag = gaugeObj.TagName;
    var resultTag = FactoryId + ">" + dcsTag + ">DCS";
    var tagObj = $(document.getElementById(resultTag));
    if (undefined == tagObj) {
        return;//没有找到该元素直接跳过
    }
    var optionStr = tagObj.attr("data-option");
    var valueStr = tagObj.text().replace(/ /g, "");
    if ("" == valueStr) {
        return;
    }
    var alarmTags = OptionPick(optionStr,"Alarm");
    var myColor = GetAlarmColor(Number(valueStr), alarmTags, gaugeObj);
    tagObj.css("background-color", myColor);
}

//处理棒图
function DealWidthBarGraph(gaugeObj) {
    var dcsTag = gaugeObj.TagName;
    var resultTag = FactoryId + ">" + dcsTag + ">BarGraph";
    var tagObj = $(document.getElementById(resultTag));//棒图对象
    var gaugeRange = gaugeObj.MaxRange - gaugeObj.MinRange;//量程
    if (undefined == tagObj) {
        return;//没有找到该元素直接跳过
    }
    var c_value = SearchValue(g_DataSet.DataSet, FactoryId + ">" + dcsTag + ">DCS");
    //如果超过最大量程
    if (c_value > gaugeObj.MaxRange) {
        tagObj.css("background-color", SystemColor.Color_MaxRangeAlarm);
        tagObj.children().css("background-color", SystemColor.Color_MaxRangeAlarm);
        return;
    }
    else if (c_value < gaugeObj.MinRange) {//如果小于最小量程
        tagObj.css("background-color", SystemColor.Color_MinRangeAlarm);
        tagObj.children().css("background-color", SystemColor.Color_MinRangeAlarm);
        return;
    }
    var barHeight = tagObj.height();//图元高度
    var fillLevel = gaugeRange == 0 || c_value / gaugeRange > 1 ? 0 : barHeight * (1 - (c_value / gaugeRange));
    //根据获取的颜色信息设置背景色和前景色
    tagObj.css("background-color", SystemColor.Color_BarForeground);
    tagObj.children().css("background-color", SystemColor.Color_BarBackground);
    tagObj.children().css("height", fillLevel);
}

//处理棒状图数值
function SearchValue(t_array,t_tagId) {
    for (var x in t_array) {
        if (t_array[x].ID == t_tagId) {
            return t_array[x].Value;
        }
        else {
            return 0;//没有匹配项返回0
        }
    }
}

//获得报警对应的颜色
//t_value:当前标签值
//t_AlarmTags:标签界限标注
//t_tagInfos:当前标签的具体信息值
function GetAlarmColor(t_Value, t_AlarmTags, t_tagInfos) {

    //应该首先获取不同程度报警的颜色设定值
    //var colorInfo = new Object();
    //$.ajax({
    //    type: "POST",
    //    url: "/UI_Monitor/DCSMonitor/MonitorShell/DCSMonitorShell.asmx/GetAlarmColorInfo",
    //    data:'{organizationId:"'+FactoryId+'"}',
    //    contentType: "application/json; charset=utf-8",
    //    dataType: "json",
    //    async: false,//同步执行
    //    success: function (data) {
    //        colorInfo=data.d;
    //    }
    //    //,
    //    //error: function () {
    //    //    setupTimerToPollLatestData();
    //    //}
    //})

    var result_color="";
    var t_tagArray = t_AlarmTags.split(",");
    var flag_HH = 0;
    var flag_H = 0;
    var flag_LL = 0;
    var flag_L = 0;
    for (var i in t_tagArray) {
        switch (t_tagArray[i].replace(/ /g, "")) {
            case "HH":
                flag_HH = 1;
                break;
            case "H":
                flag_H = 1;
                break;
            case "LL":
                flag_LL = 1;
                break;
            case "L":
                flag_L = 1;
                break;
        }
    }
    if (flag_HH) {
        if (t_Value >= t_tagInfos.Value_HH) {
            result_color = SystemColor.Color_HH;//"高高限颜色";
            return result_color;
        }
    }
    if (flag_H) {
        if (t_Value >= t_tagInfos.Value_H) {
            result_color = SystemColor.Color_H;//"高限颜色";
            return result_color;
        }
    }
    if (flag_L) {
        if (t_Value >= t_tagInfos.Value_L) {
            result_color = SystemColor.Color_L;//"低限颜色";
            return result_color;
        }
    }
    if (flag_LL) {
        if (t_Value >= t_tagInfos.Value_LL) {
            result_color = SystemColor.Color_LL;// "低低限颜色";
            return result_color;
        }
    }
    else {
        return result_color;//无法匹配则返回空
    }
}