<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div align="center">
	<img src="/images/logo.jpg" id="img" width="450" height="100">
	<div align="right">
		<a href="/master"><h4>관리자  모드</h4></a>
	</div>
</div>
<script>
	$("#img").click(function(){
		location.href="/";
	})
</script>