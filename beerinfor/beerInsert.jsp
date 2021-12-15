<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>캐리비어ㅣ맥주정보입력</title>
<link rel="shortcut icon" href="../imgs/fv_beer.ico">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="../css/boot.css">
<!--
<style>
	body { background:#ccc; }
	.container { width:500px; margin:30px auto 0; padding:30px 40px 20px; background:#fff; border-radius:25px; box-shadow:0px 0px 5px #000; }
	.container h2 { text-align:center; margin-bottom:20px; }
	ul.bs-input { padding-left:0; }
	ul li { list-style:none; margin-bottom:10px; }
</style>
-->
<script>
	function add(){
		if(document.beerFrm.brname.value == ""){
			alert("맥주명을 입력해주세요.");
			document.beerFrm.brname.focus();
			return;
		}
		
		if(document.beerFrm.made.value == ""){
			alert("생산국가를 입력해주세요.");
			document.beerFrm.made.focus();
			return;
		}
		
		if(document.beerFrm.alcol.value == ""){
			alert("도수를 입력해주세요(숫자로).");
			document.beerFrm.alcol.focus();
			return;
		}
		
		if(document.beerFrm.vari.value == ""){
			alert("맥주종류를 입력해주세요.");
			document.beerFrm.vari.focus();
			return;
		}
		
		document.beerFrm.submit();
	}
</script>
</head>
<body>
<div class="container">
	<h2>맥주 등록 페이지</h2>
	<form action="beerInsertOk.jsp" name="beerFrm" method="post" enctype="multipart/form-data">
		<ul class="bs-input">
			<li><input class="form-control" type="text" name="brname" placeholder="맥주명"  autofocus></li>
			<li><input class="form-control" type="text" name="made" placeholder="생산국가" ></li>
			<li><input class="form-control" type="text" name="alcol" placeholder="도수" ></li>
			<li><input class="form-control" type="text" name="madearea" placeholder="제조사" ></li>
			<li><input class="form-control" type="text" name="vari" placeholder="맥주종류" ></li>
			<li><input class="form-control" type="text" name="birth" placeholder="제조년월" ></li>
			<li>
	            <div class="input-group taste">
	               <span>씁쓸함</span>
	               <input type="range" name="flavor" class="form-range rangebar"  value="2" min="0" max="4" id="customRange2">
	               <span>달콤함</span>
	            </div>
	         </li>
			<li>
				<div class="input-group">
					<label class="input-group-text" for="inputGroupSelect01">맥주 향</label>
					<select name="smell" class="form-select" id="inputGroupSelect01">
							<option value="선택안함" selected>==== 선택하세요 ====</option>
							<option value="라벤더향">라벤더향</option>
							<option value="민트향">민트향</option>
							<option value="박하향">박하향</option>
							<option value="라거향">라거향</option>
					</select>
				</div>
			</li>
			<li><input class="form-control" type="file" name="filename" ></li>
			<li><input class="form-control" type="text" name="search" placeholder="해당 맥주의 검색키워드들을 적어주세요." ></li>
		</ul>
	</form>
	
	<button class="btn btn-primary" onclick="add()">등록하기</button>
	<button class="btn btn-danger" onclick="javascript:location.href='../member/myPage.jsp'">돌아가기</button>
</div>
</body>
</html>