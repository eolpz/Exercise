<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/"/>
<title>无标题文档</title>
<link href="css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.3.1.js"></script>
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
    <td width="39%" align="left">[员工管理]</td>
   
    <td width="57%"align="right">
    	<!-- 高级查询
		<a href="#"><img src="images/button/gaojichaxun.gif" /></a>
    	-->
    	<!-- 添加员工 -->
    	<a href="staff/addOrEditStaff.html"><img src="images/button/tianjia.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>

<!-- 查询条件：添加或选择马上查询 -->
<form action="" method="post">
	<table width="88%" border="0" style="margin: 20px;" >
	  <tr>
	    <td width="80px">部门：</td>
	    <td width="200px">
	    	<select onchange="changePost(this.value)">
	    		<c:forEach items="${depts }" var="dept">
			    	<option value="${ dept.depId}" >${dept.depName }</option>
			    </c:forEach>
	    		<!-- <option>java学院</option>
	    		<option>php学院</option> -->
	    	</select>
	    </td>
	    <td width="80px" >职务：</td>
	    <td width="200px" >
	    	<select id="postSelect" onchange="location.href='stf_list?poId='+this.value">
	    		<c:forEach items="${posts }" var="post">
			    	<option value="${post.postId}" ${param.poId==post.postId? "selected='selected'":"" }>${post.postName }</option>
			    </c:forEach>
	    		<!-- <option>总监</option>
	    		<option>讲师</option> -->
	    	</select>
	    </td>
	    <td width="80px">姓名：</td>
	    <td width="200px" ><input type="text" onblur="location.href='stf_list?sfName='+this.value+'&poId=${param.poId}'" id="sfName" size="12" value="${param.sfName }"/></td>
	    <td ></td>
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
    <td width="10%" align="center">员工姓名</td>
    <td width="6%" align="center">性别</td>
    <td width="12%" align="center">入职时间</td>
    <td width="15%" align="center">所属部门</td>
    <td width="10%" align="center">职务</td>
    <td width="10%" align="center">编辑</td>
  </tr>
  <c:forEach items="${pager.data }" var="staff">
  	 <tr class="tabtd2">
    <td align="center">${staff.staffName }</td>
    <td align="center">${staff.gender }</td>
    <td align="center">${staff.onDutyDate }</td>
    <td align="center">${staff.post.department.depName }</td>
    <td align="center">${staff.post.postName }</td>
  	<td width="7%" align="center"><a href="stf_toEdit?staffId=${staff.staffId }"><img src="images/button/modify.gif" class="img"/></a></td>
  </tr>
  
  </c:forEach>
 <!--  <tr class="tabtd2">
    <td align="center">张某某</td>
    <td align="center">男</td>
    <td align="center">2004年1月11日</td>
    <td align="center">Java教学部</td>
    <td align="center">讲师</td>
  	<td width="7%" align="center"><a href="addOrEditStaff.html"><img src="images/button/modify.gif" class="img"/></a></td>
  </tr>
  <tr class="tabtd1">
    <td align="center">李某某</td>
    <td align="center">女</td>
    <td align="center">2012年4月1日</td>
    <td align="center">平面设计教学部</td>
    <td align="center">讲师</td>
  	<td width="7%" align="center"><a href="addOrEditStaff.html"><img src="images/button/modify.gif" class="img"/></a></td>
  </tr> -->
</table>
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第${pager.page }/${pager.pageCount }页</span>
        <span>
        	<a href="stf_list?page=1">[首页]</a>&nbsp;&nbsp;
            <a href="stf_list?page=${pager.page - 1 }">[上一页]</a>&nbsp;&nbsp;
            <a href="stf_list?page=${pager.page + 1 }&poId=${param.poId}">[下一页]</a>&nbsp;&nbsp;
            <a href="stf_list?page=${pager.pageCount }">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
<script type="text/javascript">
function changePost(val){
	$.get("stf_jsonData",
			{depId:val},
			function(data){
				console.log(data);
				var posts = $("#postSelect");
				posts.children().remove();
				$.each(data,function(i,obj){
					var opt = "<option value='"+obj.postId+"'>"+obj.postName+"</option>";
					posts.append(opt);
				});
			},
			"json");
	
}
</script>
</body>
</html>
