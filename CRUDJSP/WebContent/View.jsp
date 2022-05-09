<%@page import="com.DAO.StudentDAO"%>
<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		List<Student> list=StudentDAO.getAllData();
		request.setAttribute("stu", list);

	%>
	
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Contact</th>
			<th>Email</th>
			<th>City</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
	<c:forEach items="${stu}" var="s">
	<tr>
		<td>${s.getId() }</td>
		<td>${s.getName() }</td>
		<td>${s.getContact() }</td>
		<td>${s.getEmail() }</td>
		<td>${s.getCity() }</td>
		<td><a href="Edit.jsp?id=${s.getId() }">Edit</a></td>
		<td><a href="Delete.jsp?id=${s.getId() }">Delete</a></td>
	</tr>
	</c:forEach>
	</table>
	
	
	
	
<a href="index.html">Add New Student Details</a>	
	
	
	
</body>
</html>