<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formatting Tags</title>
</head>
<body>
	<h1>Original number is: 123456.675</h1>
	<fmt:parseNumber var="parsedNumber" type="number" value="${123456.675}"/>
	<h3>parsed value is: </h3>${parsedNumber}
	<fmt:formatNumber var="formatNumber" type="currency" value="${123456.675}"/>
	<h3>Currency format is: </h3>${formatNumber}
	<fmt:formatNumber var="formatNumber" type="number" value="${123456.675}"/>
	<h3>Number format is: </h3>${formatNumber}
	<fmt:formatNumber var="formatNumber" type="number" value="${123456.675}" maxFractionDigits="1"/>
	<h3>Number format with maxFractionDigits is: </h3>${formatNumber}
	<fmt:formatNumber var="formatNumber" type="number" value="${123456.675}" maxIntegerDigits="1"/>
	<h3>Number format with maxIntegerDigits is: </h3>${formatNumber}
	<fmt:formatNumber var="formatNumber" type="percent" value="${123456.675}" />
	<h3>Percentage format is: </h3>${formatNumber}
	<fmt:formatNumber var="formatNumber" type="percent" value="${123456.675}" pattern="######.# Rs"/>
	<h3>Number with pattern is: </h3>${formatNumber}
</body>
</html>