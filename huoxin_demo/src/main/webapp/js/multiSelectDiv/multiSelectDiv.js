/**
 * Created by shenfeng1 on 2015/10/14.
 */
function showDivDialog(){
    var arr = $("#selectedKeywords").val();
    $("input[name='keyword']").each(function(){
        if(arr.indexOf($(this).val())!=-1){
            $(this).attr("checked",true);
        }else{
            $(this).attr("checked",false);
        }
    });
   $("#keywordsDialog").modal();
}
function cancelDivDialog(){
    $("#keywordsDialog").modal('hide');
}
function saveKeyWords(){
    var selectKeys="";
    $("input[name='keyword']:checked").each(function(){
        selectKeys+=$(this).val()+",";
    });
    selectKeys=selectKeys.substr(0,selectKeys.length-1);
    $("#selectedKeywords").val(selectKeys);
    $('#keywordsDialog').modal('hide');
}
function selAll(){
    $("input[name='keyword']").each(function(){
            $(this).attr("checked",true);
    });
}

function disSelAll(){
    $("input[name='keyword']").each(function(){
        $(this).attr("checked",false);
    });
}
