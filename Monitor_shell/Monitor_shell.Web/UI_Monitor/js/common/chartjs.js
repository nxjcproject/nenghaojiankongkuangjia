$(function () {
    if ($.browser.msie) {
        $(".mchart").click(function () {
            window.open("/UI_Monitor/TrendTool/TrendlineRenderer.aspx#" + this.id, "_blank", "width=800,height=600,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
        })
    }
    else {
        $(".mchart").click(function () {
            window.open("/UI_Monitor/TrendTool/TrendlineRenderer.aspx#" + this.id, this.id, "width=800,height=600,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
        })
    }
})