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
    <div class="background">
		<div></div>
	</div>

	<div class="container">
		<aside>
			<nav>
				<ul>
					<li><a href="myPage.jsp">마이페이지</a></li>
					<li class="select"><a href="upDate.jsp">개인정보수정</a></li>
					<%if(cb.getAdmin() == 1){ %>
					<li><a href="../beerinfor/beerInsert.jsp">맥주정보 등록</a></li>
					<%} %>
				</ul>
			</nav>
		</aside>
		<section>
			<form action="upDateOk.jsp" method="post" name="upFrm" enctype="multipart/form-data">
				<ul>
					<li>
						<h3>비밀번호 변경</h3>
							<input id="id" type="text" name="mem_id" value="<%=cb.getMem_id() %>" readonly class="form-control">
							<input type="password" name="pwd" value="<%=cb.getPwd() %>"  class="form-control">
					</li>
					<li>
						<h3>첨부파일(사진)</h3>
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
					<li>
						<h3>이름</h3>
						<input type="text" name="name" class="form-control" placeholder="<%=cb.getName() %>">
					</li>
					<li>
						<h3>생일</h3>
						<input type="text" name="birth" value="<%=cb.getBirth( )%>"  class="form-control">
					</li>
				</ul>
			</form>
		</section>
		<div class = "upbtncon">
			<button class="btn btn-danger" onclick="javascript:location.href='myPage.jsp'">돌아가기</button>
			<button class="btn btn-primary" onclick="update()">수정</button>
			<button class="btn btn-secondary" onclick="deleteid( )">회원 탈퇴</button>
		</div>
	</div>
	<script src="../js/boot.js"></script>
</body>
</html>