/**
 *  通用验证
 */

var _$Validate =  {
		
	/** 验证是否是正整数*/
	isDigit : function(str) {
		var reg = /^[1-9]+[0-9]*$/;
		return reg.test(str);
	},

	/** 正则表达式验证*/
	regex : function(regex, str) {
		return regex.test(str);
	},

	getStrLength : function(str){
		if (str == null || str == "") return 0;
		var len = 0;
		var cnstrCount = 0; 
		for(var i = 0 ; i < str.length ; i++){  
			if(str.charCodeAt(i)>255){   
				cnstrCount = cnstrCount + 1 ;
			}
		}
		len = str.length + cnstrCount;
		return len;
	},	
		
	isSame: function(id1, id2) {
		var var1 = $("#"+id1).val();
		var var2 = $("#"+id2).val();
	}
};






