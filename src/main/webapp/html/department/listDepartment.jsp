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

<body >
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="images/tleft.gif"/></td>
    <td width="39%" align="left">[部门管理]</td>
   
    <td width="57%"align="right">
    	<!-- 添加部门 -->
       <a href="html/department/addDepartment.jsp"><img src="images/button/tianjia.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="images/result.gif"/></td>
  </tr>
</table>
<table width="100%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">
    <td width="6%" align="center">部门名称</td>
    <td width="7%" align="center">编辑</td>
  </tr>
  <c:forEach items="${pager.data}" var="dept">
  
  	<tr class="tabtd2">
    <td align="center">${dept.depName }</td>
  	<td width="7%" align="center">
  	<a href="dep_toEdit?depId=${dept.depId }"><img src="images/button/modify.gif" class="img"/></a></td>
  </tr>
  </c:forEach>
  
 
 
</table>
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第${pager.page}/${pager.pageCount }页</span>
        <span>
        	<a href="dep_list?page=1">[首页]</a>&nbsp;&nbsp;
            <a href="dep_list?page=${pager.page==1?pager.page:pager.page - 1 }">[上一页]</a>&nbsp;&nbsp;
            <a href="dep_list?page=${pager.page==pager.pageCount?pager.page:pager.page + 1 }">[下一页]</a>&nbsp;&nbsp;
            <a href="dep_list?page=${pager.pageCount }">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</html>
