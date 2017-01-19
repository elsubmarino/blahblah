<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>당신의 꿈이 이루어지는 곳, 울랄라!</title>
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css?ver=2">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<script src="/resources/js/jquery-latest.js"></script>
<script src="/resources/js/bootstrap.js"></script>
<script src="/resources/js/main.js?ver=1" charset="utf-8"></script>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	
	<div id="content">
		<tiles:insertAttribute name="content"/>
	</div>
	
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</div>
</body>
</html>