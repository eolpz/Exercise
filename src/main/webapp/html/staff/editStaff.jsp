<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/"/>
<title>无标题文档</title>
<link href="css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.3.1.js"></script>
</head>

<body class="emp_body">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="images/tleft.gif"/></td>
    <td width="44%" align="left">[添加/编辑员工]</td>
   
    <td width="52%"align="right">
       <a href="javascript:void()" onclick="$('form:first').submit()"><img src="images/button/save.gif" /></a>
       <a href="#"><img src="images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<form action="stf_edit" method="post">
<input type="hidden" name="staffId" value="${staff.staffId }"/>
<table width="88%" border="0" class="emp_table" style="width:80%;">
 <tr>
    <td>登录名：</td>
    <td><input type="text" name="loginName" value="${staff.loginName }" readonly="readonly"/></td>
    <td>登陆密码：</td>
    <td><input type="text" name="loginPwd" value="${staff.loginPwd }" readonly="readonly"/></td>
  </tr>
 <tr>
    <td>姓名：</td>
    <td><input type="text" name="staffName" value="${staff.staffName }"/></td>
    <td>性别：</td>
    <td>
    	<input type="radio" name="gender" value="男" checked="checked"/>男
    	<input type="radio" name="gender" value="女" ${staff.gender=='女'? "checked='checked'":"" }/>女
    </td>
  </tr>
 <tr>
    <td width="10%">所属部门：</td>
    <td width="20%">
    <select onchange="changePost(this.value)" name="post.department.depId"><!-- console.log('depId = ' + this.value) -->
    <option>----请--选--择----</option>
    <c:forEach items="${depts }" var="dept">
    	<option value="${ dept.depId}" ${dept.depId==staff.post.department.depId ? "selected='selected'":"" }>${dept.depName }</option>
    </c:forEach>
    </select>
    </td>
    <td width="8%">职务：</td>
    <td width="62%"><select id="postSelect" name="post.postId">
    <option>----请--选--择----</option>
    	<c:forEach items="${posts }" var="post">
	    	<option value="${post.postId}" ${post.postId==staff.post.postId ? "selected='selected'":"" }>${post.postName }</option>
	    </c:forEach>
    </select></td>
  </tr>
  <tr>
    <td width="10%">入职时间：</td>
    <td width="20%"><input type="text" name="onDutyDate" value="${staff.onDutyDate }"/></td>
    <td width="8%"></td>
    <td width="62%"></td>
  </tr>
</table>
</form>
<script type="text/javascript">
function changePost(val){
	$.get("stf_jsonData",
			{depId:val},
			function(data){
				console.log(data);
				var posts = $("#postSelect");
				//保留第一个子元素
				posts.children(":gt(0)").remove();
				$.each(data,function(i,obj){
					var opt = "<option value='"+obj.postId+"'>"+obj.postName+"</option>";
					posts.append(opt);
				});
			},
			"json");
	
}
</script>
</body>
</html>
