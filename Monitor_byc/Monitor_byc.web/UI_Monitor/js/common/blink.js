$(function () {
    setInterval(test, 3000)
    blink();
});

var testData = {
    flag:0
}
function test() {
    if (testData.flag % 2 == 0) {
        $(".imageContainer").each(function () {
            var red = $(this).attr('data-red', "0");
            var green = $(this).attr('data-green', "1");
        });
    }
    else {
        $(".imageContainer").each(function () {
            var red = $(this).attr('data-red', "1");
            var green = $(this).attr('data-green', "0");
        });
    }
    testData.flag = testData.flag + 1;
}


var publicData = {
    realTimer: {},
    pollingIntervals: 10000
};

function blink() {
    //setInterval(AddImage, 20000);
    AddImage();
    setInterval(setBlink, 500);
}

function setupTimerToPollLatestData() {
    // 设置获取最新数据定时器
    clearTimeout(publicData.realTimer);
    publicData.realTimer = setTimeout(
        function () {
            AddImage();
        }, publicData.pollingIntervals);
}

function AddImage() {
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
    setupTimerToPollLatestData();
}

function getImgTag(src) {
    return '<img class="myimg" src="' + src + '" style="width:100%;height:100%;" />';
}

function setBlink() {
    $('.myimg').fadeIn(500).fadeOut(500);
}