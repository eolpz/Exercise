<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线学生查看</title>
<link href="css/sys.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.3.1.js" type="text/javascript"></script>
<script type="text/javascript">
  $(document).ready(function(){
		var but_jiben = $("#but_jiben");
		var but_xiangxi = $("#but_xiangxi");
		var xiangxi = $("#xiangxi");
		var jiben = $("#jiben");
		xiangxi.hide();
		
		but_jiben.click(function(){
				//alert();
				jiben.show();
				xiangxi.hide();
		});
		
		but_xiangxi.click(function(){
				jiben.hide();
				xiangxi.show();
		});
  });
</script>

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
       <a href="#"><img src="images/button/save.gif" /></a>
       <a href="#"><img src="images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<div class="emp_info"><input type="button" id="but_jiben" value="基本信息" /><input type="button"  id="but_xiangxi" value="详细资料"/></div>

<div id="jiben">
  <table width="88%" class="emp_table">
   <tr>
    <td width="8%" align="left">姓名：</td>
    <td width="19%" align="left"><input type="text" name="name" value="${student.name }" readonly="readonly" /></td>
    <td width="7%" align="left">QQ：</td>
    <td width="19%" align="left"><input type="text" name="QQ" value="${student.QQ }"readonly="readonly"/></td>
    <td width="7%" align="left">学员来源：</td>
    <td width="40%" align="left"><input type="text" name="Source" value="${student.source }" readonly="readonly"/></td>
  </tr>
  <tr>
   
    <td align="left">性别：</td>
    <td align="left"><input type="text" name="gender" value="${student.gender }"readonly="readonly" /></td>
    <td align="left">电话：</td>
    <td align="left"><input type="text" name="telephone" value="${student.refer.telephone }"readonly="readonly"/></td>
  </tr>
  <tr>
    <td align="left">联系地址：</td>
    <td align="left"><input type="text" name="address" value="${student.address}"readonly="readonly"/></td>
    <td align="left">Email：</td>
    <td align="left"><input type="text" name="email" value="${student.email}"readonly="readonly"/></td>
    <td align="left">学历：</td>
    <td align="left"><input type="text" name="education" value="${student.education}"readonly="readonly"/></td>
  </tr>
  <tr>
    <td align="left">家庭住址：</td>
    <td align="left"><input type="text"  name="identityAddress" value="${student.identityAddress}"readonly="readonly"/></td>
    <td align="left">学校：</td>
    <td align="left"><input type="text"  name="school" value="${student.school}"readonly="readonly"/></td>
    <td align="left">专业：</td>
    <td align="left"><input type="text"  name=professional value="${student.professional}"readonly="readonly"/></td>
  </tr>
  <tr>
    <td align="left">户口所在地：</td>
    <td align="left"><input type="text"  name="identityAddress" value="${student.identityAddress}"readonly="readonly"/></td>
    <td align="left">工作年限：</td>
    <td align="left"><input type="text"  readonly="readonly"/></td>
    <td align="left">英语水平：</td>
    <td align="left"><input type="text" readonly="readonly"/></td>
  </tr>
  <tr>
    <td colspan="6"><br />选择班级：</td>
    </tr>
  <tr>
    <td colspan="6" align="left"><table width="73%" class="emp_table" style="width:50%; border:1px solid #CCC; margin-left:0" align="left">
      <tr>
        <td width="7%" align="center">&nbsp;</td>
        <td width="20%" align="center">班级名称</td>
        <td width="21%" align="center">开班时间</td>
        <td width="18%" align="center">课程</td>
        <td width="34%" align="center">已报人数</td>
      </tr>
      <tr>
        <td align="center"><input type="radio" value="${student.clazz.name }" /></td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
      </tr>
      <tr>
        <td align="center"><input type="radio" value="${student.clazz.beginTime }"/></td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
      </tr>
      <tr>
        <td align="center"><input type="radio" value="${student.clazz.coursetype.courseName }"/></td>
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
    </table></td>
    </tr>
  <tr>
    <td height="38">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

</div>
<div id="xiangxi">
  <table width="36%"  class="emp_table2">
  <tr>
    <td width="17%" rowspan="6"><img src="images/head.png" /></td>
    <td width="9%" height="30">身份证号：</td>
    <td width="70%"><input type="text" /></td>
    </tr>
  <tr>
    <td>紧急电话：</td>
    <td><input type="text" /></td>
    </tr>
  <tr>
    <td>紧急联系人：</td>
    <td><input type="text" /></td>
    </tr>
  <tr>
    <td>付款方式：</td>
    <td><input type="text" /></td>
    </tr>
  <tr>
    <td>身份证复印件：</td>
    <td><input type="text" /></td>
    </tr>
  <tr>
    <td height="28">毕业证复印件：</td>
    <td><input type="text" /></td>
    </tr>
  <tr>
    <td align="right">就业意向：</td>
    <td colspan="2"><input type="checkbox"  style="margin-left:0;"/>IBM / 微软或其他外企
      <input type="checkbox" style="margin-left:45px;" />
      神州数码 / 大唐或其他国企 
      <br /><input type="checkbox" style="margin-left:0;"/>亚信 / 百度或其他上市公司
      <input type="checkbox" />有发展的IT公司
      <input type="checkbox" />拥有一份软件工程师工作</td>
    </tr>
  <tr>
    <td align="right">工作经历：</td>
    <td colspan="2"><textarea cols="40" rows="9"></textarea></td>
    </tr>
</table>

</div>

</body>
</html>
