<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/sys.css" type="text/css" rel="stylesheet" />
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/"/>
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
    <td width="44%" align="left">[添加学员流失]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="images/button/close.gif" class="img"/></a>-->
       <a href="#"><img src="images/button/save.gif" /></a>
       <a href="#"><img src="images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<form action="stu_" method="post" id="editForm">
<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
	<c:forEach items="${pager.data }" var="student">
    <td width="9%">学生：</td>
    <td width="19%"><input type="text"  value="${student.name }"/></td>
    <td width="8%">QQ：</td>
    <td width="64%"><input type="text" value="${student.refer.qq }" /></td>
  </tr>
  <tr>
    <td>联系电话：</td>
    <td><input type="text" value="${student.telephone }"/></td>
    <td>就读时间：</td>
    <td><input type="text" value="${student.clazz.btime }"/></td>
  </c:forEach>
  </tr>
  <tr>
  <c:forEach items="${pager.data }" var="runOff">
    <td>流失时间：</td>
    <td><input type="text" value="${runOff.creattime }"/></td>
    <td>业务人员：</td>
    <td><input type="text" value="${runOff.staff.staffName }"/></td>
  </tr>
  <tr>
    <td>是否退款：</td>
    <td><input type="text" value="${runOff.isRefund }"/></td>
    <td>退款金额：</td>
    <td><input type="text" value="${runOff.refundAmount }"/></td>
    </c:forEach>
  </tr>
  <tr>
    <td>流失类型：</td>
    <td><input type="text" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>流失原因：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4"><textarea cols="60" rows="10"></textarea></td>
  </tr>
</table>
</form>
</body>
</html>
