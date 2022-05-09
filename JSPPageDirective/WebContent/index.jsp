<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.util.Date" %>
	<%@ page buffer="64kb" %>
	<%@ page errorPage="Error.jsp" %>
	<%= 10/0 %>
	<%-- <h1>Today Date is --> <%= new Date() %></h1> --%>
</body>
</html>