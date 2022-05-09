<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:set var="s" value="Tops-Technology-Baroda-Surat"/>
	<c:set var="s1" value="${fn:split(s,'-') }"/>
	<c:set var="s2" value="${fn:join(s1,'@') }"/> 

	
	String is -->${s2 }
	
	<h1>Lower Case -- ${fn:toLowerCase(s) }</h1>
	<h1>Upper Case -- ${fn:toUpperCase(s) }</h1>
	<h1>Sub String Case -- ${fn:substring(s,5,10) }</h1>
	
	
	
	
	
	
	<%-- <h1> length of s-- ${fn:length(s) }</h1>
	<c:set var="s1" value="${fn:trim(s) }"></c:set>
	<c:out value="${s1 }"/>
	<h1> length of s1-- ${fn:length(s1) }</h1> --%>















	<%-- <c:set var="date" value="<%= new Date() %>"></c:set>
	
	<fmt:formatDate value="${date }" dateStyle="medium" "/><br>
	<fmt:formatDate value="${date }" type="time" timeStyle="medium"/>
 --%>

	<%-- <c:set var="a" value="123.12345"/>
	<h1> Format </h1>
	<fmt:formatNumber value="${a }" type="currency"></fmt:formatNumber>
	<h1>Format -1</h1>
	<fmt:formatNumber value="${a }" type="number" maxFractionDigits="5"></fmt:formatNumber> --%>
	















<%-- <c:redirect url="https://www.gtu.ac.in"></c:redirect>
 --%>

<%-- <c:url value="/process.jsp">
	<c:param name="user" value="Sanjay"></c:param>
</c:url>
 --%>






<%-- <c:forTokens items="Abc@xyz@gmail@com" delims="@" var="a">

	<h1>Value of a--><c:out value="${a }"/></h1>
</c:forTokens>

 --%>










<%-- <c:forEach var="i" begin="1" end="5">
	
	<h1>Value of i--<c:out value="${i }"/></h1>
</c:forEach>

 --%>







<%-- 	<c:set var="a" scope="session" value="12" />
	<c:choose>
		<c:when test="${a>13 }">
			<h1>A is Greater than 10</h1>
		</c:when>
		<c:otherwise>
			<h1>A is Smaller than 10</h1>
		</c:otherwise>
	</c:choose> --%>
















	<%-- <c:out value="Hello"></c:out> --%>

	<%-- <c:import url="https://www.gtu.ac.in" var="data" />
	<c:out value="${data }"></c:out> --%>

	<%-- <c:set var="add" scope="session" value="${3000*3 }"/>
	<c:out value="${add }"></c:out> --%>

	<%-- <c:set var="a" scope="session" value="12"/>
	<c:if test="${a>16 }">
		<h1>A is greater than 10</h1>
	</c:if> --%>

</body>
</html>