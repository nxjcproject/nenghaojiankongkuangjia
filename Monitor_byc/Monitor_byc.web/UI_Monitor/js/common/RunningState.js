$(function () {
    setInterval(setBlink, 500);
    getLatestData();
});


var publicData = {
    realTimer: {},
    pollingIntervals: 10000
};

function InitializePage() {
    var spans = document.getElementsByClassName("imageContainer");
    for (var i = 0; i < spans.length; i++) {
        publicData.ids = publicData.ids + spans[i].id + ",";
    }
    setTimeout(getLatestData, 1000);
}
function getLatestData() {
    //var m_MsgData;
    var dataToServer = {
        ids: publicData.ids
    };
    var urlString = "../MonitorShell/MultiMonitorShell.asmx/GetRealTimeData";
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
    AddImage(resultObject.d);
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
        switch (code) {
            case '0':
                content = getImgTag(basePath + "redL.png");
                break;

            case '1':
                content = getImgTag(basePath + "greenL.png");
                break;

            case '001':
                content = getImgTag(basePath + "yellowL.png");
                break;

            default:
                content = getImgTag(basePath + "redL.png");
        }

        var element = $(document.getElementById(item.ID));
        element.html(content);
    });

    $(".imageContainer").each(function () {
        var red = $(this).attr('data-red');
        var green = $(this).attr('data-green');
        var yellow = $(this).attr('data-yellow');
        var code = red + green + yellow;

        var content;
        var basePath = "/UI_Monitor/images/common/";
        switch (code) {
            case '100':
                content = getImgTag(basePath + "redL.png");
                break;

            case '010':
                content = getImgTag(basePath + "greenL.png");
                break;

            case '001':
                content = getImgTag(basePath + "yellowL.png");
                break;

            default:
                content = getImgTag(basePath + "redL.png");
        }
        $(this).html(content);
    });
}

function getImgTag(src) {
    return '<img class="myimg" src="' + src + '" style="width:100%;height:100%;" />';
}

function setBlink() {
    $('.myimg').fadeIn(500).fadeOut(500);
}