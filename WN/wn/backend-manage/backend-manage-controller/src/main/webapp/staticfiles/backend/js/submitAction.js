
//切换地址栏
function setTarURL(URL) {
    window.href = "/"+URL;
    return true;
}

//点击按钮提交数据
function formsubmit(uri,index) {
//        1为第一个form,一次类推
//        document.forms[index].target=uri;
    document.forms[index].action=uri;
    document.forms[index].submit();
   
    // alert(uri);
    // alert(index);
    return true;
}