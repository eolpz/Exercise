<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改流失</title>
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/"/>

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
    <td width="44%" align="left">[编辑学员流失]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="images/button/close.gif" class="img"/></a>-->
       <a href="javascript:void()" onclick="$('#editForm').submit()"><img src="images/button/save.gif" /></a>
       <a href="run_list"><img src="images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<form action="run_edit" method="post" id="editForm">
<input  type="hidden" name="runoffId" value="${runoff.runoffId }"/>
<input  type="hidden" name="student.studentId" value="${runoff.student.studentId }"/>
<input  type="hidden" name="staffId" value="${runoff.staff.staffId }"/>

<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
    <td width="9%">学生：</td>
    <td width="19%"><input type="text" name="name" value="${runoff.student.name }" readonly="readonly"/></td>
    <td width="8%">QQ：</td>
    <td width="64%"><input type="text" name="qq" value="${runoff.student.QQ }"readonly="readonly"/></td>
  </tr>
  <tr>
    <td>联系电话：</td>
    <td><input type="text" name="telephone" value="${runoff.student.telephone }"readonly="readonly"/></td>
    <td>就读时间：</td>
    <td><input type="text" name="beginTime" value="${runoff.student.clazz.beginTime }"readonly="readonly"/></td>
  </tr>
  <tr>
    <td>流失时间：</td>
    <td><input type="text" name="createDate" value="${runoff.createDate }"/></td>
    <td>业务人员：</td>
    <td><input type="text" name="staffName" value="${runoff.staff.staffName }"readonly="readonly"/></td>
  </tr>
  <tr>
    <td>是否退款：</td>
    <td><input type="text" name="isRefound" value="${runoff.isRefound }"/></td>
    <td>退款金额：</td>
    <td><input type="text" name="refoundAmount" value="${runoff.refoundAmount }"/></td>
  </tr>
 
  <tr>
    <td>流失原因：</td>
      <td><input type="text" name="remark" value="${runoff.remark }"/></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
 
</table>
</form>

</body>
</html>
