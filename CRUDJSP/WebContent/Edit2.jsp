<%@page import="com.DAO.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="stu" class="com.bean.Student"></jsp:useBean>
	<jsp:setProperty property="*" name="stu"/>
	<%
		
		int i=StudentDAO.updateData(stu);
		if(i>0)
		{
			response.sendRedirect("View.jsp");
		}
		else
		{
			out.println("Not Updated yet");
		}
	
	
	%>
</body>
</html>