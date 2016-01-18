
var g_btnCount = 0;
var g_btnWidth = 100;
var g_ie_DValue = 9;//ie误差值
var g_ff_DValue = 10;//火狐误差值
var g_other_DValue = 9;//其他误差值
var LastSelectedMainMenu='';//记录被选中的按钮

$(function () {
    getbrowser();
    
    GetBtnInfo();
    AutoAdjustBtnZone();

    InitializeIframe();
    $.parser.parse();
    ChangeBtnStyle();
});

function GetBtnInfo() {
    var urlString = "/UI_Monitor/DCSMonitor/MonitorShell/DCSMonitorShell.aspx/GetViewPageInfos";
    $.ajax({
        type: "POST",
        url: urlString,
        //data: JSON.stringify(dataToServer),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: false,//同步执行
        success: function (msg) {
            var myData = msg.d;
            CreatBtnObj(myData);
        },
        error: function () {
            //setupTimerToPollLatestData();
        }

    });
}

function CreatBtnObj(data) {
    //将数组按照DisplayIndex排序
    data.sort(function (a,b) {
        return a.DisplayIndex - b.DisplayIndex;
    });

    g_btnCount = data.length;
    for (var i = 0; i < g_btnCount; i++) {
        var pageUrl = data[i].ViewUrl;
        var PageIdString = data[i].NodeId;
        var btnName = data[i].BtnName;
        if(data[i].DefaultView == true){
            $("#DCSMonitor").attr("src", pageUrl + '?PageId=' + PageIdString);
        }
        var btnTemplate = '<td  style = "width:105px; margin:0px;padding:0px; overflow:hidden;">'+
                            '<a id="BtnId'+i+'" href="' + pageUrl + '" class="easyui-linkbutton" data-options="width:'+g_btnWidth+' ,height: 22" target="DCSMontor">' + btnName + '</a>' +
                        '</td>';
        var t='jfdsaif dfa"fdsafa"'
        $('#DisplayPageButtons').append(btnTemplate);
    }
    //$.parser.parse("#BtnContainer");
}

//按钮单击事件
function ChangeBtnStyle() {
    $("a").click(function () {
        SetMainMenuButtonCss(this);
    });
}
//改变按钮的选中状态
function SetMainMenuButtonCss(myObj) {
    if (LastSelectedMainMenu != "") {
        $('#' + LastSelectedMainMenu).removeClass("easyui-linkbutton c8");
        $('#' + LastSelectedMainMenu).addClass("easyui-linkbutton");
    }
    $(myObj).removeClass("easyui-linkbutton");
    $(myObj).addClass("easyui-linkbutton c8");
    LastSelectedMainMenu = myObj.id;
}



//初始化Iframe，Ifame自适应大小
function InitializeIframe() {
    if (BrowserName == "IE") {
        if (document.compatMode == "CSS1Compat") {//模式匹配 解决ie8下兼容模式
        }
        $('#DCSMonitor').css('width', $('#MonitorLayout').layout('panel', 'center').panel('options').width - 8);
        $('#DCSMonitor').css('height', $('#MonitorLayout').layout('panel', 'center').panel('options').height - g_ie_DValue);
    } else if (BrowserName == "FF") {
        $('#DCSMonitor').css('width', $('#MonitorLayout').layout('panel', 'center').panel('options').width - 6);
        $('#DCSMonitor').css('height', $('#MonitorLayout').layout('panel', 'center').panel('options').height - g_ff_DValue);
    } else {
        $('#DCSMonitor').css('width', $('#MonitorLayout').layout('panel', 'center').panel('options').width - 19);
        $('#DCSMonitor').css('height', $('#MonitorLayout').layout('panel', 'center').panel('options').height - g_other_DValue);
    }
}
//根据按钮的个数自动调节按钮区域的宽度
function AutoAdjustBtnZone() {
    var btnZoneWidth = $("#MonitorLayout").width();//按钮区域的长度
    var fillWidth = g_btnWidth * g_btnCount;//所有按钮的总长度

    if (btnZoneWidth < fillWidth) {
        g_ie_DValue = 19;
        g_ff_DValue = 29;
        g_other_DValue = 19;
        $('#MonitorLayout').layout('panel', 'south').panel(
            'resize',
            {
                height:45
            }
        );
    }
    //$.parser.parse();
}

//获得浏览器名称
function getbrowser() {
    //var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
    //var isOpera = userAgent.indexOf("Opera") > -1;
    //if (isOpera) { return "Opera" }; //判断是否Opera浏览器
    //if (userAgent.indexOf("Firefox") > -1) { return "FF"; } //判断是否Firefox浏览器
    //if (userAgent.indexOf("Safari") > -1) { return "Safari"; } //判断是否Safari浏览器
    //if (userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera) { return "IE"; };var brow = $.browser;
    var brow = $.browser;
    if (brow.msie) {
        BrowserName = "IE";
        var m_Version = (brow.version).substring(0, brow.version.indexOf('.'));
        BrowserVersion = parseInt(m_Version, 0);
    }
    if (brow.mozilla) {
        BrowserName = "FF";
        var m_Version = (brow.version).substring(0, brow.version.indexOf('.'));
        BrowserVersion = parseInt(m_Version, 0);
    }
    if (brow.safari) {
        BrowserName = "Safari";
        var m_Version = (brow.version).substring(0, brow.version.indexOf('.'));
        BrowserVersion = parseInt(m_Version, 0);
    }
    if (brow.opera) {
        BrowserName = "Opera";
        var m_Version = (brow.version).substring(0, brow.version.indexOf('.'));
        BrowserVersion = parseInt(m_Version, 0);
    }
    if (brow.chrome) {
        BrowserName = "Chrome";
        var m_Version = (brow.version).substring(0, brow.version.indexOf('.'));
        BrowserVersion = parseInt(m_Version, 0);
    }
    //判断是否IE浏览器
}