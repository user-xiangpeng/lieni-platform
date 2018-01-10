$(function(){
    var msgtype = $("#msgarea").attr("title");

    if("" != msgtype && null != msgtype && msgtype =='fail'){
        setTimeout('$("#msgarea").show("slow")',500);
        setTimeout('$("#msgarea").hide("slow")',13000);

    }else if("" != msgtype && null != msgtype && msgtype =='succ'){
        $("#msgarea").css("background","#4DFFE2");
        setTimeout('$("#msgarea").show("slow")',500);
        setTimeout('$("#msgarea").hide("slow")',13000);
    }

});