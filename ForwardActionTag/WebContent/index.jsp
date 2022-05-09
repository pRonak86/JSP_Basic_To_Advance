<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1> This is your index.jsp page</h1>
	<jsp:forward page="source.jsp">
		<jsp:param value="Ronak" name="name"/>
	</jsp:forward>
</body>
</html>