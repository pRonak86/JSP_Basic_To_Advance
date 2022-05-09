<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.bean.User"></jsp:useBean>
	
	<jsp:setProperty property="*" name="obj"/> <!-- set inside your bean -->
	
	<jsp:getProperty property="uname" name="obj"/><!-- From Html Page -- store that value in obj -->
</body>
</html>