<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>员工管理系统</h3>
	<hr>
	<table width="800px" cellpadding="8px" cellspacing="0" border="1px"
		align="center">
		<tr>
			<td>编号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>生日</td>
			<td>手机</td>
			<td>工作</td>
			<td>工资</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${emps }" var="emp">
		<tr>
			<td>${emp.eid }</td>
			<td>${emp.ename }</td>
			<td>${emp.sex }</td>
			<td>${emp.hiredate }</td>
			<td>${emp.mobile}</td>
			<td>${emp.job }</td>
			<td>${emp.salary }</td>
			<td>
				<a href="#">修改</a>
				<a href="#">删除</a>
			</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>