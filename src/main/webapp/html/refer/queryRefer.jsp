<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/"/>
<title>无标题文档</title>

<link href="css/sys.css" type="text/css" rel="stylesheet" />

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
    <td width="44%" align="left">[查看咨询学生]</td>
   
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
<table width="89%" class="emp_table"    style="" align="left" cellspacing="0">
<c:forEach items="${pager.data }" var="refer"> </c:forEach>
  <tr>
    <td width="120px" height="35" align="left" >姓名：</td>
    <td width="300px" align="left" >${refer.refername}</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>电话：</td>
    <td>${refer.telephone }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>QQ：</td>
    <td>${refer.qq }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>咨询人：</td>
    <td>xxxx</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>意向级别：</td>
    <td>${refer.status }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>意向学科：</td>
    <td>${refer.course.name} &nbsp;&nbsp;&nbsp;意向班级：${refer.clazz.cname}</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="41" align="left">来源：</td>
    <td align="left">${refer.source }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="left">备注：</td>
    <td align="left">这是学霸</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td>跟踪信息：</td>
    <td><a href="follow/addOrEditFollow.html">添加跟踪</a></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3">
    	<table class="emp_table" style="width:70%; border:1px solid #CCC; margin-left:0" align="left">
	      <tr>
	        <td align="center">内容</td>
	        <td width="150px" align="center">时间</td>
	        <td width="80px" align="center">资源人员</td>
	      </tr>
	      <tr>
	        <td style="padding-left: 10px;">准备报名</td>
	        <td align="center">2012-12-21 12:34</td>
	        <td align="center">李小四</td>
	      </tr>
	    </table>
	</td>
  </tr>
</table>



</body>
</html>
