
var g_array = [];
var g_nameArray = [];
var parentsTable;
$(function () {
    var myLabels = $(".mytable:not(.nodisplay)").find('span');
    var test = $($(".mytable:not(.nodisplay)")[0]).find('span');
    for (var i = 0; i < myLabels.length; i++) {
        var itemId = myLabels[i].id;
        if ($.inArray(itemId, g_array) == -1) {
            g_array.push(itemId);
        }
    }
    var t;
    $.ajax({
        type: "POST",
        url: "../MonitorShell/MultiMonitorShell.asmx/GetNameInfo",
        data: "{'myItemStrings':'" + g_array + "'}", //JSON.stringify(dataToServer),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: false,
        success: function (msg) {
            g_nameArray = msg.d;
        }
    });
    bindEquipmentEvent();
});


//事件绑定
function bindEquipmentEvent() {
    $('span').mouseenter(function (e) {
        var itemId = this.id;
        var t_array = itemId.split('>');
        var itemKey = t_array[0] + ">" + t_array[1].split('_')[0];
        var myContent = g_nameArray[itemKey];
        
        var parentsTable = $(this).parents(".mytable");
        if (typeof (myContent) == 'undefined') {
            $(parentsTable).tooltip('hide');
        }
        else {
            $(parentsTable).tooltip({
                position: 'top',
                content: myContent
            });
            $(parentsTable).tooltip('show');
        }
    })
    $('span').mouseleave(function (e) {
        $(parentsTable).tooltip('hide');
    })
}

////事件绑定
//function bindEquipmentEvent() {
//    $('.mytable:not(.nodisplay)').mouseenter(function (e) {
//        var itemId = $(this).find("span")[0].id;
//        var t_array = itemId.split('>');
//        var itemKey = t_array[0] + ">" + t_array[1].split('_')[0];
//        //var itemId = this.id;
//        var myContent = g_nameArray[itemKey];
//        $(this).tooltip({
//            position: 'top',
//            content: myContent
//        });
//        $(this).tooltip('show');
//    })
//    $('span').mouseleave(function (e) {
//        $(this).tooltip('hide');
//    })
//}