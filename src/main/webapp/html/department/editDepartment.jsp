<%@ page language="java" pageEncoding="utf-8" %>
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
    <td width="44%" align="left">[添加/编辑部门]</td>
   
    <td width="52%"align="right">
       <a href="javascript:void(0)" onclick="$('#editForm').submit()"><img src="images/button/save.gif" /></a>
       <a href="dep_list"><img src="images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<form  id="editForm" action="dep_edit" method="post">
<input type="hidden" name="depId" value="${dept.depId }" />
<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
    <td width="10%">部门名称：</td>
    <td width="20%"><input type="text" name="depName" value="${dept.depName }" /></td>
    <td width="70%"></td>
  </tr>
</table>
</form>
</body>
</html>
