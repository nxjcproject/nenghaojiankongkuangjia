
var g_array = [];
$(function () {
    var myLabels = $(".mytable:not(.nodisplay)");
    
    for (var i = 0; i < myLabels.length; i++) {
        var itemId = myLabels.find('span')[0].id;

        g_array.push(itemId);
    }
});