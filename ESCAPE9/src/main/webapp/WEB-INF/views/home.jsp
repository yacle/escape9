<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<link href='https://fonts.googleapis.com/css?family=jejugothic' rel='stylesheet'>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ESCAPE9</title>
</head>
<style>
body{
	background-image: url("/images/backwall.jpg");
	background-repeat: repeat;
	background-position: center;
	background-attachment: fixed;
}
    .btn{
	text-decoration: none;
	font-size:7rem;
	font-weight: bold;
	color:OrangeRed ;
	padding:20px 40px 20px 40px;
	margin:20px;
	display:inline-block;
	border-radius: 10px;
	transition:all 0.1s;
	text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
	font-family: 'Jeju Gothic', sans-serif;;
    }
 </style>
<body>
	<div class="row" style="margin-top: 300px">
		<div class="col-xs-6" align="center">
			<a class="btn left" href="" id="sign">사전 안내문<br/>/ 서약서</a>
		</div>
		<div class="col-xs-1"></div>
		<div class="col-xs-5" align="center">
			<a class="btn right" href="/survey/get">설문조사</a>
		</div>
	</div>
</body>
</html>
<script>
$("#sign").click(function(){
	window.open("/sign", "signature", "width=1000, height=1024");
})
</script>