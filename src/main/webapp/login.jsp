<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml"> 
<HEAD>
<STYLE>
.cla1 {
	FONT-SIZE: 12px;
	COLOR: #4b4b4b;
	LINE-HEIGHT: 18px;
	TEXT-DECORATION: none
}

.login_msg {
	font-family: serif;
}

.login_msg .msg {
	background-color: #acf;
}

.login_msg .btn {
	background-color: #9be;
	width: 73px;
	font-size: 18px;
	font-family: 微软雅黑;
}
</STYLE>

<TITLE>登录</TITLE>
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="css/style.css" type=text/css rel=stylesheet>
</SCRIPT>
<META content="MSHTML 6.00.2600.0" name=GENERATOR>
</HEAD>
<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="images/rightbg.jpg">
	<div ALIGN="center">
		<table border="0" width="1140px" cellspacing="0" cellpadding="0"
			id="table1">
			<tr>
				<td height="93"></td>
				<td></td>
			</tr>
			<tr>
				<td background="images/right.jpg" width="740" height="412"></td>
				<td class="login_msg" width="400">

					<form action="user_login" method="post">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/title.png"
							width="185" height="26" /> <br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#ff0000">${msg }</font>
						<br /> 用户名：<input class="msg" type="text" name="username"><br />
						<br /> 密&nbsp;码：<input class="msg" type="password"
							name="password"><br /> <br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input class="btn"
							type="submit" value=" 登录 " />

						<!--取消用户注册 
					<input class="btn" type="button" value=" 注册 " onclick="document.location='../html/staff/register.html'"/>
					-->

					</form>
				</td>
			</tr>
		</table>
	</div>
</BODY>
</HTML>