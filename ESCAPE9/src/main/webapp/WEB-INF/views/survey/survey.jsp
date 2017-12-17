<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문조사</title>
<style>

</style>
</head>
<body>
	<div align="center">
		<h2>게임 설문조사</h2>
	</div><hr/>
	<form method="post" action="/survey/post" id="survey">
		<p>
		1. 어떤 게임을 하셨나요?
			<div class="radio">
				<label><input type="radio" name="game_name" value="1">The grand museum_잠입명령</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="game_name" value="2">Project 380 : The Alien_폐쇄된 외계인 실험실</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="game_name" value="3">The secret of my wife_아내</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="game_name" value="4">The secret of my husband_남편</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="game_name" value="5">The Jungle_실종된 탐사대</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="game_name" value="6">Light and shade_죽음의 예배당</label>
			</div>
		</p><hr/>
		<p>
		2. 게임 종합평가 _ 게임이 흥미로웠는지 종합적으로 평가
			<div>
				<label class="radio-inline">
				<input type="radio" name="total_eval" value=1>1 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="total_eval" value=2>2 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="total_eval" value=3>3 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="total_eval" value=4>4 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="total_eval" value=5>5 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="total_eval" value=6>6 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="total_eval" value=7>7 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="total_eval" value=8>8 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="total_eval" value=9>9 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="total_eval" value=10>10 &#8193;
				</label>
			</div>
		</p><hr/>
		<p>
		3. 미션 환경 _ 인테리어, 음악, 소품등 테마에 맞게 적절하게 꾸며졌는지?
			<div>
				<label class="radio-inline">
				<input type="radio" name="environment" value=1>1 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="environment" value=2>2 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="environment" value=3>3 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="environment" value=4>4 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="environment" value=5>5 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="environment" value=6>6 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="environment" value=7>7 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="environment" value=8>8 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="environment" value=9>9 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="environment" value=10>10 &#8193;
				</label>
			</div>
		</p><hr/>
		<p>
		4. 미션 테마 평가 _ 미션의 테마가 흥미로웠는지?
			<div>
				<label class="radio-inline">
				<input type="radio" name="thema" value=1>1 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="thema" value=2>2 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="thema" value=3>3 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="thema" value=4>4 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="thema" value=5>5 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="thema" value=6>6 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="thema" value=7>7 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="thema" value=8>8 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="thema" value=9>9 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="thema" value=10>10 &#8193;
				</label>
			</div>
		</p><hr/>
		<p>
		5. 미션 구성 _ 단서와 퍼즐, 힌트등 게임구성이 자연스러우며 개연성이 있었는지?
			<div>
				<label class="radio-inline">
				<input type="radio" name="composition" value=1>1 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="composition" value=2>2 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="composition" value=3>3 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="composition" value=4>4 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="composition" value=5>5 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="composition" value=6>6 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="composition" value=7>7 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="composition" value=8>8 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="composition" value=9>9 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="composition" value=10>10 &#8193;
				</label>
			</div>
		</p><hr/>
		<p>
		6. 난이도 _ 체감 난이도
			<div>
				<label class="radio-inline">
				<input type="radio" name="difficulty" value=1>1 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="difficulty" value=2>2 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="difficulty" value=3>3 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="difficulty" value=4>4 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="difficulty" value=5>5 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="difficulty" value=6>6 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="difficulty" value=7>7 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="difficulty" value=8>8 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="difficulty" value=9>9 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="difficulty" value=10>10 &#8193;
				</label>
			</div>
		</p><hr/>
		<p>
		7. 방탈출 게임 횟수
			<div>
				<label class="radio-inline">
				<input type="radio" name="repeat_num" value=0>0 회 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="repeat_num" value=1>1 회 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="repeat_num" value=2>2 회 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="repeat_num" value=3>3 회 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="repeat_num" value=4>4 회이상 &#8193;
				</label>
			</div>
		</p><hr/>
		<p>
		8. 이스케이프 9 을 알게된 경로는?
			<div>
				<label class="radio-inline">
				<input type="radio" name="route" value="간판">간판 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="route" value="지인추천">지인추천 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="route" value="블로그">네이버 블로그 (검색어:<input type="text" name="route_1" size="20">) &#8193;
				</label>
			</div></p><p>
			<div>
				<label class="radio-inline">
				<input type="radio" name="route" value="SNS">SNS &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="route" value="재방문">재방문 &#8193;
				</label>
				<label class="radio-inline">
				<input type="radio" name="route" value="기타">기타(<input type="text" name="route_2" size="20">)
				</label>
			</div>
		</p><hr/>
		<p>
		9. 남기실 말씀
			<div class="form-group row">
				<div class="col-xs-9">
					<textarea class="form-control" rows="2" name="comments"></textarea>
				</div>
			</div>
		</p><hr/>
		<p>
		10. 기타
		<div class="form-group row">
			<div class="col-xs-3">
				<label for="age">연령대</label>
				<select class="form-control" name="age" id="age">
					<option></option>
					<option>10 대</option>
					<option>20 대</option>
					<option>30 대</option>
					<option>40 대</option>
				</select>
			</div>
			<div class="col-xs-3">
				<label for="gender">성별</label>
				<select class="form-control" name="gender" id="gender">
					<option></option>
					<option>남</option>
					<option>여</option>
				</select>
			</div>
			<div class="col-xs-3">
				<label for="member">인원수</label>
				<select class="form-control" name="member" id="member">
					<option></option>
					<option value=2>2 명</option>
					<option value=3>3 명</option>
					<option value=4>4 명</option>
					<option value=5>5 명</option>
					<option value=6>6 명</option>
				</select>
			</div>
		</div>
		</p><hr/>
		작성자 :  <input type="text" name="name" id="name">
		핸드폰 : <input type="number" name="phone" id="phone"><br/><br/>
		<button class="btn btn-info" type="button" id="btn">제출</button>
	</form>
</body><br/><br/><br/>
<h1></h1>
</html>
<script>
	$("#btn").click(function(){
		if (!$("input[name='game_name']:checked").val()) { alert('1.게임을 선택하세요');return false;}
		if (!$("input[name='total_eval']:checked").val()) { alert('2.종합평가를 선택하세요');return false;}
		if (!$("input[name='environment']:checked").val()) { alert('3.환경평가를 선택하세요');return false;}
		if (!$("input[name='thema']:checked").val()) { alert('4.테마평가를 선택하세요');return false;}
		if (!$("input[name='composition']:checked").val()) { alert('5.구성평가를 선택하세요');return false;}
		if (!$("input[name='difficulty']:checked").val()) { alert('6.난이도를 선택하세요');return false;}
		if (!$("input[name='repeat_num']:checked").val()) { alert('7.게임횟수를 선택하세요');return false;}
		if (!$("input[name='route']:checked").val()) { alert('알게된 경로를 선택하세요');return false;}
		if ($("textarea").val().length==0) { alert('9.소감을 남겨주세요');$("textarea").focus();return false;}
		if ($("#age").val()=='') { alert('10.연령대를 선택하세요');return false;}
		if ($("#gender").val()=='') { alert('10.성별을 선택하세요');return false;}
		if ($("#member").val()=='') { alert('10.인원수를 선택하세요');return false;}
		if ($("#name").val()=='') { alert('이름을 입력해주세요');$("#name").focus();return false;}
		if ($("#phone").val()=='') { alert('전화번호를 입력해주세요');$("#phone").focus();return false;}
		$("#survey").submit();
	})
</script>

