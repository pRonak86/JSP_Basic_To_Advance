<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="obj" class="com.tops.student"/>
	<jsp:setProperty property="*" name="obj"/>
	<h1> Welcome name <jsp:getProperty property="uname" name="obj"/></h1>
	<h1> My contact <jsp:getProperty property="contact" name="obj"/></h1>		
</body>
</html>