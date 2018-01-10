/// <reference path="jquery-1[1].3.2-vsdoc2.js" />

//��һ���˵�
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

//�󶨶����˵�
function loadModule(obj, subsysid) {
	var html = "";
	//����Ѵ�����ģ��
	if (subsysid) {
		var subSysList = result.subSysList;
		if (subSysList.length != 0) {
			//��ȡģ���б�
			var moduleList = getModuleBySysId(subsysid, subSysList);
			jQuery.each(moduleList, function() {
				html += "<li><a  href=\"###\" sysid=\"" + subsysid + "\"  modulePic =\"" + this.modulePic + "\"  moduleid=\"" + this.moduleId + "\"  >" + this.name + "</a></li>";
			});
			$("#headtabbox").empty().append(html);
		}
	}
	if (!html) {
		//��û�ж����˵�����
		$("#layer1Wrap").hide();
	}
}

//�������ļ��˵�
function loadMenu(sysid, moduleId) {
	var subSysList = result.subSysList;
	if (subSysList.length != 0) {
		var html = "";
		//�ڶ����Ӳ˵�ͨ��ϵͳid���
		var moduleList = getModuleBySysId(sysid, subSysList);
		var menuList3 = "";
		var menuList4 = "";
		var htmlH = "";
		//�������Ӳ˵�ͨ��ģ��id���
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
				//���ļ��Ӳ˵�ͨ��ǰһ���Ӳ˵����
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

//��ȡģ��by��ϵͳid
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
//��ȡ�˵�byģ��id
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
//��ȡ�˵�by���˵�id
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
// �´�һ��tabҳ
// <param name="syssubid">��ϵͳid</param>
// <param name="moduleid">ģ��id</param>
// <param name="menuid">��ǰ�˵�id</param>
function openNewTab(syssubid, moduleid, menuid, menuname, menuurl,menupath)
{
	if(typeof(menupath)=="undefined"){
		menupath = menuname;
	}
    //tab �Ѿ�����
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
        //��tab����max������������ǰ���tab
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
    
    //��ΰ��Ӳ˵�������־��¼���� 2012.01.06
	var menuLogUrl = "login!menuLog.action";
	//TODO:gaohongtao �˵���־�Ժ�ʵ��
	//menuLog(menuLogUrl,menuid,menuname);
    
}
//�л��ײ�tab
// <param name="obj">��ǰ�¼�����</param>
// <param name="syssubid">��ϵͳid</param>
// <param name="moduleid">ģ��id</param>
// <param name="menuids">���в˵�id</param>
// <param name="menuid">��ǰ�˵�id;openTab_1:�����ҵĳ��ò˵�</param>
function openNewPage(obj, syssubid, moduleid, menuids, menuid, menuname, menuurl)
{
    $("#tabBox li").removeClass("sed");
    $(obj).parent().parent().addClass("sed");
    changeIframe(menuid, menuurl,'1',menuname);
}



//ѡ�е�ǰtab��Ӧ��iframe
function changeIframe(menuid, menuurl,type,menuName)
{
	//type   1:�л�tabҳ�� 2������˵�
    if ($("#content iframe[name=" + menuid + "]").length > 0 ){
    	if(type == 2){
    		$("#content iframe[name=" + menuid + "]").attr("src",menuurl);//��iframe��src��ֵ�Ļ���menuurl
    	}
    	//menuid == "common02" �������ò˵�
    	if(menuid == "common02"){
    	   $("#content iframe[name=body_content]").removeClass("hide");//����ҳ��iframe����
    	   $("#content .subiframe").removeClass("hide");
           $("#content iframe[name=common02]").addClass("hide");//�����ò˵���iframe����
    	}else if ($("#content iframe[name=" + menuid + "]").parent().parent().css("display") == "none"){
           $("#content iframe[name=body_content]").removeClass("hide");//����ҳ��iframe����
           $("#content iframe[name=common02]").removeClass("hide");//�����ò˵���iframe����
           $("#content .subiframe").removeClass("hide");
           $("#content iframe[name=" + menuid + "]").parent().parent().addClass("hide");//��iframe��nameΪmenuid�ĸ��׵ĸ��׵Ľڵ�����
        }
    }
    else
    {
        $("#workspaceId").removeClass("hide");//Ŀ�ģ���IDΪworkspaceId��iframe����
        $("#content iframe[name=common02]").removeClass("hide"); //Ŀ�ģ����ò˵���iframe
        $("#content .subiframe").removeClass("hide"); // ����IDΪcontent��Ԫ������������ʽΪsubiframe��div
        
        //$iframehead1 �� $iframehead2  ��ϵͳ�˵���Χ���
        var $iframehead1= "<div class=\"subiframe hide\"><div class=\"subsystem\"><b class=\"b1\"></b><b class=\"b2\"></b><b class=\"b3\"></b><b class=\"b4\"></b><div class=\"subsystemTitle\">"+menuName+"</div>"; 
        var $iframehead2="<div class=\"window_titleButtonBar\"><a hred =\"###\" class=\"pageClose\" title=\"�ر�\" onclick=\"deletePageTab('"+menuurl+"');\" ></a></div></div><div class=\"iframeborder\">";
        //menuid == "common02"  ��ʾ�ǳ��ò˵�
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


//ɾ��tabҳ��
function deletePageTab(menuurl){
    //�����ǰ����ѡ��״̬��ֱ���Ƴ�
    var menuid = $("#tabBox li input[value=" + menuurl + "]").parent().attr("id");
    if (!$("#tabBox li[id=" + menuid + "]").hasClass("sed")){
        $("#tabBox li[id=" + menuid + "]").remove();
        $("#content iframe[name=" + menuid + "]").parent().parent().remove();
    }
    else
    {
        //�Ƴ���ǰ��ǩ��ͬʱѡ�е�ǰ���򿪵ı�ǩ
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
    //�����ƶ�
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
    //�����ƶ�
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



//comOpenNewIFrame Ϊ������ҳ�ͳ��ò˵��ṩ
function comOpenNewIFrame(syssubid, moduleid, menuid, menuname, menuurl){
	if ($("#tabBox li").length > 0){
        $("#tabBox li").removeClass("sed");
    }
    
    //menuid == "body_content"  ˵���ǵ�����ҳ
    if(menuid == "body_content"){
    	$("#content iframe[name=" + menuid + "]").attr("src",menuurl);
    	$("#content iframe[name=common02]").removeClass("hide");
    	$("#content .subiframe").removeClass("hide");
    	$("#content iframe[name=" + menuid + "]").addClass("hide");
    }else{
    	changeIframe(menuid, menuurl,'2',menuname);
    }
	
}  

// ��¼�˵���־ ��POST��ʽ���Է�ֹ��������
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
	//TODO:gaohongtao ��֪���Ǹ�ʲô��
//	$.ajax({
//  		url:'${pageContext.request.contextPath}/staffCustomizer!defaultLayout.action?t='+Math.random(),
//  			dataType:'html'
//  		});
  	//ˢ��ҳ��
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
 * ����ָ��URL��ʾtabҳ��
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
