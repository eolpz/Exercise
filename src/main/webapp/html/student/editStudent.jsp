<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改student</title>
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
    <td width="44%" align="left">[编辑正式学员]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="images/button/close.gif" class="img"/></a>-->
       <a href="javascript:void()" onclick="$('#editForm').submit()"><img src="images/button/save.gif" /></a>
       <a href="stu_list"><img src="images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<form action="stu_edit" method="post" id="editForm">
<input type="hidden" name="studentid" value="${student.studentid  }"/>
<table width="88%" class="emp_table">
  <tr>
    <td width="80px" align="left">姓名：</td>
    <td width="200px" align="left"><input type="text" value="${student.name }" /></td>
    <td width="80px" align="left">性别：</td>
    <td align="left"><input type="radio" name="gender"/>男<input type="radio" name="gender"/>女</td>
  </tr>
  <tr>
    <td align="left">应付学费：</td>
    <td align="left"><input type="text" name="mustTuition" value="${student.mustTuition }" /></td>
    <td align="left">实付学费：</td>
    <td align="left"><input type="text" name="actualTuition" value="${student.actualTuition }" /></td>
  </tr>
  <tr>
    <td align="left">身份证号：</td>
    <td align="left"><input type="text" name="identity" value="${student.identitys}" /></td>
    <td align="left">手机号：</td>
    <td align="left"><input type="text" name="telephone" value="${student.telephone}"/></td>
  </tr>
  <tr>
    <td align="left">QQ号：</td>
    <td align="left"><input type="text" name="qq" value="${student.refer.qq}"/></td>
    <td align="left">邮箱：</td>
    <td align="left"><input type="text" name="email" value="${student.email}"/></td>
  </tr>
  <tr>
				<td align="left">就读班级：</td>
				<td align="left" colspan="3">
				 <select>
			
						<option>====选择班级====</option>
                         <c:forEach items="${clazzs }" var="clazz">
							<option value="${clazz.cid }"
								${clazz.cid==student.clazz.cid ? "selected='selected'":"" }>${clazz.cname }</option>
						</c:forEach>

				</select>
				</td>
			</tr>
  			<tr>
				<td align="left">毕业学校：</td>
				<td align="left"><input type="text" name="school" value="${student.school }"/></td>
				<td align="left">学历：</td>
				<td align="left"><input type="text" name="education" value="${student.education }"/>
				专业<input type="text" size="17"  name="professional" value="${student.professional }"/></td>
			</tr>
  <tr>
    <td align="left">身份证地址：</td>
    <td align="left" colspan="3"><input name="identityAddress" size="60" value="${student.identityAddress}"/></td>
  </tr>
  <tr>
    <td align="left">在京地址：</td>
    <td align="left" colspan="3"><input name="address" size="60" value="${student.address }"/></td>
  </tr>
  <tr>
    <td align="left">学员描述：</td>
    <td align="left" colspan="3"><input name="remark" size="60" value="${student.remark }"/></td>
  </tr>
  <tr>
		<td align="left">家庭联系电话：</td>
		<td align="left"><input type="text" name="homeTelephone" value="${student.homeTelephone }"/></td>
		<td align="left">家庭联系人：</td>
		<td align="left"><input type="text" name="homeContact"  value="${student.homeContact }"/></td>
  </tr>
			<tr>
				<td align="left">状态：</td>
				<td align="left"><input type="text" name="status" value="${student.status }"/></td>
				
			</tr>
</table>
</form>

</body>
</html>
