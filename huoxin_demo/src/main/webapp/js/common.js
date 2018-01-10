/**
 * 打开模式对话框
 * 参数 {title:title,msg:msg,domId:domId,size:"nomarl|large|small",bts:[{name:btName,className:className,func:functionName,args:[]}]}
 */
function openDialog(settings) {
    var options = {title:"系统消息",size:"nomarl", msg:"",domId:"",bts:[]};
    $.extend(true, options, settings);

    if ($("#_myModal").length==0) {
        initDialog();
    }

    $("#_titleMsg").html(options.title);

    if (options.domId.length==0) { // 默认为消息弹出
        $("#_contentBody").html('<span>' + options.msg + '</span>');
    } else {
        $("#_contentBody").html($("#"+options.domId).html())
    }

    $("#_modal-footer").html('<button type="button" id="_closeBt" class="btn btn-default" data-dismiss="modal">关闭</button>');
    var bts = options.bts;

    for(var i=0; i<bts.length; i++) {
        var item = bts[i];
        var id = "_modalBt_" + i;
        var btStr = '<button type="button" class="btn btn-primary" id="' + id + '"></button>';
        $("#_modal-footer").append(btStr);
        if (typeof(item.className)!="undefined") {
            $("#" + id).addClass(item.className);
        }

        $("#" + id).html(typeof(item.name)!="undefined" ? item.name : "确定");

        $("#" + id).click({func:item.func, args:item.args}, function(event) {
            if (typeof(event.data.args)!="undefined") {
                var args = [];
                callBack(event.data.func,args.concat(event.data.args));
            } else {
                event.data.func();
            }
        });
    }
    switch(options.size) {
        case "large":$(".modal-dialog").addClass("modal-lg");break;
        case "small":$(".modal-dialog").addClass("modal-sm");break;
        default:$(".modal-dialog").removeClass().addClass("modal-dialog");
    }
    $("#_myModal").modal("show");
}

function closeDialog() {
    $("#_myModal").modal("hide");
}

function callBack(fn, args) {
    fn.apply(this, args);    
}

function initDialog() {
    var sb = new StringBuffer();
    sb.append('<div class="modal fade" id="_myModal" tabindex="-1" role="dialog" aria-labelledby="_titleMsg" aria-hidden="true" data-backdrop="static">\n');
    sb.append('<div class="modal-dialog"><div class="modal-content">\n');
    sb.append('<div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>');
    sb.append('<h4 class="modal-title" id="_titleMsg"></h4></div>\n');
    sb.append('<div class="modal-body" id="_contentBody"></div>\n');
    sb.append('<div class="modal-footer" id="_modal-footer"></div>\n');
    sb.append('</div></div></div>');
    $("body").append(sb.toString());
}

function getDemandDetail(demandId,uid){
    var url = "/approve/getDemandDetail";
    var requestData ={demandId:demandId,uid:uid};
    ajax_request(url,requestData, function (result)
    {
        if(result!=null && result.length==1){

            var obj = result[0];
            $("#detail_demandId").html(obj["demandID"]);
            $("#detail_demandName").html(obj["demandName"]);

            if(obj["cycleType"]=="0")
            {
                $("#detail_cycleType").html("临时性提数");
            }
            if(obj["cycleType"]=="1")
            {
                $("#detail_cycleType").html("周期性提数");
            }

            var excuteTime = obj["executeTime"];
            var time = excuteTime.split("-");
            if(time.length==2)
            {
                $("#detail_excuteType").html(time[0]+":");
                $("#detail_excuteTime").html(time[1]);

            }
            $("#detail_loopTime").html(obj["loopTime"]);
            $("#detail_dataCondition").html(obj["dataCondition"]);
            $("#detail_purpose").html(obj["purpose"]);
            //$("#detail_expectCompTime").html("<fmt:formatDate value='"+obj["expectCompTime"]+"' pattern='yyyy/MM/dd'/>");

            var reportFieldEntityList = obj["reportFields"];
            $("#reportField_table tbody").empty();
            for(var i=0;i<reportFieldEntityList.length;i++)
            {
                var subObj = reportFieldEntityList[i];
                var rowStr = '<tr><td ><span >'+subObj["id"]+'</span></td>' +
                    '<td ><span>'+subObj["fieldName"]+'</span></td>' +
                    '<td><span>'+subObj["fieldDefine"]+'</span></td>' +
                    '<td><span>'+subObj["formula"]+'</span></td></tr>';
                $("#reportField_table tbody").append(rowStr);
            }

            $("#detail_file").empty();
            var fileList = obj["fileList"];
            var str = "<ul>";
            for(var i=0;i<fileList.length;i++){
                var subObj = fileList[i];
                str+="<li id='"+subObj['uid']+"'><a href='javascript:void(0)'>"+subObj['fileName']+"</a></li>";
            }
            str+="</ul>"
            $("#detail_file").html(str);
            $("#detail_file ul a").click(function() {
                var uid = $(this).parent().attr("id");
                if (uid.length==0) {
                    return;
                }
                var url = '/commonFile/download?file_uid='+uid;
                $('#attachmentForm').attr('action', url);
//                $('#downform #uid').val(uid);
                $('#attachmentForm').submit();

                return;
            })

        }else{
            alert("查询需求{"+demandId+"}详细信息失败！");
        }

        $("#detailDiv").modal("show");
            
    },false);
}

