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
<table>
	<thead>
		<tr>
			<th>서약서</th>
		</tr>
	</thead>
	<tbody>
  	<c:forEach var="vo" items="${list}">
		<tr>
 			<td><a href="/customerSign?file_name=${vo.file_name}&&name=${vo.name}">${vo.file_name}</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table><br/>
<div align="center">
	<button type="button" onClick="history.back()">BACK</button>
</div>
</body>
</html>