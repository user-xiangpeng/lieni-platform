/// <reference path="jquery-1[1].3.2-vsdoc2.js" />

//绑定一级菜单
function loadSubSys() {
	var subSysList = result.subSysList;

	var html = "";
	if (subSysList.length != 0) {
		jQuery.each(subSysList, function() {
			name = this.name;
			html += "<span><a href=\"###\" sysid=\"" + this.sysId + "\" >" + name + "</a></span>";
		});
	}
	$("#layerWrap").empty().append(html);
}

//绑定二级菜单
function loadModule(obj, subsysid) {
	var html = "";
	//如果已存在子模块
	if (subsysid) {
		var subSysList = result.subSysList;
		if (subSysList.length != 0) {
			//获取模块列表
			var moduleList = getModuleBySysId(subsysid, subSysList);
			jQuery.each(moduleList, function() {
				html += "<li><a  href=\"###\" sysid=\"" + subsysid + "\"  modulePic =\"" + this.modulePic + "\"  moduleid=\"" + this.moduleId + "\"  >" + this.name + "</a></li>";
			});
			$("#headtabbox").empty().append(html);
		}
	}
	if (!html) {
		//如没有二级菜单隐藏
		$("#layer1Wrap").hide();
	}
}

//绑定三，四级菜单
function loadMenu(sysid, moduleId) {
	var subSysList = result.subSysList;
	if (subSysList.length != 0) {
		var html = "";
		//第二级子菜单通过系统id获得
		var moduleList = getModuleBySysId(sysid, subSysList);
		var menuList3 = "";
		var menuList4 = "";
		var htmlH = "";
		//第三级子菜单通过模块id获得
		menuList3 = getMenuByModuleId(moduleId, moduleList);
		jQuery.each(menuList3, function(n) {
			if (this.menuType == 1) {
				htmlH += "<li><a href=\"###\" onclick=\"openNewTab('" + sysid + "','" + moduleId + "','" + this.menuId + "','" + this.name + "','" + this.menuUrl + "','" + this.menuPath + "')\">" + titleeq20(this.name) + "</a></li>";
				if (n != 0 && (n + 1) % 5 == 0 && n < menuList3.length - 1) {
					html += "<div class=\"tab_four\" ><h1></h1><ul>" + htmlH + "</div>";
					htmlH = "";
				} else if (n == menuList3.length - 1) {
					html += "<div class=\"tab_four\" ><h1></h1><ul>" + htmlH + "</div>";
					htmlH = "";
				}

			} else {
				html += "<div class=\"tab_four\"><h1>" + this.name + "</h1><ul>";
				var htmlmore = "";
				//第四级子菜单通过前一级子菜单获得
				jQuery.each(this.children, function(i) {
					if (i < 5) {
						html += "<li><a href=\"###\" onclick=\"openNewTab('" + sysid + "','" + moduleId + "','" + this.menuId + "','" + this.name + "','" + this.menuUrl + "','" + this.menuPath + "')\">" + titleeq20(this.name) + "</a>";
					} else {
						if (i % 5 == 0) {
							if (i > 5) {
								htmlmore += "</ul></div>";
							}
							htmlmore += "<div class=\"tab_four\" ><h1></h1><ul>";
						}
						htmlmore += "<li><a href=\"###\" onclick=\"openNewTab('" + sysid + "','" + moduleId + "','" + this.menuId + "','" + this.name + "','" + this.menuUrl + "','" + this.menuPath + "')\">" + titleeq20(this.name) + "</a>";
					}
				});
				html += "</ul></div>";
				if (htmlmore.length > 0) {
					html += htmlmore + "</ul></div>";
				}
			}
		});
		$("#layer3Wrap").empty().append(html);
	}
}

function getTitle(name) {
	if (name.length > 8) {
		return name.substring(0, 6) + "...";
	} else {
		return name;
	}
}

//获取模块by子系统id
function getModuleBySysId(subsysid, subSysList)
{
    var moduleList = "";
    jQuery.each(
                subSysList,
                function()
                {
                    if (subsysid == this.sysId)
                    {
                        moduleList = this.moduleList;
                        return false;
                    }
                }
               );
    return moduleList;
}
//获取菜单by模块id
function getMenuByModuleId(moduleId, moduleList)
{
    var menuList = "";
    jQuery.each(
                moduleList,
                function()
                {
                    if (moduleId == this.moduleId)
                    {
                        menuList = this.menuList;
                        return false;
                    }
                }
               );
    return menuList;
}
//获取菜单by父菜单id
function getMenuByMenuId(menuId, pmenuList)
{
    var childrenList = "";
    jQuery.each(
                pmenuList,
                function()
                {
                    if (menuId == this.menuId)
                    {
                        childrenList = this.children;
                        return false;
                    }
                }
               );
    return childrenList;
}
// 新打开一个tab页
// <param name="syssubid">子系统id</param>
// <param name="moduleid">模块id</param>
// <param name="menuid">当前菜单id</param>
function openNewTab(syssubid, moduleid, menuid, menuname, menuurl,menupath)
{
	if(typeof(menupath)=="undefined"){
		menupath = menuname;
	}
    //tab 已经存在
    if ($("#tabBox li input[value=" + menuurl + "]").length > 0)
    {
        $("#tabBox li").removeClass("sed");
        $("#tabBox li input[value=" + menuurl + "]").parent().addClass("sed");
        menuid = $("#tabBox li input[value=" + menuurl + "]").parent().attr("id");
        changeIframe(menuid, menuurl,'2',menupath);
        
    }
    else
    {
    	var tabPateList  =  $("#tabBox li");
    	jQuery.each(
    		tabPateList,
    		function(n){
    			var tbc = $("#tabBox li:eq("+n+") input").val();
    			if(tbc != undefined && menuurl.substring(0,4) == "/BSS" && tbc.substring(0,4) == "/BSS" ){
    				  var menuidc = $("#tabBox li:eq("+n+")").attr("id");
    				  $("#tabBox li[id=" + menuidc + "]").remove();
       				  $("#content iframe[name=" + menuidc + "]").remove();
    			}
    		}
    	);

    	
        $("#tabBox li").removeClass("sed");
        if (syssubid == 0)
        {
            var tabid = $("#tabBox li[tabnum='othertab']:last").attr("id");
            if (tabid)
            {
                var idnum = tabid.split("_")[1];
                menuid = "openTab_" + (parseInt(idnum) + 1);
            }
            else
            {
                menuid = "openTab_1";
            }
            $("#tabBox ul").append("<li class=\"sed\" id=\"" + menuid + "\" sysid=\"" + syssubid + "\" moduleid=\"" + moduleid + "\" menuname=\"" + menuname + "\" tabnum=\"othertab\" ><span><a href=\"###\" onclick=\"openNewPage(this,'" + syssubid + "','" + moduleid + "','0','" + menuid + "','" + menuname + "','" + menuurl + "')\">" + menuname + "</a><a href=\"###\" class=\"del\" onclick=\"deletePageTab('" + menuurl + "')\"></a></span><input type=\"hidden\" value=\"" + menuurl + "\"/></li>");
        }
        else
        {
            $("#tabBox ul").append("<li class=\"sed\" id=\"" + menuid + "\" sysid=\"" + syssubid + "\" moduleid=\"" + moduleid + "\" menuname=\"" + menuname + "\"><span><a href=\"###\" onclick=\"openNewPage(this,'" + syssubid + "','" + moduleid + "','0','" + menuid + "','" + menuname + "','" + menuurl + "')\">" + menuname + "</a><a href=\"###\" class=\"del\" onclick=\"deletePageTab('" + menuurl + "')\"></a></span><input type=\"hidden\" value=\"" + menuurl + "\"/></li>");
        }
        //当tab超过max数量，隐藏最前面的tab
        var liindex = $("#" + menuid).index() + 1;
        var boxWidth = $("#tabBox").width();
        var maxCount = Math.floor(boxWidth / 115);
        if (liindex > maxCount)
        {
            var leftpx = -115 * (liindex - maxCount)
            $("#tabBox ul").css("margin-left", leftpx + "px");
            $("#goAhead").show();

        } else
        {
            $("#goAhead,#goNext").hide();
        }
        changeIframe(menuid, menuurl,'2',menupath); 
    }
    
    //孙伟添加菜单访问日志记录功能 2012.01.06
	var menuLogUrl = "login!menuLog.action";
	//TODO:gaohongtao 菜单日志以后实现
	//menuLog(menuLogUrl,menuid,menuname);
    
}
//切换底部tab
// <param name="obj">当前事件对象</param>
// <param name="syssubid">子系统id</param>
// <param name="moduleid">模块id</param>
// <param name="menuids">所有菜单id</param>
// <param name="menuid">当前菜单id;openTab_1:设置我的常用菜单</param>
function openNewPage(obj, syssubid, moduleid, menuids, menuid, menuname, menuurl)
{
    $("#tabBox li").removeClass("sed");
    $(obj).parent().parent().addClass("sed");
    changeIframe(menuid, menuurl,'1',menuname);
}



//选中当前tab对应的iframe
function changeIframe(menuid, menuurl,type,menuName)
{
	//type   1:切换tab页， 2，点击菜单
    if ($("#content iframe[name=" + menuid + "]").length > 0 ){
    	if(type == 2){
    		$("#content iframe[name=" + menuid + "]").attr("src",menuurl);//将iframe的src的值改换成menuurl
    	}
    	//menuid == "common02" 单击常用菜单
    	if(menuid == "common02"){
    	   $("#content iframe[name=body_content]").removeClass("hide");//将首页的iframe隐藏
    	   $("#content .subiframe").removeClass("hide");
           $("#content iframe[name=common02]").addClass("hide");//将常用菜单的iframe隐藏
    	}else if ($("#content iframe[name=" + menuid + "]").parent().parent().css("display") == "none"){
           $("#content iframe[name=body_content]").removeClass("hide");//将首页的iframe隐藏
           $("#content iframe[name=common02]").removeClass("hide");//将常用菜单的iframe隐藏
           $("#content .subiframe").removeClass("hide");
           $("#content iframe[name=" + menuid + "]").parent().parent().addClass("hide");//将iframe的name为menuid的父亲的父亲的节点隐藏
        }
    }
    else
    {
        $("#workspaceId").removeClass("hide");//目的：将ID为workspaceId的iframe隐藏
        $("#content iframe[name=common02]").removeClass("hide"); //目的：常用菜单的iframe
        $("#content .subiframe").removeClass("hide"); // 隐藏ID为content的元素下面所有样式为subiframe的div
        
        //$iframehead1 与 $iframehead2  子系统菜单外围框架
        var $iframehead1= "<div class=\"subiframe hide\"><div class=\"subsystem\"><b class=\"b1\"></b><b class=\"b2\"></b><b class=\"b3\"></b><b class=\"b4\"></b><div class=\"subsystemTitle\">"+menuName+"</div>"; 
        var $iframehead2="<div class=\"window_titleButtonBar\"><a hred =\"###\" class=\"pageClose\" title=\"关闭\" onclick=\"deletePageTab('"+menuurl+"');\" ></a></div></div><div class=\"iframeborder\">";
        //menuid == "common02"  表示是常用菜单
     	if(menuid == "common02"){
     		$("<iframe frameborder=\"no\" scrolling=\"auto\" class=\"content_iframe hide\" src=\"" + menuurl + "\" name=\"" + menuid + "\"></iframe>").insertBefore("#scriptbox");
     	}else{
			$($iframehead1+$iframehead2+"<iframe frameborder=\"no\" scrolling=\"auto\" class=\"content_iframe hide\" src=\"" + menuurl + "\" name=\"" + menuid + "\"></iframe></div></div>").insertBefore("#scriptbox");
     	}
        if ($.browser.msie && ($.browser.version == "6.0") && !$.support.style)
        {
            $("#content iframe[name=" + menuid + "]").attr("src", menuurl);
        }
    }
    
    $("#layerWrap  span").removeClass("sed");
    $("#layer1Wrap").hide();
    $("#layer2Wrap").hide();
    $("#content").children().css("display","");
    
}


//删除tab页面
function deletePageTab(menuurl){
    //如果当前不是选中状态，直接移除
    var menuid = $("#tabBox li input[value=" + menuurl + "]").parent().attr("id");
    if (!$("#tabBox li[id=" + menuid + "]").hasClass("sed")){
        $("#tabBox li[id=" + menuid + "]").remove();
        $("#content iframe[name=" + menuid + "]").parent().parent().remove();
    }
    else
    {
        //移除当前标签，同时选中当前最后打开的标签
        $("#tabBox li[id=" + menuid + "]").remove();
        $("#content iframe[name=" + menuid + "]").parent().parent().remove();
        var lasttab = $("#tabBox li:last-child");
        lasttab.addClass("sed");
        var id = lasttab.attr("id");
        if(typeof(id) == "undefined"){
        	id="body_content";
        }
        if(id != "body_content"){
        	 $("#content iframe[name=" + id + "]").parent().parent().addClass("hide");
        }else{
        	$("#content iframe[name=" + id + "]").addClass("hide");
        }
    }
    var menuindex = $("#tabBox ul").children().length;
    var domwidth = $("#tabBox").width()
    var maxCount = Math.floor(domwidth / 115);
    var divleft = Math.abs(parseInt($("#tabBox ul").css("margin-left")));
    var hidCount = Math.floor(divleft / 115);
    if (menuindex > maxCount && hidCount <=(menuindex - maxCount))
    {
        $("#goAhead").show();
    }
    if (divleft > 115)
    {
        $("#tabBox ul").animate({ marginLeft: (-divleft + 115) + "px" },300);
    }
    else
    {
        $("#tabBox ul").animate({ marginLeft: "0px" },300);
        $("#goAhead").hide();
    }
}

function meauMove()
{
    //往左移动
    $("#goAhead").click(function()
    {
        var mleft = Math.abs(parseInt($("#tabBox ul").css("margin-left")));
        $("#goNext").show();
        if (mleft > 115)
        {
            $("#tabBox ul").animate({ marginLeft: (-mleft + 115) + "px" },300);
        }
        else
        {
            $("#tabBox ul").animate({ marginLeft: "0px" },300);
            $("#goAhead").hide();
        }
    });
    //往右移动
    $("#goNext").click(function()
    {
        $("#goAhead").show();
        var menuindex = $("#tabBox ul").children().length;
        var domwidth = $("#tabBox").width()
        var maxCount = Math.floor(domwidth / 115);
        var divleft = Math.abs(parseInt($("#tabBox ul").css("margin-left")));
        var hidCount = Math.floor(divleft / 115);
        if (menuindex > maxCount)
        {
            if (hidCount < (menuindex - maxCount))
            {
                $("#tabBox ul").animate({ marginLeft: -(divleft + 115) + "px" },300);
                if (hidCount == menuindex - maxCount-1)
                {
                    $("#goNext").hide();
                }
            }
        }
    });
}

function tabGoBack()
{
    var divleft = Math.abs(parseInt($("#layer3Wrap").css("margin-left")));
    if (divleft > 250)
    {
        $("#layer3Wrap").animate({ marginLeft: -(divleft - 250) + "px" },100);
    }
    else
    {
        $("#layer3Wrap").animate({marginLeft: "0px"},100);
    }
}

function tabGoForword()
{
    var menuindex = $("#layer3Wrap").children().length;
    var domwidth = $("#layer3Wrapbox").width()
    var maxCount = Math.floor(domwidth / 250);
    var divleft = Math.abs(parseInt($("#layer3Wrap").css("margin-left")));
    var hidCount = Math.floor(divleft / 250);
    if (hidCount < (menuindex - maxCount))
    {
        $("#layer3Wrap").animate({ marginLeft: -(divleft + 250) + "px" },100);
    }
}



//comOpenNewIFrame 为单击首页和常用菜单提供
function comOpenNewIFrame(syssubid, moduleid, menuid, menuname, menuurl){
	if ($("#tabBox li").length > 0){
        $("#tabBox li").removeClass("sed");
    }
    
    //menuid == "body_content"  说明是单击首页
    if(menuid == "body_content"){
    	$("#content iframe[name=" + menuid + "]").attr("src",menuurl);
    	$("#content iframe[name=common02]").removeClass("hide");
    	$("#content .subiframe").removeClass("hide");
    	$("#content iframe[name=" + menuid + "]").addClass("hide");
    }else{
    	changeIframe(menuid, menuurl,'2',menuname);
    }
	
}  

// 记录菜单日志 用POST方式可以防止乱码问题
function menuLog(menuLogUrl,menuId,menuName)
{
	$.ajax({
	  type: "POST",
	  url: menuLogUrl,
	  data: "menuId="+menuId+"&menuName="+encodeURIComponent(menuName),
	  success: function(msg){
	  },
	  error: function(msg)
	  {
	  }
	});
}

function delThisPageTab(){
	var url = $("#tabBox .sed input[type=hidden]").val();
	deletePageTab(url);
}

function defaultLayout(){
	//TODO:gaohongtao 不知道是干什么的
//	$.ajax({
//  		url:'${pageContext.request.contextPath}/staffCustomizer!defaultLayout.action?t='+Math.random(),
//  			dataType:'html'
//  		});
  	//刷新页面
  	var src=$('#workspaceId').attr('src');
  	$('#workspaceId').attr('src',src);
}



function titleeq20(obj){
	if(obj.length > 20){
		return obj.substring(0,20);
	}
	return obj;
}

/**
 * 根据指定URL显示tab页面
 * 
 * @param {} url
 */
function openPageTBU(url){
	
	
	 var menuid = $("#tabBox li input[value=" + url + "]").parent().attr("id");
	 if(typeof(menuid) != 'undefined'){
	 	 $("#content .subiframe").removeClass("hide");
	     $("#content iframe[name=" + menuid + "]").parent().parent().addClass("hide");
	     $("#content iframe[name=" + menuid + "]").attr("src",url);
	     $("#tabBox li").removeClass("sed");
	     $("#tabBox li input[value=" + url + "]").parent().addClass("sed");
	 }
}
