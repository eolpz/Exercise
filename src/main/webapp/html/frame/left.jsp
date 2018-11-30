<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<link href="../../css/dtree.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../../js/dtree.js"></script>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>
</HEAD>
<BODY bgColor=#DDF0FB leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
<table width="90%" border="0" cellspacing="1" cellpadding="2" align="center" >
<tr>
<div class="dtree">
	<script type="text/javascript">
		d = new dTree('d');
		d.add('01','-1','CRM管理系统');
		d.add('0101','01','咨询部');
		/* 状态=="咨询中"*/
		d.add('010102','0101','咨询学生管理','ref_list','','right');
		/* 状态=="已报名"*/
		d.add('010103','0101','查询报名学生','ref_list','','right');
		
		d.add('0102','01','学工部');
		d.add('010201','0102','在校学生管理','stu_list','','right');
		d.add('010202','0102','学生升级/转班','stu_list','','right');
		d.add('010203','0102','学生流失情况','stu_list','','right');	
		
		
		d.add('0103','01','教学部');
		d.add('010301','0103','班级管理','cla_list','','right');
		d.add('010302','0103','课程类别管理','cour_list','','right');
		
		/*
		d.add('010301','0103','班级管理');
		d.add('01030101','010301','添加班级','../classesm/addOrEditClass.html','','right');
		d.add('01030102','010301','查询班级','../classesm/listClass.html','','right');
		
		d.add('010302','0103','课程类别');
		d.add('01030201','010302','添加课程类别','../course/addOrEditCourseType.html','','right');
		d.add('01030202','010302','查询课程类别','../course/listCourseType.html','','right');
		*/
		
		d.add('0104','01','就业部');
		d.add('010401','0104','就业情况','gra_list','','right');
		
		d.add('0105','01','人力资源部');
		d.add('010501','0105','部门管理','dep_list','','right');
		d.add('010502','0105','职务管理','pos_list','','right');
		d.add('010035','0105','员工管理','stf_list','','right');
		
		document.write(d);
	</script>
</div>
</tr>
</table>
</BODY>
</HTML>
      			
			


      