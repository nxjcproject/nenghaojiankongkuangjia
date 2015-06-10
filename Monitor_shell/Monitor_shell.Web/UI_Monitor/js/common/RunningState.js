$(function () {
    setInterval(setBlink, 500);
    InitializePage();
});


var publicData = {
    ids:'',
    realTimer: {},
    pollingIntervals: 10000
};

function InitializePage() {
    var containers = document.getElementsByClassName("imageContainer");
    for (var i = 0; i < containers.length; i++) {
        publicData.ids = publicData.ids + containers[i].id + ",";
    }
    setTimeout(getLatestData, 1000);
}
function getLatestData() {
    //var m_MsgData;
    var dataToServer = {
        ids: publicData.ids
    };
    var urlString = "MonitorShell/MultiMonitorShell.asmx/GetRunningData";
    $.ajax({
        type: "POST",
        url: urlString,
        data: JSON.stringify(dataToServer),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            serviceSuccessful(data);
        },
        error: function () {
            setupTimerToPollLatestData();
        }
    });
}

function serviceSuccessful(resultObject) {
    AddImage(resultObject.d.DataSet);
    setupTimerToPollLatestData();
}

function setupTimerToPollLatestData() {
    // 设置获取最新数据定时器
    clearTimeout(publicData.realTimer);
    publicData.realTimer = setTimeout(
        function () {
            getLatestData();
        }, publicData.pollingIntervals);
}

function AddImage(dataSets) {
    $.each(dataSets, function (i, item) {
        var content;
        var basePath = "/UI_Monitor/images/common/";
        switch (item.Value) {
            case '0':
                content = getImgTag(basePath + "redL.png");
                break;

            case '1':
                content = getImgTag(basePath + "greenL.png");
                break;

            default:
                content = getImgTag(basePath + "redL.png");
        }
        var element = $(document.getElementById(item.ID));
        element.html(content);
    });
}

function getImgTag(src) {
    return '<img class="myimg" src="' + src + '" style="width:100%;height:100%;" />';
}

function setBlink() {
    $('.myimg').fadeIn(500).fadeOut(500);
}