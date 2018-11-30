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
    <td width="39%" align="left">[在校学生管理]</td>
   
    <td width="57%"align="right">
       <a href="student/addOrEditStudent.html"><img src="images/button/tianjia.gif" /></a>
       <a href="#"><img src="images/button/gaojichaxun.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>

<!-- 查询条件：添加或选择马上查询 -->
<form action="" method="post">
	<table width="88%" border="0" style="margin: 20px;" >
	  <tr>
	    <td width="80px">查询条件：</td>
	    <td width="300px"><input size="20" />（姓名|电话|QQ）</td>
	    <td width="300px"><select><option>==选择班级==</option> </select></td>
	    <td></td>
	  </tr>
	</table>
</form>


<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="images/result.gif"/></td>
  </tr>
</table>
<table width="100%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">

    <td width="10%" align="center">姓名</td>
    <td width="10%" align="center">入学时间</td>
    <td width="10%" align="center">班级</td>
    <td width="10%" align="center">QQ</td>
    <td width="10%" align="center">联系电话</td>
    <td width="10%" align="center">已付/应付学费</td>
    <td width="10%" align="center">状态</td>  <!-- 新生、转班、升级、退费、毕业 -->
  	<td width="5%" align="center">编辑</td>
  	<td width="5%" align="center">升级/转班</td>
  	<td width="5%" align="center">查看</td>
  	<td width="5%" align="center">流失</td>
  </tr>
  <c:forEach items="${pager.data }" var="student">
  <tr class="tabtd2">
	<td align="center">${student.name }</td>
    <td align="center">${student.refer.creatDate }</td>
    <td align="center">${student.clazz.cname}</td>
    <td align="center">${student.refer.qq}</td>
    <td align="center">${student.telephone }</td>
    <td align="center">${student.actualTuition }/${student.mustTuition }</td>
    <td align="center">${student.status }</td>
    <td align="center"><a href="stu_toEdit?studentid=${student.studentid}"><img src="images/button/modify.gif" class="img"/></a></td>
    <td align="center"><a href="sta_edit?stationid=${station.stationid }"><img src="images/button/modify.gif" class="img"/></a></td>
	<td align="center"><a href="stu_view?studentid=${student.studentid }"><img src="images/button/view.gif" class="img"/></a></td>
    <td align="center"><a href="privilege/addlostPrivilege.jsp"><img src="images/button/modify.gif" class="img"/></a></td>
  </tr>
  </c:forEach>
  
</table>
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第${pager.page}/${pager.pageCount}页</span>
        <span>
        	<a href="ref_list?page=1">[首页]</a>&nbsp;&nbsp;
            <a href="ref_list?page=${pager.page==1?pager.page:pager.page - 1}">[上一页]</a>&nbsp;&nbsp;
            <a href="ref_list?page=${pager.page==pager.pageCount?pager.page:pager.page + 1}">[下一页]</a>&nbsp;&nbsp;
            <a href="ref_list?page=${pager.pageCount}">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</html>
