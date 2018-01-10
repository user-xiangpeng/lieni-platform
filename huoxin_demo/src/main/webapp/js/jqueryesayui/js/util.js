/**
 * 保证IE下console不出现错误
 */
if (typeof console == "undefined"){
	var fn = function(){};
	console = {
		log : fn,
		info: fn,
		error : fn
	};
}

//跨域请求配置
var baseURL = "http://admin.passport.17guagua.com";
var useJsonp = false;

var successURLDomain = document.URL.split("/")[2];

var loginUrl = "http://passport.17guagua.com/passport/loginFrame.html?sUrl=http://" + successURLDomain + "/admin/main.html";
/** 将 plugins 对象中的属性 合并到 dest 对象中 */
var $putAll = function(dest, plugins){
	for (var key in plugins){
		dest[key] = plugins[key]
	}
	return dest;
};

function getCurrentUser(){
//	 window._user = _user;
	var user = new Object();
	if(window._user){
		user = window._user;
	}else if(window.parent._user){
		user = window.parent._user;
	}else if(top.window._user){
		user = top.window._user;
	}
	return user;
}

/** 将list 对象转换成 页面树显示用的 tree 对象 */
var $listToTree = function (list, checkedIds){
	var root = {id:0, text:'root', children:[]}
	var map = {0 : root};
	$.each(list, function(i, obj){
		var checked=false;
		if(checkedIds && obj.id == checkedIds[obj.id]){
			checked=true;
		}
		map[obj.id] = obj;
		$putAll(obj, {
  			text : obj.name,
  			attributes : obj,
  			checked : checked,
  			children : []
		});
	});

	$.each(list, function(i, obj){
		var parent = map[obj.parentId];
		if(parent){
			parent.children.push(obj);
		}
	});
	return root;
};

$.extend($.messager.defaults,{
    ok:"确定",
    cancel:"取消"
});

$.extend($.fn.validatebox.defaults.rules, {
	regex: {
		validator: function(value, param){
			return param.test(value);
		}
	},
	notLonger: {
		validator: function(value, param){
			var length = _$Validate.getStrLength(value);
			return length <= parseInt(param);
		}
	},
	equeal: {
		validator: function(value, param1){			
			console.info(param1);
			var var1 = $("#"+param1[0]).val();
			if (!var1)return false;
			if (!value)return false;
			var r = var1 == value;
			return r;
		},
		message: ''
	},
	isSame: {
		validator: function(value, param1){
			var var1 = $("#"+param1).val();
			if (!var1)return false;
			if (!value)return false;
			var r = var1 == value;
			return r;
		},
		message:''
	},
	// 表单验证，数字格式 number'min,max' 
	// 检查是否是数字 min 表示允许的最小值， max 为允许的最大值。 number',max' 表示不限制最小值
	number:{
		validator:function(value, param){
			console.info(value + ' ' + param);
			var num = value - 0;
			if (num != num){
				this.message = '必须输入数字';
				return false;
			}
			var par = param.split(',');
			if (par.length >= 1 && par[0] != '' && num < par[0] - 0){
				this.message = '数字不能小于 ' + par[0];
				return false;
			}
			if (par.length >= 2 && par[1] != '' && num > par[1] - 0){
				this.message = '数字不能大于 ' + par[1];
				return false;
			} 
			return true;
		}
	}
});

/** 
 * 封装一些默认参数
 */
$.badu = {
	datagrid : {
		defaultOption : {
			striped:true,
			collapsible:true,
			remoteSort:false,
			rownumbers:true,
			singleSelect:true
		}
	}
}



/**
 * 封装了分页，对一些参数进行赋值
 * @param pagination
 * @param paginationOption
 * @return
 */

var _$start$_;

function $pagination(pagination, paginationOption) {
	var size = pageSize;
	if (!size) {
		size = 10;
	}
	var defaultOption = {
		pageSize: size,//每页显示的记录条数，默认为10 
        pageList: [10,15,20,30, 40],//可以设置每页记录条数的列表 
        beforePageText: '第',//页数文本框前显示的汉字 
        afterPageText: '页    共 {pages} 页', 
        displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录' 
	};
	var _ponSelectPage;
	if (paginationOption.onSelectPage != undefined) {
		_ponSelectPage = paginationOption.onSelectPage;
	}
	var _selectPage = function(pageNumber, pageSize1){
		$(this).pagination('loading');
		start = (pageNumber - 1) * pageSize1;
		_$start$_ = (pageNumber - 1) * pageSize1;
		pageSize = pageSize1;
		if (paginationOption.onSelectPage != undefined) {
			_ponSelectPage(pageNumber, pageSize);
		}
		$(this).pagination('loaded');
	};
	if (paginationOption.onSelectPage != undefined) {
		paginationOption.onSelectPage = _selectPage;
	}
	var _pagination = $.extend(true, {}, defaultOption, paginationOption);
	$(pagination).pagination(_pagination);
}

/**
 * 将分页重置为开始位置
 * @param id
 * @return
 */
function $initPagination(id) {
	var p = $(id).datagrid('getPager');
	$(p).pagination({pageNumber: 1});
}

/**
 * 处理ajax返回的数据，对错误进行操作
 * @result 没有错误返回true， 有错误返回false
 */
function _$ajaxResultExecute(data) {
	if (data == null) {
		$.messager.alert('错误',"呀!没有查询到数据",'error');
		return false;
	} else if (data.state == 2) {
		$.messager.confirm('未登陆，请登陆', '你还未登陆，不能访问这个页面', function(r){
			if(window.parent) {
				window.parent.location.href = loginUrl;
			} else {
				location.href = loginUrl;
			}
		});
		return false;
	} else if (data.state == 3) {
		$.messager.confirm('用户未授权', '您还未授权，不能访问这个页面', function(r){
		});
		return false;
	} else if (data.state != 0) {
		$.messager.alert('错误', data.message,'error');
		return false;
	}
	return data.state == 0;
}

/**
 * 默认的ajax参数
 */
var _$ajaxDefaultOption = {
	cache:false,
	error: function(xhr, errSta, errThr) {
		$.messager.alert('错误', '服务器或网络异常，请稍后执行此操作！', "error");
	},
	complete:function(){
		if (this.buttonId != null) {
			$(this.buttonId).removeAttr("disabled");
		}
	},
	beforeSend: function() {
		if (this.buttonId != null) {
			$(this.buttonId).attr("disabled", "disabled");
		}
	}
};

/**
 * 封装jquery的ajax操作。 并进行通用错误处理
 */
function $ajax(ajaxOption) {
	jsonpOption(ajaxOption);
	var _successFn = ajaxOption.success;
	var _faildFn = ajaxOption.failed;
	ajaxOption.success = function jsonpCallbackFunction(ddata){
		try {
			if (_$ajaxResultExecute(ddata)) {
				if (_successFn) {
					_successFn(ddata);
				}
			}else if(ddata.state != 2 && ddata.state != 3 && !!_faildFn){
				_faildFn(ddata);
			}
		} catch(e) {
			console.error(e);
		}
	}
	var _ajax = $.extend(true, {}, _$ajaxDefaultOption, ajaxOption);
	$.ajax(_ajax);
}

function jsonpOption(ajaxOption){
	ajaxOption.beforeSend = function(x) {
        x.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");  
    }
	if(useJsonp === true){
		ajaxOption.dataType = "jsonp";
		ajaxOption.jsonp = "jsoncallback";
		var reqUrl = ajaxOption.url;
		if(!reqUrl.indexOf("http://")==0){
			reqUrl = baseURL + reqUrl;
		}
//		reqUrl = reqUrl + ( reqUrl.indexOf("?")>0 ? "&" : "?" ) + "jsoncallback=jsonpCallbackFunction");
		console.info("reqUrl ：" + reqUrl);
		ajaxOption.url = reqUrl;
	}
}

/**
 * 封装表单提交操作，提交一个表单
 * @fromId  要提交的对象
 * @ajaxOption ajax 参数
 */
function $ajaxFrom(fromId, ajaxOption) {
	var el = $(fromId);
	if (!el.form("validate")){
		console.info('验证失败');
		return;
	}
	jsonpOption(ajaxOption);
	var _successFn = ajaxOption.success;
	var _faildFn = ajaxOption.failed;
	ajaxOption.success = function(data) {
		try {
			if (_$ajaxResultExecute(data)) {
				if (_successFn) {
					_successFn(data);
				}
			}else if(data.state != 2 && data.state != 3 && _faildFn){
				_faildFn(data);
			}
		} catch(e) {
			console.error(e)
		}
	};
	var _ajax = $.extend(true, {}, _$ajaxDefaultOption, ajaxOption);
	el.ajaxSubmit(_ajax);
}

function $tableHandle(list) {
	var str = "<center>";
	var t = false;
	for (var i = 0; i<list.length; i++) {
		if (t) {
			str = str + "&nbsp;|&nbsp;";
		}
		str = str + '<a id="icon" class="'+list[i].iconClass+'" href="javascript:'+list[i].jsFunction+'" title="'+list[i].title+'">&nbsp;</a>';
		t = true;
	}
	str = str + "</center>";
	return str;
}

/**
 * 当添加，删除，更新数据时候，表格需要更新，并添加提示信息
 * @param title 提示信息的标题栏
 * @param msg  提示信息的内容
 * @return
 */
function $reloadData(title, msg) {
	loadDataGridData();
	$.messager.show({
		title:title,
		msg:msg
	});
}

/**
 * 批量赋值
 * @param array
 * @return
 */
function $val(array) {
	if (array == undefined || array.length == 0) return;
	$.each(array, function(i, obj){
		$("#"+obj.id).val(obj.value);
	});
}

/**
 * 格式化时间
 * @param fmt
 * @return
 */
Date.prototype.format = function(fmt) {
    var o = {
        "M+": this.getMonth() + 1,
        //月份
        "d+": this.getDate(),
        //日
        "h+": this.getHours() % 12 == 0 ? 12 : this.getHours() % 12,
        //小时
        "H+": this.getHours(),
        //小时
        "m+": this.getMinutes(),
        //分
        "s+": this.getSeconds(),
        //秒
        "q+": Math.floor((this.getMonth() + 3) / 3),
        //季度
        "S": this.getMilliseconds() //毫秒
    };
    var week = {
        "0": "\u65e5",
        "1": "\u4e00",
        "2": "\u4e8c",
        "3": "\u4e09",
        "4": "\u56db",
        "5": "\u4e94",
        "6": "\u516d"
    };
    if (/(y+)/.test(fmt)) {
        fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }
    if (/(E+)/.test(fmt)) {
        fmt = fmt.replace(RegExp.$1, ((RegExp.$1.length > 1) ? (RegExp.$1.length > 2 ? "\u661f\u671f": "\u5468") : "") + week[this.getDay() + ""]);
    }
    for (var k in o) {
        if (new RegExp("(" + k + ")").test(fmt)) {
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        }
    }
    return fmt;
}

/** 
 * 根据输入对象，返回一个映射函数 
 * 可以在表格 显示时使用 如： {title:'状态', field:'enabledShow', formatter:$lambdaMap({1:'无效', 0:'有效'})},
 */
var $lambdaMap = function(obj) {
	return function(key) {
		return obj[key];
	}
}
/**
 * 返回日期格式方法。
 * 可以在表格 显示时使用 如：{title:'创建日期', field:'createDate', formatter:$lambdaFormatDate()},
 */
var $lambdaFormatDate = function(format){
	format = format || 'yyyy-MM-d HH:mm:ss';
	var fn = function(value) {
		return (new Date(value)).format(format);
	}
	return fn;
}

/**
 * jQuery 插件添加，
 * 增加 函数式编程中常用的 reduce 函数。 
 * 用途： 对列表递减 进行求值
 * @list 要求值的列表
 * @init 初始值
 * @fn(pre, obj) 处理函数
 *   @pre 之前处理的结果
 *   @obj 当前对象
 *   @return 处理后的结果, 用来传递给下一次处理函数
 */
jQuery.reduce = function(list, init, fn) {
	$.each(list, function(i, obj){
		init = fn(init, obj);
	})
	return init;
}

/**
 * 字符串替换功能
 */
String.prototype.replaceAll = function (AFindText,ARepText){
	raRegExp = new RegExp(AFindText,"g");
	return this.replace(raRegExp,ARepText);
};

/**
 * 等待条件满足时运行程序 runFn 函数
 * @isStartFn 当函数返回true时开始运行，否者休眠
 * @runFn 满足条件后要运行的函数
 * @sleep 条件不满足时 sleep的时间单位（毫秒） 默认值 200
 * @maxTryCount 最大等待次数 默认值 20 次
 * 示例： 例如，要等待页面上 id=ttt 的元素存在后 才将元素内的 innerHTML 设置成指定值，可以这样写:
	$waitAndRun(
		function(){return document.getElementById("ttt") != null},
		function(){document.getElementById("ttt").innerHTML = "okkk"},
		500,
		100
	);
 */
var $waitAndRun = function (isStartFn, runFn, sleep, maxTryCount) {
	sleep = sleep || 200;
	maxTryCount = maxTryCount || 20;
	_$waitAndRunObject.push({
		isStartFn : isStartFn,
		runFn : runFn,
		sleep : sleep,
		maxTryCount : maxTryCount,
		currentCount : 0
	});
	_$waitAndRuner(_$waitAndRunObject.length - 1)
	
	var daemon = function(){
		if (!isStartFn()){
			setTimeout(daemon, sleep)
			return;
		}
	}
}

var _$waitAndRunObject = [];
var _$waitAndRuner = function(i){
	var obj = _$waitAndRunObject[i];
	if (!obj.isStartFn()){
		console.info('条件未满足');
		obj.currentCount++;
		if (obj.currentCount > obj.maxTryCount){
			console.info('尝试失败');
			return;
		}
		setTimeout('_$waitAndRuner(' + i + ')', obj.sleep)
		return;
	}
	console.info('满足条件');

	obj.runFn();
	_$waitAndRunObject[i] = null;
}

/**
 * web页面进入房间
 */
var enterroom_flag = 0;
function enterroom(roomId, target){
	var url = "guaguaroom:"+roomId+":1";
	var version;
	try{
		version = GetVersion();
		if(parseFloat(version)<3.0)	{
			document.getElementById("guagua_error_version").style.display = "block";
			document.getElementById("tip").style.display = "none";
			enterroom_flag = 1;	
			return;
		}
	}catch(e){
		//document.getElementById("guagua_error_not_setup").style.display = "block";
		//document.getElementById("tip").style.display = "none";		
		url = 'http://v.17guagua.com/'+roomId;
		window.open(url, target||"_blank");
		return;
	}
	window.location.href = url;
} 
function GetVersion(){
	var o = document.getElementById("gg");		
	return o.GetVersion();	
}

function getminute(millSecond){
	var result = millSecond/(1000*60) + "";
	return result.split(".")[0];
}
/**
* 创建新选项卡
* @param tabId 选项卡id
* @param title 选项卡标题
* @param url 选项卡远程调用路径
*/
function addTab(tabId,title,url){
	if (parent.$("#centerTab").tabs('exists', title)){
	parent.$("#centerTab").tabs('select', title);
	refreshTab({tabTitle:title, url:url});
	} else {
	var name = 'iframe_'+tabId;
	parent.$("#centerTab").tabs('add',{
	title: title,
	closable:true,
	cache : false,
	//注：使用iframe即可防止同一个页面出现js和css冲突的问题
	content : '<iframe name="'+name+'"id="'+tabId+'"src="'+url+'" width="100%" height="100%" frameborder="0" scrolling="auto" ></iframe>'
	}).tabs({
	// onSelect: function (title) {
	// var currTab = $('#centerTab').tabs('getTab', title);
	// var iframe = currTab.find('iframe')[0];
	// if(iframe != null && iframe.src != null){
	// var refresh_url = iframe.src;
	// iframe.contentWindow.location.href = refresh_url;
	// }
	// }
	});
	}
}
function refreshTab(cfg){
	var refresh_tab = cfg.tabTitle ? parent.$("#centerTab").tabs('getTab',cfg.tabTitle) : parent.$("#centerTab").tabs('getSelected');
	if(refresh_tab && refresh_tab.find('iframe').length > 0){
	var _refresh_ifram = refresh_tab.find('iframe')[0];
	var refresh_url = cfg.url ? cfg.url : _refresh_ifram.src;
	_refresh_ifram.contentWindow.location.href = refresh_url;
	}
}