<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객 명단</title>
</head>
<style>
th, td{
	text-align: center;
	font-size: 15px;
	border-bottom: 1px solid #ddd;
}
tr{
	height: 40px;
}
tr:hover {background-color:#f5f5f5;}
</style>
<body>
<div align="center">
	<h2>고객명단</h2>
</div><br/>
<table width="100%">
	<thead>
		<tr>
			<th width="10%">이름</th>
			<th width="20">전화번호</th>
			<th width="30%">이메일</th>
			<th width="30%">기타</th>
			<th width="10%">서약서</th>
		</tr>
	</thead>
	<tbody>
  	<c:forEach var="vo" items="${list}">
		<tr>
			<td><a href="/master/customer_survey?phone=${vo.phone}&&name=${vo.name}">${vo.name}</a></td>
 			<td>${vo.phone}</td>
			<td>${vo.email}</td>
			<td><span id="comment" attr-data="${vo.phone}">${vo.comments}</span></td>
			<td><a href="/master/customer_sign?phone=${vo.phone}&&name=${vo.name}">서약서</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table><br/>
<div align="center">
	<button type="button" onClick="history.back()">메인</button>
</div>
</body>
</html>
<script>
	$("#comment").click(function(){
		window.alert("tt");
	})
</script>