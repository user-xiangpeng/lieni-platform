/**
 * AJAX 请求封装
 */


/**
 * @param url  请求URL地址
 * @param data 请求数据参数对象
 * @param resultFun  成功返回结果处理函数，默认返回请求结果
 * @param async 同步或异步请求，默认为异步请求
 * @param dataType  请求数据类型，json或text等，默认为json
 * @param type  请求类型，POST或GET，默认为POST请求
 * @param faultFun  失败处理函数，默认空方法不做处理
 */
function ajax_request(url,data,resultFun,async,dataType,type,faultFun){
	 if(async == null || async == undefined || async != false){
		 async = true;
    }
	 if(type == null || type == undefined || type == ""){
         type = "POST";
    }
    if(dataType == null || dataType == undefined || dataType == ""){
         dataType = "json";
    }
    var result=null;
    if(resultFun == null || resultFun == undefined){
    	resultFun = function(rs){
    		result = rs;
    	};
    }
    if(faultFun == null || faultFun == undefined){
    	faultFun = function(r,s,e){
            window.location = ctx+"/login";
    	};
    }
    $.ajax({
        type:type,
        url:url,
        data:data,
        dataType:dataType,
        async: async,
        success:resultFun,
        error:faultFun
	});
    return result;
}

