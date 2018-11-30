<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CRM系统</title>
<base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>
</head>

<frameset rows="100,*" framespacing="0px" frameborder="no">
	<frame src="html/frame/top.jsp" scrolling="no"/>
    <frameset id="main" cols="170,9,*" framespacing="0px" frameborder="no" >
        <frameset rows="30,*,40" framespacing="0px" frameborder="no" >
			<frame src="html/frame/left1.jsp" scrolling="no"/>
            <frame src="html/frame/left.jsp" scrolling="yes"/>
            <frame src="html/frame/left2.jsp" scrolling="no"/>
        </frameset>
        <frame src="html/frame/control.jsp" scrolling="no"/>
        <frame src="html/frame/right.jsp" name="right" scrolling="no"/>
	</frameset>
</frameset>
</html>
