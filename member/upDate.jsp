<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.kmc.carry.CrMember" %>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr" />
<%

	String mem_id = (String)session.getAttribute("mem_id");
	CrMember cb = (CrMember)bMgr.getMember(mem_id);
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>캐리비어ㅣ개인 정보 수정</title>
<link rel="shortcut icon" href="../imgs/fv_beer.ico">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="../css/boot.css">
<script>
	function update(){
		if(document.upFrm.pwd.value == ""){
			alert("비밀번호를 입력해주세요.");
			document.upFrm.pwd.focus();
			return;
		}
		if(document.upFrm.name.value == ""){
			alert("이름을 변경해주세요.");
			document.upFrm.name.focus();
			return;
		}

		document.upFrm.submit();
	}
	
	function deleteid( ){	
		var pop;
		window.onunload = function() { pop.close(); }
		
		var widthX = (window.screen.width / 2) - (300 / 2);
		var heightY = (window.screen.height / 2) - (150 / 2);
		
	    url = "deleteID.jsp"
	    pop = window.open(url, 'deleteID', 'width=300, height=150, left='+widthX+', top='+heightY+'');
	 }
	 

</script>
</head>
<body>
	<div class="container">
		<h2>개인정보수정</h2>
		<form action="upDateOk.jsp" method="post" name="upFrm" enctype="multipart/form-data">
			<ul class="bs-input">
				<li>
					<div class="input-group">
						<span class="input-group-text"><i class="bi bi-person-circle"></i>&nbsp; 아이디</span>
						<input id="id" type="text" name="mem_id" value="<%=cb.getMem_id() %>" readonly class="form-control">
					</div>
				</li>
				<li>
					<div class="input-group">
						<span class="input-group-text"><i class="bi bi-person-circle"></i>&nbsp; 이름</span>
						<input type="text" name="name" value="<%=cb.getName() %>">
					</div>
				</li>
				<li>
					<div class="input-group">
						<span class="input-group-text"><i class="bi bi-key-fill"></i>&nbsp; 비밀번호</span>
						<input type="password" name="pwd" value="<%=cb.getPwd() %>" >
					</div>
				</li>
				<li>
					<div class="input-group">
						<span class="input-group-text"><i class="bi bi-calendar2-day"></i>&nbsp; 생일</span>
						<input type="text" name="birth" value="<%=cb.getBirth( )%>" >
					</div>
				</li>
				<li>
				<%
					if(cb.getFilename() != ""){
				%>
					<div class="input-group">
						<span class="input-group-text"><i class="bi bi-card-image"></i>&nbsp; 파일명</span>
						<input name="filename" type="file"  class="form-control">
					</div>
					<img class="rounded mx-auto d-block img-thumbnail" src="../upload/<%=cb.getFilename() %>" alt="증명사진"/>
				<%
					}else {
				%>
					<div class="input-group">
						<span class="input-group-text"><i class="bi bi-card-image"></i>&nbsp; 파일명</span>
						<input type="file" name="filename" value="첨부 된 파일이 없습니다." readonly class="form-control">
					</div>
				<%
				}
				%>
				</li>
			</ul>
		</form>
		<div class = "upbtncon">
			<div class="btn-group">
				<button class="btn btn-danger" onclick="javascript:location.href='myPage.jsp'">돌아가기</button>
				<button class="btn btn-primary" onclick="update()">수정</button>
			</div>
			<button class="btn btn-secondary" onclick="deleteid( )">회원 탈퇴</button>
		</div>
	</div>
</body>
</html>