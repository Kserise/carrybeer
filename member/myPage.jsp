<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr" />
<jsp:useBean id="mem" class="com.kmc.carry.CrMember" />

<%
	String mem_id = "";
	String img = "";
	String filename = "";
	String filesize = "";
	
	application.getContextPath();
	request.getSession().getServletContext().getRealPath("/");
	application.getRealPath("/carrybeer");
	
	if((String)session.getAttribute("mem_id") != null){
	mem_id = (String)session.getAttribute("mem_id");
	mem = bMgr.getMember(mem_id);
	int admin = mem.getAdmin();
		if(mem.getFilename() != null) {
			filesize = mem.getFilesize();
			filename = mem.getFilename();
		}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>캐리비어ㅣ마이페이지</title>
<link rel="shortcut icon" href="./imgs/fv_beer.ico">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="../css/boot.css">
</head>
<body>
    <div class="background">
		<div></div>
	</div>

	<div class="container">
		<aside>
			<nav>
				<ul>
					<li class="select"><a href="myPage.jsp">마이페이지</a></li>
					<li><a href="upDate.jsp">개인정보수정</a></li>
					<%if(admin == 1){ %>
					<li><a href="../beerinfor/beerInsert.jsp">맥주정보 등록</a></li>
					<%} %>
				</ul>
			</nav>
		</aside>
		<section>
				<ul>
					<li>
						<h3>아이디</h3>
						<input type="text" value="<%=mem.getMem_id() %>" readonly class="form-control">
					</li>
					<li>
						<h3>이름</h3>
						<input type="text" value="<%=mem.getName() %>" readonly class="form-control">
					</li>
					<li>
						<h3>첨부파일(사진)</h3>
					<%
						if(filename != ""){
					%>
						<div class="input-group">
							<span class="input-group-text"><i class="bi bi-card-image"></i>&nbsp; 파일명</span>
							<input type="text" value="<%=filename %>" readonly class="form-control">
						</div>
						<img class="rounded mx-auto d-block img-thumbnail" src="../upload/<%=filename %>" alt="증명사진"/>
					<%
						}else {
					%>
						<div class="input-group">
							<span class="input-group-text"><i class="bi bi-card-image"></i>&nbsp; 파일명</span>
							<input type="text" value="첨부 된 파일이 없습니다." readonly class="form-control">
						</div>
						<%
						}
						%>
					</li>
					<li>
						<h3>생일</h3>
						<input type="text" value="<%=mem.getBirth() %>" readonly class="form-control">
					</li>
				</ul>
		</section>
		<div class = "upbtncon">
	            <% if(admin == 1){ %>
	            <button class="btn btn-primary" onclick="javascript:location.href='../beerinfor/beerInsert.jsp'">맥주 등록</button>
	            <button class="btn btn-danger" onclick="javascript:location.href='../sub03.jsp'">맥주 수정</button>
	            <button class="btn btn-secondary" onclick="location.href='../index.jsp'">돌아가기</button>
	            <%}else{ %>
	            <button class="btn btn-danger" onclick="location.href='upDate.jsp'">개인정보 수정</button>
	            <button class="btn btn-secondary" onclick="location.href='../index.jsp'">돌아가기</button>
	            <button class="btn btn-warning" onclick="location.href='../MyBeer.jsp'">나의 맥주</button>
	            <%} %>
         </div>
    </div>
	<script src="../js/boot.js"></script>
<%
	}else {
%>
<script>
	alert("로그인 되지 않았습니다.");
	location.href="login.jsp";
</script>
<%
	}
%>
</body>
</html>
