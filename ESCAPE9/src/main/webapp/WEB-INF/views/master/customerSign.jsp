<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객별 서약서 리스트</title>
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
<div>
	<h2>[${name}] 님의 서약서</h2>
</div>
<table width="80%">
	<thead>
		<tr>
			<th>서약서</th>
			<th>입력일자</th>
		</tr>
	</thead>
	<tbody>
  	<c:forEach var="map" items="${list}">
		<tr>
 			<td><a href="/customerSign?file_name=${map.file_name}&&name=${name}&&add_date=${map.add_date}">${map.file_name}</a></td>
 			<td>${map.add_date}</td>
		</tr>
	</c:forEach>
	</tbody>
</table><br/>
<div align="center">
	<button type="button" onClick="history.back()">BACK</button>
</div>
</body>
</html>