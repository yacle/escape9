<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전자서명</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/signature_pad@2.3.2/dist/signature_pad.min.js"></script>
</head>
<style>
.signature-pad {
  position: absolute;
  left: 0;
  top: 0;
  width:1000;
  height:1105;
}
.signature-pad2 {
  position: absolute;
  left:700;
  top:1135;
  width:300;
  height:100;
}
table{
  position: absolute;
  width:1000;
  height:1208;
  left: 0;
  top: 0;
}
strong{
	text-decoration: underline;
}
p.serif {
    font-family: "Times New Roman", Times, serif;
}
th{
	padding: 0px;
}
td{
	border: 1px solid black;
	padding-left: 20px;
	font-size: 21px;
}
.info{
  position: absolute;
  left: 0;
  top: 1250;
  text-align: center;
}
button{
	font-size:20px;
}
</style>
<body>
		<table>
			<thead>
				<tr height="62px">
					<th style="text-align:center; width:70%"><h3>이스케이프9 사전 안내문 및 서약서</h3></th>
					<th style="text-align:right;">
					<img class="logo" src="/images/logo2.jpg" width="82" height="62" alt="아이콘이미지">
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="2">
						<p class="italic">저희 ESCAPE9 을 방문해 주신 고객 여러분들께서는 아래사항을 꼭 지켜주시기 바랍니다.</p>
						<p>
						<strong>[게임진행에 관한 서약]</strong><br/>
						1.<b>힌트는 총 3번 주어집니다.</b> 내부에 비치된 키보드를 사용하여 진행자에게 질문을 하시면 됩니다.<br/>
						&#8193;소품이 작동을 하지 않거나 게임 진행에 문제 또는 불편하신 점이 있을 시에도 알려주시기 바랍니다.<br/>
						2.<b>방 내부의 기물들의 파손에 주의해주십시오.</b><br/>
						&#8193;게임진행에는 지나친 힘을 사용하는 부분이 없습니다. 고객의 고의 또는 과실로 인해 기물을 파손하실 경우 이에 대한
						손해배상을 하셔야 합니다.<br/> 특수효과 및 기술적인 장치가 많사오니 더욱 주의하시길 바랍니다.
						</p><br/>
						<p>
						<strong>[정보보안에 관한 서약]</strong><br/>
						&#8193;ESCAPE9을 방문하는 다음 손님들을 위하여 다음과 같은 주의사항을 지켜주시기 바랍니다.<br/>
						1.<b>테마별 내부 구조 및 물품들에 대한 촬영 및 정보유출은 삼가주십시오. </b>내부 이외 촬영은 가능합니다.<br/>
						2. 게임 진행의 모든 지적재산권은 ESCAPE9 에 귀속되오니 다른 상업적인 목적으로 사용될 경우 민.형사상의 책임을 지게 될 수 있습니다.
						</p><br/>
						<p>
						<strong>[안전 및 소지품 보관에 관한 서약]</strong><br/>
						1. 각 게임은 1시간 정도 소요됩니다. <b>폐쇄공포증 환자 및 임산부 등 밀폐된 장소에 머무는 것이 힘드신 손님께서는
						사전에 알려주시기 바랍니다.</b><br/> 각 게임은 항시 모니터 되고 있습니다.<br/>
						2. 저희 ESCAPE9은 방문하시는 분들의 소지품 보관을 위해 사물함을 제공해 드립니다.<br/> 귀중품이 있을 경우
						카운터에 별도로 보관하시기 바라며, 별도 보관 외의 소지품의 분실에 대해서는 책임지지 않습니다.
						</p>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>
						<div class="serif">
							<div align="center">{개인정보 보관 이용 및 수집에 관한 동의}</div><br/>
							이용자 본인은 아래의  개인정보 수집 및 이용하는 것에 동의합니다.<br/>
							&#8193;&#8193;{개인 정보 수집 및 이용목적}<br/>
							- 예약정보를 확인 및 관리하고, 필요시 예약 이행 여부 확인을 위해 예약자에게 연락을 취할 목적<br/>
							- 이벤트 및 프로모션 등 내부행사 소식을 알리기 위한 목적<br/>
							&#8193;&#8193;{개인정보의 항목}<br/>
							- 필수입력 사항 : 이용자의 식별을 위한 정보 (이름, 휴대폰 번호, 이메일주소)<br/>
							&#8193;&#8193;{개인정보의 보유 및 이용기간}<br/>
							- 개인정보의 수집은 관련 법령의 규정에 의거 5년간 보유합니다.<br/>
						</div>
						</p>
						<p class="italic">
						동사는 상기 안내된 목적 이외에 어떠한 용도로도 개인정보를 사용하지 않습니다.
						</p>
					</td>
				</tr>
				<tr height="62px">
					<td style="text-align:center;">상기내용을 확인하였습니다.</td>
					<td>서명</td>
				</tr>
			</tbody>
		</table>
		<canvas id="signature-pad" class="signature-pad" width=1000 height=1105></canvas>
		<canvas id="signature-pad2" class="signature-pad2"></canvas>
		<div class="info">
			<form name="imgForm" id="imgForm" action="/signResult" method="post">
				<input type="hidden" id="imgData" name="imgData">
				<b>이름 : </b><input type="text" name="name" id="name"/>
				<b>전화번호 : </b><input type="number" name="phone" id="phone"/>
				<b>이메일 : </b><input type="email" name="email" id="email"/>
		    </form>
			<button id="save">저장</button>
			<button id="clear">지우기</button>
			<button id="cancle">취소</button>
		</div>
	</body>
</html>
<script>
var signaturePad = new SignaturePad(document.getElementById('signature-pad'), {
	  backgroundColor: 'rgba(255, 255, 255, 0)',
	  penColor: 'rgb(255, 0, 0)'
	});
var signaturePad2 = new SignaturePad(document.getElementById('signature-pad2'), {
	  backgroundColor: 'rgba(255, 255, 255, 0)',
	  penColor: 'rgb(255, 0, 0)'
	});
$("#save").click(function(){
	if ($("#name").val()=='') { alert('이름을 입력해주세요');$("#name").focus();return false;}
	if ($("#phone").val()=='') { alert('전화번호를 입력해주세요');$("#phone").focus();return false;}
	if ($("#email").val()=='') { alert('이메일을 입력하세요');$("#email").focus();return false;}
	var data = signaturePad2.toDataURL('image/png');
	$.ajax({
		type: "post",
		async: false,
		url: "/signResult",
		data:{
			"imgData": data,
			"name": $("#name").val(),
			"phone":$("#phone").val(),
			"email": $("#email").val()
		}
	}).done(function(){
		window.alert("저장되었습니다.");
		window.close();
	})
})

$("#clear").click(function(){
	signaturePad.clear();
	signaturePad2.clear();
})

$("#cancle").click(function(){
	if($("#name").val()!=''){
		var data = signaturePad2.toDataURL('image/png');
		$.ajax({
			type: "post",
			async: false,
			url: "/signCancle",
			data:{
				"imgData": data,
				"name": $("#name").val(),
				"phone":$("#phone").val(),
				"email": $("#email").val()
			}
		}).done(function(){
			window.close();
		})
	}else{
		window.close();
	}
})
</script>