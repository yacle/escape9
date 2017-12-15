<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
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
			<a class="btn left" href="/master/customer">고객정보</a>
		</div>
		<div class="col-xs-1"></div>
		<div class="col-xs-5" align="left">
			<a class="btn right" href="/master/stats">설문 통계</a>
		</div>
	</div>
</body>
</html>
