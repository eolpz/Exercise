<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>查看学生</title>
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<link href="css/sys.css" type="text/css" rel="stylesheet" />

</head>

<body >
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%" bgcolor="gray">
  <tr>
    <td width="1%"><img src="images/tleft.gif"/></td>
    <td width="39%" align="left">[在校学生管理]</td>
   
    <td width="57%"align="right">
       <a href="#"><img src="images/button/gaojichaxun.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="images/result.gif"/></td>
  </tr>
</table>
  <c:forEach items="${pager.page } " var="student"></c:forEach>
<table width="88%" border="0" class="emp_table" style="width:80%;">
  

  <tr >
	<td >姓名: ${student.name }</td>
	</tr>
	
    <tr>
    <td >入学: ${student.clazz.btime }</td>
    </tr>
    
   <tr>
   <td >班级: ${student.clazz.cname }</td>
   </tr>
   <tr>
   <td >QQ: ${student.qq }</td>
   </tr> 
    <tr>
    <td >联系电话: ${student.telephone }</td>
    </tr>
   <tr>
   <td >状态: ${student.status }</td>
   </tr>
 
</table>

</body>
</html>
