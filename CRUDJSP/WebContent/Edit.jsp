<%@page import="com.DAO.StudentDAO"%>
<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Update Student Data</h1>

	<%
		int id = Integer.parseInt(request.getParameter("id"));
	Student s = StudentDAO.getDatabyID(id);
	%>
	<form action="Edit2.jsp" method="get">
		
		<table border="1" align="center">
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" value="<%= s.getId() %>"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="<%= s.getName() %>"></td>
			</tr>
			<tr>
				<td>Contact</td>
				<td><input type="text" name="contact" value="<%=s.getContact() %>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%=s.getEmail() %>"></td>
			</tr>
			<tr>
				<td>City</td>
				<td><select name="city">
						<option>Baroda</option>
						<option>Gandhinagar</option>
						<option>Surat</option>
						<option>Bharuch</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Update"></td>
			</tr>
		</table>
	</form>

</body>
</html>