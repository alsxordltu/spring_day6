<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<html>
	<link href="<%=request.getContextPath()%>/csds/common.css" type="text/css" rel="stylesheet">
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
		<h2>${message}</h2>
		<img alt="로딩 실패" src="<%=request.getContextPath() %>/img/image.jpg">
	</body>
</html>
