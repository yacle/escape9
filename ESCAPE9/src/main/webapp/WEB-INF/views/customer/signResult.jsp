<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>서약서</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<style>
.img {
	background-image:url("/images/brochure.png");
	background-size: 800px 600px;
	background-repeat: no-repeat;
}
</style>
<body>
<div class="img">
	<img src="/saveSignImage/${fileName}" width="800" height="600">
</div>
<c:if test="${!empty date}">
<div style="margin-left: 300px;">
	<h5>[작성일자 : ${date}]</h5>
	<a href="/" class="btn btn-primary">확인</a>
</div>
</c:if>
<c:if test="${empty date }">
<button type="button" class="btn btn-default" onClick="history.back()">목록</button>
</c:if>
</body>
</html>