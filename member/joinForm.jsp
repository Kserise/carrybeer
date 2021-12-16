<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>캐리비어ㅣ회원가입</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="../css/boot-re.css">
<link rel="shortcut icon" href="../imgs/fv_beer.ico">
</head>
<script src="js/jquery-1.12.4.min.js"></script>
<script>


function idCheck(id) {
    if (id == "") { 
    alert("아이디를 입력해 주세요.");
    document.joinFrm.mem_id.focus( ); 
    return;
    }
    var pop;
    window.onunload = function( ){ pop.close();}
    url = "idCheck.jsp?mem_id=" + id; 
    pop = window.open(url, "IDCheck", "width=300, height=150");
 }
 
function join() {
	
	if(document.joinFrm.mem_id.value == "") { // 아이디 입력폼에 값이 없으면
		alert("아이디를 입력하세요.");
		document.joinFrm.mem_id.focus( ); // 아이디 입력폼에 커서를 위치시킨다.
		return;
	}
	   
	if(document.joinFrm.pwd.value == "" ) {
		alert("패스워드를 입력해주세요."); 
		document.joinFrm.pwd.focus();
		return;
	}
	
	if(document.joinFrm.repwd.value=="") {
		alert("비밀번호 확인을 입력하세요.");
		document.joinFrm.repwd.focus( );
		return;
	}
	
	if(document.joinFrm.pwd.value != document.joinFrm.repwd.value) {
		alert("비밀번호가 일치하지 않습니다.");
		document.joinFrm.repwd.value="";
		document.joinFrm.repwd.focus( );
		return;
	}
	
	if(document.joinFrm.name.value == "") {
		alert("이름을 입력해주세요.");
		document.joinFrm.name.focus();
		return;
	}
	
	document.joinFrm.submit();
}
</script>
<body>
<div class="container">
	<form action="join.jsp" method="post" name="joinFrm" enctype="multipart/form-data">
		<h2>회원가입</h2>
		<ul class="bs-input">
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-person-circle"></i>&nbsp; 아이디</span>
					<input class="form-control" type="text" name="mem_id" placeholder="아이디" >
					<input type="button" value="중복확인" onClick="idCheck(this.form.mem_id.value)" class="btn btn-secondary idcheck">
				</div>
			</li>
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-key-fill"></i>&nbsp; 비밀번호</span>
					<input class="form-control"  type="password" name="pwd" placeholder="비밀번호" >
					<input  class="form-control" type="password" name="repwd" placeholder="비밀번호 확인">
				</div>
			</li>
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-person-circle"></i>&nbsp; 이름</span>
					<input class="form-control"type="text" name="name" placeholder="이름">
				</div>
			</li>
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-card-image"></i>&nbsp; 첨부파일</span>
					<input class="form-control" class="file" type="file" name="filename">
				</div>
			</li>
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-calendar2-day"></i>&nbsp; 생일</span>
					<input class="form-control" type="date" name="birth" placeholder="2000-01-01">
				</div>
			</li>
		</ul>
	</form>
	<button class="btn btn-primary" onClick="join()">전 송</button>
	<button class="btn btn-danger" onClick="javascript:location.href='../index.jsp'">돌아가기</button>
</div>

</body>
</html>