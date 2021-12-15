<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mem" class="com.kmc.carry.CrMember" scope="session"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>캐리비어ㅣ로그인</title>
 <%
 	if(session.getAttribute("mem_id")!=null){
%>
 <script>
 	alert("이미 로그인하셨습니다.");
 	location.href="../index.jsp";
 </script>
 <%
 	}
 %>
 <link rel="shortcut icon" href="./imgs/fv_beer.ico">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="../css/boot.css">
</head>
<script src="../js/jquery-1.12.4.min.js"></script>
<script>
function login() {
	if(document.logFrm.mem_id.value == null){
		alert("아이디를 입력해주세요.");
		document.logFrm.mem_id.focus();
		return;
	}
	if(document.logFrm.pwd.value == null){
		alert("아이디를 입력해주세요.");
		document.logFrm.pwd.focus();
		return;
	}
	document.logFrm.submit();
}
</script>
<body>
<div class="media">
	<div class="container">
		<form action="loginProc.jsp" method="post" name="logFrm">
			<h2>로그인</h2>
			<ul class="bs-input">
				<li>
					<div class="input-group">
						<span class="input-group-text"><i class="bi bi-person-circle"></i>&nbsp; 아이디</span>
						<input class="form-control" type="text" name="mem_id" placeholder="아이디" autofocus>
					</div>
				</li>
				<li>
					<div class="input-group">
						<span class="input-group-text"><i class="bi bi-key-fill"></i>&nbsp; 비밀번호</span>
						<input class="form-control" type="password" name="pwd" placeholder="비밀번호" >
					</div>
				</li>
			</ul>
		</form>
		<button class="btn btn-success" onClick="login()">로그인</button>
		<button class="btn btn-primary" onClick="javascript:location.href='joinForm.jsp'">회원가입</button>
	</div>
</div>


</body>
</html>