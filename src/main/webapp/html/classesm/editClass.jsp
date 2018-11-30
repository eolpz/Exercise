<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/" />
<title>修改班级</title>
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
    <td width="44%" align="left">[添加/编辑班级]</td>
   
    <td width="52%"align="right">
    	
       <a href="javascript:void()" onclick="$('form:first').submit()"><img src="images/button/save.gif" /></a>
       <a href="cla_list"><img src="images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<form action="cla_edit" method="post">
<input type="hidden" name="cid" value="${clazz.cid }" />
	<table width="88%" border="0" class="emp_table" style="width: 80%;">
		 <tr>
    <td width="10%">班级名称：</td>
    <td width="20%"><input type="text"  name="name" value="${clazz.cname }"></td>
    <td width="8%">所属课程：</td>
    <td width="62%"><input type="text" name="coursetype.courseTypeID" value="${clazz.course.name }"/></td>
  </tr>
  <tr>
    <td>开班时间：</td>
    <td><input type="text" name="beginTime" value="${clazz.btime }"/></td>
    <td>毕业时间：</td>
    <td><input type="text" name="endTime" value="${clazz.etime }"/></td>
  </tr>
  <tr>
    <td>班级人数：</td>
    <td><input type="text" name="totalCount" value="${clazz.totalCount }"/></td>
   <!--  <td>班主任</td>
    <td>
    	<select>
    	<option>请选择</option>
    	<option>张老师</option>
    	<option>王老师</option>
    	<option>孙老师</option>
    	<option>李老师</option>
    	<option>胡老师</option>
    	</select>
    </td> -->
  </tr>
  <tr>
    <td>其他说明:</td>
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
