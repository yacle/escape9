<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ESCAPE9</title>
</head>
<style>
	body{
		background-image: url("/images/backwall.jpg");
		background-repeat: no-repeat;
		background-position: center;
		background-attachment: fixed;
	}
    .btn{
      text-decoration: none;
      font-size:3rem;
      font-weight: bold;
      color:white;
      padding:20px 40px 20px 40px;
      margin:20px;
      display:inline-block;
      border-radius: 10px;
      transition:all 0.1s;
      text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
      font-family: "Times New Roman", Times, serif;
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
        .btn.home{
      background-color: #1f75d9;
      border-bottom:5px solid #165195;
    }
    .btn.home:active{
      border-bottom:2px solid #165195;
    }
  </style>
<body>
	<div class="row" style="margin-top: 300px">
		<div class="col-xs-4" align="center">
			<a class="btn left" href="/master/customer">고객정보</a>
		</div>
		<div class="col-xs-4" align="center">
			<a class="btn right" href="/master/stats">설문 통계</a>
		</div>
		<div class="col-xs-4" align="center">
			<a class="btn home" href="/">설문지</a>
		</div>
	</div>
</body>
</html>
