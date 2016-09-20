<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<link href="<%=request.getContextPath()%>/csds/common.css" type="text/css" rel="stylesheet">
	<head>	
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
		any test
		<c:url value="/any.do" var="url" />
		<form action="${url }" method="post">
			<input type="submit">
		</form>
		only
		<c:url value="/only" var="only" />
		<form action="${only }" method="post">
			<input type="submit">
		</form>
		need param
		<c:url value="/param" var="param" />
		<a href=${param }>needParam</a>
		<c:url value="/param?name=hong&age=20" var="param2" />
		<a href=${param2 }>needParam</a>
		
		need param value
		<c:url value="/paramValue?name=jang&age=20" var="paramValue" />
		<a href=${paramValue }>needParamValue</a>
		<c:url value="/paramValue?name=hong&age=20" var="paramValue2" />
		<a href=${paramValue2 }>needParamValue</a>
		<br>
		add
		<c:url value="/add?a=10.5&b=5" var="add" />
		<a href=${add }>add OK</a>
		<c:url value="/add?a=10.5&b2=5" var="add2" />
		<a href=${add2 }>add fail</a>
		<c:url value="/add?a=10.5&b=5.0" var="add3" />
		<a href=${add3 }>add fail2</a>
		<br>
		rest
		<c:url value="/loc/8/7/717" var="rest" />
		<a href=${rest }>rest방식의 path variable</a>
		
		<img alt="로딩 실패" src="<%=request.getContextPath() %>/img/image.jpg">
		
	</body>
</html>
