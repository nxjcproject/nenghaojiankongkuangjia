var BrowserName = "IE";
var BrowserVersion = 8;
var AutoResizeFlag = false;    //当true表示自动调整大小，当false根据滑动条调整大小
var OrganizationId = "";
var OrganizationName = "";
var OrganizationType = "";
var PageIdString = "";
var pageUrl = "";
$(function () {
    //Initialize();
    InitializeData();
    InitializeSlider();
    InitializeIframe();
    SetDisplayPageButton();
});

//初始化数据
function InitializeData() {
    getbrowser();    //获得浏览器信

    OrganizationId = $('#organizationIdContainerId').val();              //后台传来的组织机构ID
    OrganizationName = $('#organizationNameContainerId').val();          //后台传来的组织机构名称
    OrganizationType = $('#organizationTypeContainerId').val();          //后台传来的组织机构类型
    PageIdString = $('#pageIdStringContainerId').val();                  //后台传来的页面信息
    pageUrl = $('#pageUrlId').val();                                     //后台传来的页面路径信息

    if (OrganizationType == "熟料") {
        $("#ProcessMontor").attr("src", '../' + pageUrl + '/' + OrganizationId + '_sheng.aspx?PageId=' + PageIdString);
        //$("#ProcessMontor").reload();
    }
    else {
        $("#ProcessMontor").attr("src", '../' + pageUrl + '/' + OrganizationId + '.aspx?PageId=' + PageIdString);
        //$("#ProcessMontor").reload();
    }
}
//初始化Iframe，Ifame自适应大小
function InitializeIframe() {
    if (BrowserName == "IE") {
        if (document.compatMode == "CSS1Compat") {//模式匹配 解决ie8下兼容模式
        }
        $('#ProcessMontor').css('width', $('#MonitorLayout').layout('panel', 'center').panel('options').width - 8);
        $('#ProcessMontor').css('height', $('#MonitorLayout').layout('panel', 'center').panel('options').height - 9);

        $('#MonitorLayout').layout('panel', 'center').panel({
            onResize: function (width, height) {
                $('#ProcessMontor').css('width', width - 8);
                $('#ProcessMontor').css('height', height - 9);
                if (AutoResizeFlag == true) {               //子页面自动调整大小
                    SetAutoMonitorZoom(width - 8, height - 9);
                }
            }
        });

    } else if (BrowserName == "FF") {
        $('#ProcessMontor').css('width', $('#MonitorLayout').layout('panel', 'center').panel('options').width - 6);
        $('#ProcessMontor').css('height', $('#MonitorLayout').layout('panel', 'center').panel('options').height - 10);

        $('#MonitorLayout').layout('panel', 'center').panel({
            onResize: function (width, height) {
                $('#ProcessMontor').css('width', width - 6);
                $('#ProcessMontor').css('height', height - 10);
                if (AutoResizeFlag == true) {               //子页面自动调整大小
                    SetAutoMonitorZoom(width - 6, height - 10);
                }
            }
        });
    } else {
        $('#ProcessMontor').css('width', $('#MonitorLayout').layout('panel', 'center').panel('options').width - 19);
        $('#ProcessMontor').css('height', $('#MonitorLayout').layout('panel', 'center').panel('options').height - 9);

        $('#MonitorLayout').layout('panel', 'center').panel({
            onResize: function (width, height) {
                $('#ProcessMontor').css('width', width - 19);
                $('#ProcessMontor').css('height', height - 9);
                if (AutoResizeFlag == true) {               //子页面自动调整大小
                    SetAutoMonitorZoom(width - 19, height - 9);
                }
            }
        });
    }

}
//初始化滑块
function InitializeSlider() {
    $('#slider_MonitorZoom').slider({
        width: 200,
        height: 24,
        value: 100,
        min: 10,
        max: 100,
        step: 10,
        showTip: false,
        mode: 'h',
        reversed: true,
        onChange: function (newValue, oldValue) {
            if (AutoResizeFlag == false) {
                MonitorZoom(newValue, oldValue);
                document.getElementById("ProcessMontor").contentWindow.SetBodySize(parseFloat(newValue) / 100, $('#ProcessMontor').width(), $('#ProcessMontor').height(), BrowserName, BrowserVersion);
            }
        }
    });
}
//当点击自动匹配大小按钮后，iframe中的页面按照比例自适应当前窗口
function SetAutoResize() {
    if (AutoResizeFlag == false) {
        AutoResizeFlag = true;

        var m_IframeWidth = $('#ProcessMontor').width();
        var m_IframeHeight = $('#ProcessMontor').height();
        SetAutoMonitorZoom(m_IframeWidth, m_IframeHeight);
    }
    else {
        AutoResizeFlag = false;
    }
}
//改变缩放比例
function SetAutoMonitorZoom(myWidth, myHeight) {
    var m_SubPageWidth = document.getElementById("ProcessMontor").contentWindow.GetDefaultWidth();
    var m_SubPageHeight = document.getElementById("ProcessMontor").contentWindow.GetDefaultHeight();
    var m_ZommRadioValue = 100;
    if (myWidth / myHeight > m_SubPageWidth / m_SubPageHeight) {            //当现有iframe的宽高比大于子页面的宽高比，则按高进行比例缩放
        m_ZommRadioValue = myHeight * 100 / m_SubPageHeight;
    }
    else {//当现有iframe的宽高比小于等于子页面的宽高比，则按宽进行比例缩放
        m_ZommRadioValue = myWidth * 100 / m_SubPageWidth;
    }
    MonitorZoom(m_ZommRadioValue, m_ZommRadioValue);
    document.getElementById("ProcessMontor").contentWindow.SetBodySize(parseFloat(m_ZommRadioValue) / 100, $('#ProcessMontor').width(), $('#ProcessMontor').height(), BrowserName, BrowserVersion);
}
//改变缩放比例
function MonitorZoom(myNewValue, myOldValue) {
    var zoomObject = document.getElementById("ProcessMontor").contentWindow.document.body;

    zoomEle(zoomObject, parseFloat(myNewValue) / 100, parseFloat(myNewValue) / 100);
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
    if (brow.msie)
    {
        BrowserName = "IE";
        var m_Version = (brow.version).substring(0, brow.version.indexOf('.'));
        BrowserVersion = parseInt(m_Version,0);
    }
    if (brow.mozilla)
    {
        BrowserName = "FF";
        var m_Version = (brow.version).substring(0, brow.version.indexOf('.'));
        BrowserVersion = parseInt(m_Version, 0);
    }
    if (brow.safari)
    {
        BrowserName = "Safari";
        var m_Version = (brow.version).substring(0, brow.version.indexOf('.'));
        BrowserVersion = parseInt(m_Version, 0);
    }
    if (brow.opera)
    {
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
//对DOM元素缩放
function zoomEle(el, xScale, yScale) {
    style = el.getAttribute('style') || "";
    if (BrowserName == "IE" && BrowserVersion < 9) {
        if (document.compatMode == "CSS1Compat") {//模式匹配 解决ie8下兼容模式
            el.style.width = el.clientWidth * 2.0;
            el.style.height = el.clientHeight * 2.0;
        }
        el.style.zoom = xScale;
    }
    else if (BrowserName == "IE" && BrowserVersion >= 9) {
        el.setAttribute('style', style + '-ms-transform: scale(' + xScale + ', ' + yScale + '); -ms-transform-origin: 0px 0px;');
    }
    else if (BrowserName == "FF") {
        el.style.transform = 'scale(' + xScale + ', ' + yScale + ')';
        el.style.transformOrigin = '0px 0px';
    }
    else if (BrowserName == "Opera") {
        el.setAttribute('style', style + '-o-transform: scale(' + xScale + ', ' + yScale + '); -o-transform-origin: 0px 0px;');
    }
    else {
        el.setAttribute('style', style + '-webkit-transform: scale(' + xScale + ', ' + yScale + '); -webkit-transform-origin: 0px 0px;');
    }
    //-webkit-transform: scale(0.5);     /* for Chrome || Safari */
    //-moz-transform: scale(0.5);        /* for Firefox */
    //-ms-transform: scale(0.5);         /* for IE */
    //-o-transform: scale(0.5);          /* for Opera */
    //transform: rotate(45deg);
    //transform-origin:20% 40%;

    //-ms-transform: rotate(45deg); 		/* IE 9 */
    //-ms-transform-origin:20% 40%; 		/* IE 9 */

    //-webkit-transform: rotate(45deg);	/* Safari 和 Chrome */
    //-webkit-transform-origin:20% 40%;	/* Safari 和 Chrome */

    //-moz-transform: rotate(45deg);		/* Firefox */
    //-moz-transform-origin:20% 40%;		/* Firefox */

    //-o-transform: rotate(45deg);		/* Opera */
    //-o-transform-origin:20% 40%;		/* Opera */
}
//根据组织机构类型，生成左下角页面菜单
function SetDisplayPageButton() {
    //var OrganizationId = "";
    //var OrganizationName = "";
    //var OrganizationType = "";
    if (BrowserName != "IE") {
        if (OrganizationType == "熟料") {
            var m_DisplayButton01 = $('<a href="' + '../' + pageUrl + '/' + OrganizationId + '_sheng.aspx?PageId=' + PageIdString + '" target="ProcessMontor"></a>');
            var m_DisplayButton02 = $('<a href="' + '../' + pageUrl + '/' + OrganizationId + '_shu.aspx?PageId=' + PageIdString + '" target="ProcessMontor"></a>');
            $('#DisplayPageButtons').append('<td id = "DisplayButton01Td" style = "width:125px;"></td>');
            $('#DisplayPageButtons').append('<td id= "DisplayButton02Td" style = "width:125px;"></td>');
            $('#DisplayButton01Td').append(m_DisplayButton01);
            $('#DisplayButton02Td').append(m_DisplayButton02);
            m_DisplayButton01.linkbutton({
                iconCls: 'icon-search',
                plain: false,
                text: '生料制备',
                width: 120,
                height: 22
            });
            m_DisplayButton02.linkbutton({
                iconCls: 'icon-search',
                plain: false,
                text: '熟料制备',
                width: 120,
                height: 22
            });

        }
        else {
            var m_DisplayButton = $('<a href="' + '../' + pageUrl + '/' + OrganizationId + '.aspx?PageId=' + PageIdString + '" target="ProcessMontor" class="easyui-linkbutton">' + OrganizationName + '</a>');
            $('#DisplayPageButtons').append('<td id = "DisplayButtonTd" style = "width:125px;"></td>');
            $('#DisplayButtonTd').append(m_DisplayButton);
            m_DisplayButton.linkbutton({
                iconCls: 'icon-search',
                plain: false,
                width: 120,
                height: 22
            });

        }
    }
    else {
        if (OrganizationType == "熟料") {
            var m_DisplayButton01 = $('<a href="' + '../' + pageUrl + '/' + OrganizationId + '_sheng.aspx?PageId=' + PageIdString + '" target="ProcessMontor"></a>');
            var m_DisplayButton02 = $('<a href="' + '../' + pageUrl + '/' + OrganizationId + '_shu.aspx?PageId=' + PageIdString + '" target="ProcessMontor"></a>');
            $('#DisplayPageButtons').append('<td id = "DisplayButton01Td" style = "width:125px; margin:0px;padding:0px; overflow:hidden;"></td>');
            $('#DisplayPageButtons').append('<td id = "DisplayButton02Td" style = "width:125px; margin:0px;padding:0px; overflow:hidden;"></td>');
            $('#DisplayButton01Td').append(m_DisplayButton01);
            $('#DisplayButton02Td').append(m_DisplayButton02);
            m_DisplayButton01.linkbutton({
                iconCls: 'icon-search',
                plain: false,
                text: '生料制备',
                width: 120,
                height: 22
            });
            m_DisplayButton02.linkbutton({
                iconCls: 'icon-search',
                plain: false,
                text: '熟料制备',
                width: 120,
                height: 22
            });
        }
        else {
            var m_DisplayButton = $('<a href="' + '../' + pageUrl + '/' + OrganizationId + '.aspx?PageId=' + PageIdString + '" target="ProcessMontor" class="easyui-linkbutton">' + OrganizationName + '</a>');
            $('#DisplayPageButtons').append('<td id = "DisplayButtonTd" style = "width:125px;margin:0px;padding:0px; overflow:hidden;"></td>');
            $('#DisplayButtonTd').append(m_DisplayButton);
            m_DisplayButton.linkbutton({
                iconCls: 'icon-search',
                plain: false,
                width: 120,
                height: 22
            });
        }
    }
}
function HiddenParentTopLeft() {
    if (typeof (window.parent.HiddenTopLeftLayoutFun) == "function") {
        window.parent.HiddenTopLeftLayoutFun();
    }
}

//打开多曲线对比窗口
function openMultiTrendLineWindow() {
    var url = "/UI_Monitor/TrendTool/MultiTrendlineRenderer.aspx";
    window.open(url, "WindowChart", "width=1000,height=600,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
}