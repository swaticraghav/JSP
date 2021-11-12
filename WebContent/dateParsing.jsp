<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parsed Date</title>
</head>
<body>
	<c:set var="dateString" value="12-12-2019"/>
	<fmt:parseDate var="dateDate" value="${dateString}" pattern="dd-MM-yyyy" />
	<h2>Date is: </h2>${dateDate}
</body>
</html>