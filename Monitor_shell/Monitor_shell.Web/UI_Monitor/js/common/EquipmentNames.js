$(function () {
    bindEquipmentEvent();
});
var equipmentmentNames = {
    zhudianji: 'test',
    test1: 'test1'
}
//事件绑定
function bindEquipmentEvent() {
    $('.equipmentName').mouseenter(function (e) {
        var equipmentId = $(this).attr('data-equipmentid');
        var myContent = equipmentmentNames[equipmentId];
        $(this).tooltip({
            position:'top',
            content: myContent
        });
        $(this).tooltip('show');
    })
    $('.equipmentName').mouseleave(function (e) {
        $(this).tooltip('hide');
    })
}