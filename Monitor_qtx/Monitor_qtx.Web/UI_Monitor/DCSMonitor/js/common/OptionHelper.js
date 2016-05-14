


//从optionsStr中获取optionName属性的属性值
//没有匹配值返回""
function OptionPick(optionsStr,optionName) {
    var m_pattern_str = optionName + ' *= *\'.*?\'';
    var m_pattern = new RegExp(m_pattern_str);
    if (m_pattern.test(optionsStr)) { //如果有匹配
        var origOptionArray = m_pattern.exec(optionsStr); //返回的是一个数据，原则上只有一个数据，所有只取第一个
        var origOption = origOptionArray[0];
        //提取具体属性值
        var myPattern = new RegExp("'.*'");
        var optionValue = myPattern.exec(origOption)[0].replace(/'/g, "").replace(/ /g, "");//去掉单引号和空格
        return optionValue;
    }
    else { //没有匹配
        return "";
    }
}