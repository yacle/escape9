<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ESCAPE9</title>
</head>
<style>
    .btn{
      text-decoration: none;
      font-size:2rem;
      color:white;
      padding:10px 20px 10px 20px;
      margin:20px;
      display:inline-block;
      border-radius: 10px;
      transition:all 0.1s;
      text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
      font-family: "Arial Black", Gadget, sans-serif;
    }
    .btn:active{
      transform: translateY(3px);
    }
    .btn.left{
      background-color: #1f75d9;
      border-bottom:5px solid #165195;
    }
    .btn.left:active{
      border-bottom:2px solid #165195;
    }
    .btn.right{
      background-color: #ff521e;
      border-bottom:5px solid #c1370e;
    }
    .btn.right:active{
      border-bottom:2px solid #c1370e;
    }
  </style>
<body>
	<div class="row" style="margin-top: 200px">
		<div class="col-xs-6" align="right">
			<a class="btn left" href="/sign" id="sign">사전 안내문 및 서약서</a>
		</div>
		<div class="col-xs-1"></div>
		<div class="col-xs-5" align="left">
			<a class="btn right" href="/survey/get">설문조사</a>
		</div>
	</div>
</body>
</html>
<script>
//	$("#sign").click(function(){
//		window.open("/sign", "signature", "width=830, height=1000");
//	})
</script>