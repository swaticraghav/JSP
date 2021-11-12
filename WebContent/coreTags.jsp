<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Core Tags</title>
</head>
<body>
<h2>Core tags</h2>
1. c:out example: <c:out value="${10+7 }"/> <br/><br/>
2. c:set example: <c:set var="addition" value="${10+8 }" scope="request"/>
 					<c:out value="${addition}"/><br/><br/>
3. c:removal example: <c:remove var="addition"></c:remove>
						<c:out value="${addition}"/><br/><br/>
4. c:if example: 	<c:set var="addition" value="18"/>
					<c:if test="${addition == 18 }">
						<c:set var="line" value="You, yes you are amazing."/>
						<c:out value="${line}"/>
					</c:if><br/><br/>
5. c:each:			Begin: 
					<c:forEach var="i" begin="1" end="4">
						${i} 
					</c:forEach>
					End<br/><br/>
					
					<%
					List<String> studentNames = new ArrayList<>();
					studentNames.add("swati");
					studentNames.add("swat");
					studentNames.add("swa");
					studentNames.add("sw");
					request.setAttribute("names", studentNames);
					%>
					<c:forEach var="names" items="${names}">
						<c:out value="${names}"/>
					</c:forEach>
					
					
</body>
</html>