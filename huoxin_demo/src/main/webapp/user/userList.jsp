<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/common.jsp"%>
<html>
<head>
<script type="text/javascript" src="${ctx}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${ctx}/js/jPaginate/jquery.paginate.js"></script>
<script type="text/javascript" src="${ctx}/js/ajax_util.js"></script>
<script type="text/javascript" src="${ctx}/js/common.js"></script>
<script type="text/javascript" src="${ctx}/js/StringBuffer.js"></script>
</head>
<body>

	<form id="myform" method="post" id="searchForm" name="searchForm">
		<table>
			<c:forEach items="${weightList}" var="item" varStatus="status">
				<tr>
					<td><input type="text" name="passWord" id="passWord" value="${item.passWord}"/></td>
					<td><input type="text" name="userName" id="userName" value="${item.userName}"/></td>
					<td><button type="button"
							onclick="editInput('${item.id}')">修改</button></td>
				</tr>
			</c:forEach>
		</table>
	</form>


	<script type="text/javascript">
		function editInput(id){
			var passWord = $("#passWord").val();
			var userName = $("#userName").val();
			editKeyword(id,passWord,userName);
		}
	
	
		//编辑
		function editKeyword(id,passWord, userName) {
			ajax_request("${ctx}/login/updateUser", {
				id:id,
				passWord : passWord,
				userName : userName
			}, function(result) {
				var succ = result.succ;
				if (succ == false) {
					alert(result.msg);
					return;
				}
				$('#myform').attr('action', '${ctx}/login/query');
				$('#myform').submit();
			}, false);
		}
	</script>


</body>
</html>