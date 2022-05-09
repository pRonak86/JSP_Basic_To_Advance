<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="obj" class="com.tops.Sum"></jsp:useBean>
	
	<%
	
		int addition=obj.add(10, 20);
		out.print("Sum of two number--"+addition);
	
	%>

</body>
</html>