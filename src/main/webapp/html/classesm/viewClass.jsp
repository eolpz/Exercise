<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<base href="http://${pagerContext.request.serverName}:${pagerContext.request.serverPort}${pagerContext.request.contextPath}/"/>
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
    <td width="44%" align="left">[查看班级]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="images/button/close.gif" class="img"/></a>-->
       <a href="cla_list"><img src="images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<c:forEach items="${pager.page }" var="clazz"></c:forEach>
<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
    <td width="10%">班级名称：</td>
      <td width="20%">${clazz.cname} </td>
    
    <td width="8%">所属类别： ${clazz.course.name}</td>

  </tr>
  <tr>
    <td>开课时间：${clazz.btime}</td>
    
    <td>结业时间：${clazz.etime}</td>
   
  </tr>
  <tr>
    <td>其他说明：${clazz.remark}</td>
   
  </tr>
  <tr>
    <td colspan="4"><br />学生明细：</td>
  </tr>
  <tr>
    <td colspan="4">
      <table width="65%" cellspacing="0" class="emp_table" style="width:65%; margin-top:5px; margin-left:0px; border:1px solid #CCC;">
      <tr>
        <td width="15%" height="29" align="center">姓名</td>
        <td width="17%" align="center">QQ</td>
        <td width="27%" align="center">联系电话</td>
        <td width="17%" align="center">类型</td>
        <td width="24%" align="center">缴费方式</td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">升学/正招/留学</td>
        <td align="center">&nbsp;</td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
      </tr>
      
      <tr>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</body>
</html>
