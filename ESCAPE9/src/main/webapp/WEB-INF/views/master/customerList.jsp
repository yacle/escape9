<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객 명단</title>
</head>
<body>
<div align="center">
	<h2>고객명단</h2>
</div><br/>
<table class="table table-hover">
	<thead>
		<tr>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>기타</th>
		</tr>
	</thead>
	<tbody>
  	<c:forEach var="vo" items="${list}">
		<tr>
			<td><a href="/master/customer_survey?phone=${vo.phone}&&name=${vo.name}">${vo.name}</a></td>
 			<td>${vo.phone}</td>
			<td>${vo.email}</td>
			<td>${vo.comments}</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>