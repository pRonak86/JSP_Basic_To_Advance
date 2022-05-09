<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Connection creation -->
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/test" user="root" password="" />


	<%
		Date d=new Date("1991/03/15");
		int id=3;
	%>
	
	<sql:transaction dataSource="${db }">
	<sql:update >
		update student set date=? where sid=?;
		<sql:dateParam value="<%=d %>" type="DATE"/>
		<sql:param value="<%=id %>"/>
	</sql:update>
	 <sql:update>
		insert into student values(20,'Yash','Baroda','12pass','1991/03/25');
	</sql:update>
	</sql:transaction>





	<%-- <c:set var="id" value="20"/>
	<sql:update dataSource="${db }">
		delete from student where sid=?;
		<sql:param value="${id }"></sql:param>
	</sql:update>
 --%>








 

	<sql:query var="rs" dataSource="${db }">
	select * from student;
	</sql:query>

	<table border="1">	
		<tr>
			<th>sid</th>
			<th>sname</th>
			<th>city</th>
			<th>degree</th>
			<th>date</th>
		</tr>
		<c:forEach var="s" items="${rs.rows }">
			<tr>
				<td><c:out value="${s.sid }" /></td>
				<td><c:out value="${s.sname }" /></td>
				<td><c:out value="${s.city }" /></td>
				<td><c:out value="${s.degree }" /></td>
				<td><c:out value="${s.date }" /></td>
			</tr>

		</c:forEach>
	</table>

</body>
</html>