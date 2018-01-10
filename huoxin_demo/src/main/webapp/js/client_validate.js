//是否为空校验
function isEmpty(s) {
	var lll=trim(s);
	if( lll == null || lll.length == 0 )
		return true;
	else
		return false;
}

//删除字符串左边的空格
function ltrim(str) { 
	if(str.length==0)
		return(str);
	else {
		var idx=0;
		while(str.charAt(idx).search(/\s/)==0)
			idx++;
		return(str.substr(idx));
	}
}

//删除字符串右边的空格
function rtrim(str) { 
	if(str.length==0)
		return(str);
	else {
		var idx=str.length-1;
		while(str.charAt(idx).search(/\s/)==0)
			idx--;
		return(str.substring(0,idx+1));
	}
}

//删除字符串左右两边的空格
function trim(str) { 
	return(rtrim(ltrim(str)));
}

/*日期相比较*/
function compareDate(date1, date2) {
	if (trim(date1) == trim(date2))  	
		return 0;
	if (trim(date1) > trim(date2))  	
		return 1;
	if (trim(date1) < trim(date2))  	
		return -1;
}
 function ispwd(strTemp){
	 var re=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9a-zA-Z]{8,16}$/;
	  if(re.test(strTemp))
	  return false;
	 else
	  return true;
 }
//校验是否是Email
function isEmail(eml) {
	  var re=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	  if(re.test(eml))
	  return false;
	 else
	  return true;
}

//是否是电话号
function isTel(tel) {
	//var re=new RegExp("((d{3,4})|d{3,4}-)?d{7,8}$");
    var mobile = /^1[3|5|8]\d{9}$/ ;
    var phone = /^0\d{2,3}-?\d{7,8}$/;
	if(mobile.test(tel) || phone.test(tel))
		return false;
	else
		return true;
	
}

//校验是否是实数
function isNumber(num) {
	var re=new RegExp("^-?[\\d]*\\.?[\\d]*$");
	if(re.test(num))
		return(!isNaN(parseFloat(num)));
	else
		return(false);
}

//校验是否是整数
function isInteger(num)	{
	var re=new RegExp("^-?[\\d]*$");
	if(re.test(num))
		return(!isNaN(parseInt(num)));
	else
		return(false);
}
//中文、英文
function isChinese(strTemp)	{
	var re=new RegExp("^[\u4E00-\u9FA5A-Za-z]+$");
	if(re.test(rtrim(strTemp)))
		return false;
	else
		return true;
}

//数字、英文
function isNumEnglist(strTemp)	{
	var re=new RegExp("^[A-Za-z0-9]+$");
	if(re.test(rtrim(strTemp)))
		return false;
	else
		return true;
}
//中文、英文、数字包括下划线
function isUnderLine(strTemp)	{
	var re=new RegExp("^[\u4E00-\u9FA5A-Za-z0-9_]+$");
	if(re.test(rtrim(strTemp)))
		return false;
	else
		return true;
}

//英文、数字包括下划线
function isEnglistUnderLine(strTemp)	{
	var re=new RegExp("^[A-Za-z0-9_]+$");
	if(re.test(rtrim(strTemp)))
		return false;
	else
		return true;
}
//中文、英文、数字不包括下划线
function isNoUnderLine(strTemp)	{
	var re=new RegExp("^[\u4E00-\u9FA5A-Za-z0-9]+$");
	if(re.test(rtrim(strTemp)))
		return false;
	else
		return true;
}
//中文、数字
function ischineseNum(strTemp)	{
	var re=new RegExp("^[\u4E00-\u9FA50-9]+$");
	if(re.test(rtrim(strTemp)))
		return false;
	else
		return true;
}
//判断数字及特征符号
function isNumOrSpecialSign(strTemp){
	var re=new RegExp("^[0-9`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）&mdash;—|{}【】‘；：”“'。，、？]*$");
	if(re.test(rtrim(strTemp)))
		return false;
	else
		return true;
}

//数字
function isNum(strTemp)	{
	var re=new RegExp("^[0-9]*$");
	if(re.test(rtrim(strTemp)))
		return true;
	else
		return false;
}

//特殊符号
function stripscript(strTemp) 
{ 
	var re = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）&mdash;—|{}【】‘；：”“'。，、？]");
	if(re.test(rtrim(strTemp)))
		return true;
	else
		return false;
}

//判断字符长度 不超过len字符
function checkStrLength(strTemp,len){
	if(funcheckLength(rtrim(strTemp))>len){	
		return true;
	}else{
		return false;
	}
}


//根据汉字判断长度
function funcheckLength(strTemp) {
	var i,sum;
	sum=0;
	for(i=0;i<rtrim(strTemp).length;i++) {
		if ((strTemp.charCodeAt(i)>=0) && (strTemp.charCodeAt(i)<=255)) {
			sum=sum+1;
		} else {
			sum=sum+2;
		}
	}
	return sum;
}

//身份证号
function iscardno(strTemp) 
{ 
	var re = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
	if(re.test(rtrim(strTemp)))
		return false;
	else
		return true;
}

	