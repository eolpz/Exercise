<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/"/>

<link href="css/sys.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.3.1.js" type="text/javascript"></script>
<script type="text/javascript">
  $(document).ready(function(){
		var but_jiben = $("#but_jiben");
		var but_xiangxi = $("#but_xiangxi");
		var but_genjin = $("#but_genjin");
		var but_guiji = $("#but_guiji");
		var but_jiuye = $("#but_jiuye");
		var but_liushi = $("#but_liushi");
		
		var jiben = $("#jiben");
		var xiangxi = $("#xiangxi");
		var genjin = $("#genjin");
		var guiji = $("#guiji");
		var jiuye = $("#jiuye");
		var liushi = $("#liushi");
		
		xiangxi.hide();
		genjin.hide();
		guiji.hide();
		
		but_jiben.click(function(){
				//alert();
				jiben.show();
				xiangxi.hide();
				genjin.hide();
				guiji.hide();
		});
		
		but_xiangxi.click(function(){
				xiangxi.show();
				jiben.hide();
				genjin.hide();
				guiji.hide();
		});
		
		but_genjin.click(function(){
				xiangxi.hide();
				jiben.hide();
				genjin.show();
				guiji.hide();
		});
		
		but_guiji.click(function(){
				xiangxi.hide();
				jiben.hide();
				genjin.hide();
				guiji.show();
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
    <td width="44%" align="left">[学员升级/流班 查看]</td>
   
    <td width="52%"align="right">
       <a href="sta_list"><img src="images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<div class="emp_info">
	<input type="button" id="but_jiben" value="基本信息" />
	<input type="button"  id="but_xiangxi" value="详细资料"/>
	<input type="button"  id="but_genjin" value="跟进信息"/>
	<input type="button"  id="but_guiji" value="班级轨迹"/>
</div>

<div id="jiben">
<%-- <c:forEach items="${pager.page}" var="station"></c:forEach> --%>
  <table width="88%" class="emp_table">
  <tr>
    <td width="8%" align="left">姓名：</td>
    <td width="19%" align="left"><input type="text" name="name" value="${station.student.name }" readonly="readonly" /></td>
    <td width="7%" align="left">QQ：</td>
    <td width="19%" align="left"><input type="text" name="QQ" value="${station.student.QQ }"readonly="readonly"/></td>
    <td width="7%" align="left">学员来源：</td>
    <td width="40%" align="left"><input type="text" name="Source" value="${station.student.refer.source }" readonly="readonly"/></td>
  </tr>
  <tr>
   
    <td align="left">性别：</td>
    <td align="left"><input type="text" name="gender" value="${station.student.gender }" /></td>
    <td align="left">电话：</td>
    <td align="left"><input type="text" name="telephone" value="${station.student.refer.telephone }"/></td>
  </tr>
  <tr>
    <td align="left">联系地址：</td>
    <td align="left"><input type="text" name="address" value="${station.student.address}"/></td>
    <td align="left">Email：</td>
    <td align="left"><input type="text" name="email" value="${station.student.email}"/></td>
    <td align="left">学历：</td>
    <td align="left"><input type="text" name="education" value="${station.student.education}"/></td>
  </tr>
  <tr>
    <td align="left">家庭住址：</td>
    <td align="left"><input type="text"  name="identityAddress" value="${station.student.identityAddress}"/></td>
    <td align="left">学校：</td>
    <td align="left"><input type="text"  name="school" value="${station.student.school}"/></td>
    <td align="left">专业：</td>
    <td align="left"><input type="text"  name=professional value="${station.student.professional}"/></td>
  </tr>
  <tr>
    <td align="left">户口所在地：</td>
    <td align="left"><input type="text"  name="identityAddress" value="${station.student.identityAddress}"/></td>
    <td align="left">工作年限：</td>
    <td align="left"><input type="text"  /></td>
    <td align="left">英语水平：</td>
    <td align="left"><input type="text" /></td>
  </tr>
  <tr>
    <td >就读班级：</td>
    <td colspan="5"><input type="text"  name="name" value="${station.clazz.cname}"/></td>
  </tr>
</table>

</div>
<div id="xiangxi">
  <table width="36%"  class="emp_table2">
  <tr>
    <td width="17%" rowspan="6"><img src="images/head.png" /></td>
    <td width="9%" height="30">身份证号：</td>
    <td width="70%"><input type="text"  name="identity" value="${station.student.identity }" readonly="readonly"/></td>
    </tr>
  <tr>
    <td>紧急电话：</td>
    <td><input type="text" name="homeTelephone" value="${station.student.homeTelephone }"readonly="readonly"/></td>
    </tr>
  <tr>
    <td>紧急联系人：</td>
    <td><input type="text" name="homeContact" value="${station.student.homeContact }"readonly="readonly"/></td>
    </tr>
  <tr>
    <td>付款方式：</td>
    <td><input type="text" readonly="readonly"/></td>
    </tr>
  <tr>
    <td>身份证复印件：</td>
    <td><input type="text" readonly="readonly"/></td>
    </tr>
  <tr>
    <td height="28">毕业证复印件：</td>
    <td><input type="text" readonly="readonly"/></td>
    </tr>
  <tr>
    <td align="right">就业意向：</td>
    <td colspan="2"><input type="checkbox"  readonly="readonly" style="margin-left:0;"/>IBM / 微软或其他外企
      <input type="checkbox" style="margin-left:45px;" />
      神州数码 / 大唐或其他国企 
      <br /><input type="checkbox" style="margin-left:0;"/>亚信 / 百度或其他上市公司
      <input type="checkbox" />有发展的IT公司
      <input type="checkbox" />拥有一份软件工程师工作</td>
    </tr>
  <tr>
    <td align="right">工作经历：</td>
    <td colspan="2"><textarea cols="40" rows="9" readonly="readonly"></textarea></td>
    </tr>
</table>

</div>


<div id="genjin">
<table width="88%"  class="" border="1" style="margin-top:5px;" cellspacing="0">
  <tr class="henglan">
    <td align="center">日期</td>
    <td align="center">咨询方式</td>
    <td align="center">咨询人员</td>
    <td align="center">结果</td>
    <td align="center">备注</td>
  </tr>
  
  <tr class="tabtd1">
    <td align="center">${station.student.refer.createDate }</td>
    <td align="center">${station.student.refer.source }</td>
    <td align="center">${station.staff.staffName }</td>
    <td align="center"></td>
    <td align="center">${station.student.refer.remark }</td>
  </tr>
 
  <tr class="tabtd2">
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
</table>
</div>


<div id="guiji">
<table width="88%"  class="" border="1" style="margin-top:5px;" cellspacing="0">
  <tr class="henglan">
    <td align="center">日期</td>
    <td align="center">班级</td>
    <td align="center">升级/留级</td>
    <td align="center">经办人</td>
    <td align="center">备注</td>
  </tr>
  <tr class="tabtd1">
    <td align="center">${station.clazz.btime }</td>
    <td align="center">${station.clazz.cname }</td>
    <td align="center">${station.flag }</td>
    <td align="center">${station.staff.staffName }</td>
    <td align="center">${station.clazz.remark }</td>
  </tr>
  <tr class="tabtd2">
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
</table>
</div>
</body>
</html>
