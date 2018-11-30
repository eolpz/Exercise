<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/"/>
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
    <td width="44%" align="left">[添加/编辑咨询学生]</td>
   
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
  <tr>
    <td width="120px" height="35" align="left" >姓名：</td>
    <td width="300px" align="left"><input type="text" value="${refer.refername }" /></td>
    <td>状态：咨询中</td>
  </tr>
  <tr>
    <td>电话：</td>
    <td><input type="text" / value="${refer.telephone }"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>QQ：</td>
    <td><input type="text" value="${refer.qq }"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>咨询人：</td>
    <td>${refer.staff.staffName }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>意向级别：</td>
    <td>
    	<select>
    		<option>--请选择--</option>
    		<option>A</option>
    		<option>b</option>
    		<option>c</option>
    		<option>d</option>
    	</select>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
				<td>意向学科：</td>
				<td>
				<select>
				<option>--请选择--</option>
						<c:forEach items="${ courses}" var="course">
							<option value="${course.courseid  }"
								${course.courseid==refer.course.courseid ? "selected='selected'":"" }>${course.name }</option>
						</c:forEach>

				</select> &nbsp;&nbsp;&nbsp;意向班级： <select><option>--请选择--</option>
						<c:forEach items="${clazzs }" var="clazz">
							<option value="${clazz.cid }"
								${clazz.cid==refer.clazz.cid ? "selected='selected'":"" }>${clazz.cname }</option>
						</c:forEach>

				</select></td>
				<td>&nbsp;</td>
			</tr>
  <tr>
    <td height="41" align="left">来源：</td>
    <td align="left">
    	<select>
    		<option>--请选择--</option>
    		<option>上门</option>
    		<option>网络</option>
    		<option>电话</option>
    		<option>其他</option>
    	</select>
    	
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="left">备注：</td>
    <td align="left"><textarea cols="60" rows="5"></textarea></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>



</body>
</html>
