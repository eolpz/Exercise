<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base
	href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/" />
<title>添加职务</title>
<link href="css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.3.1.js"></script>
</head>

<body class="emp_body">
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td class="topg"></td>
		</tr>
	</table>

	<table border="0" cellspacing="0" cellpadding="0" class="wukuang"
		width="100%">
		<tr>
			<td width="1%"><img src="images/tleft.gif" /></td>
			<td width="44%" align="left">[添加/编辑职务]</td>

			<td width="52%" align="right"><a href="javascript:void()"
				onclick="$('#addForm').submit()"><img
					src="images/button/save.gif" /></a> <a href="pos_list"><img
					src="images/button/tuihui.gif" /></a></td>
			<td width="3%" align="right"><img src="images/tright.gif" /></td>
		</tr>
	</table>
	<form action="pos_add" method="post" id="addForm">
		<table width="88%" border="0" class="emp_table" style="width: 80%;">
			<tr>
				<td width="10%">部门名称：</td>
				<td width="20%"><select onchange="changePost(this.value)"
					name="post.department.depId">
						<!-- console.log('depId = ' + this.value) -->
						<option>----请--选--择----</option>
						<c:forEach items="${depts }" var="dept">
							<option value="${ dept.depId}"
								${dept.depId==staff.post.department.depId ? "selected='selected'":"" }>${dept.depName }</option>
						</c:forEach>
				</select></td>
				<td width="8%">职务名称：</td>
				<td width="62%"><input type="text" name="postName" /></td>
			</tr>
		</table>
		<script type="text/javascript">
			function changePost(val) {
				$.get("pos_jsonData", {
					depId : val
				}, function(data) {
					console.log(data);
					 var posts = $("#postSelect");
					//保留otion元素
					/* posts.children(":gt(0)").remove(); */
					
				}, "json");

			}
		</script>

		}
	</form>
</body>
</html>
