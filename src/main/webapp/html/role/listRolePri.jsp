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

<body >
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="images/tleft.gif"/></td>
    <td width="39%" align="left">[学员升级/留班]</td>
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


<table width="100%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">
    <td width="6%" align="center">学生姓名</td>
    <td width="7%" align="center">QQ</td>
    <td width="8%" align="center">联系电话</td>
    <td width="8%" align="center">类别</td>
    <td width="11%" align="center">之前的班级</td>
    <td width="12%" align="center">之后的班级</td>
    <td width="12%" align="center">操作时间</td>
    <td width="12%" align="center">经办人</td>
    <td width="6%" align="center">查看</td>
  </tr>
 
  <c:forEach items="${pager.data }" var="station">
  <tr class="tabtd2">
    <td  align="center">${station.student.name}</td>
    <td  align="center">${station.student.QQ }</td>
    <td  align="center">${station.student.telephone }</td>
    <td  align="center">${station.flag }</td>
    <td  align="center">${station.clazz.cname }</td>
    <td  align="center">${station.clazz.cname }</td>
    <td  align="center">${station.createDate }</td>
    <td  align="center">${station.staff.staffName }</td>
    <td  align="center"><a href="sta_viewR?stationId=${station.stationid }"><img src="images/button/view.gif" class="img"></a></td>
  </tr>
   </c:forEach>
 
</table>
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第${pager.page}/${pager.pageCount }页</span>
         <span>
        	<a href="sta_list?page=1">[首页]</a>&nbsp;&nbsp;
            <a href="sta_list?page=${pager.page==1?pager.page:pager.page - 1}">[上一页]</a>&nbsp;&nbsp;
            <a href="sta_list?page=${pager.page==pager.pageCount?pager.page:pager.page + 1}">[下一页]</a>&nbsp;&nbsp;
            <a href="sta_list?page=${pager.pageCount }">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</body>
</html>
