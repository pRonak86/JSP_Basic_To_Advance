<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- 
	<%
		String s= config.getInitParameter("email");
	
		out.println("Email id is-->"+s);
	%> --%>

	<%
		String s= application.getInitParameter("email");
	
		out.println("Email id is-->"+s);
	%>




</body>
</html>