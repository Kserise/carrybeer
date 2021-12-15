<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.kmc.carry.CrBeer" %>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr" />
<%
	request.setCharacterEncoding("utf-8");

	String brname = "";
	if(request.getParameter("brname") != null){
		brname = request.getParameter("brname");
	}
%>
<!DOCTYPE html>
<html>
<%
	if(brname == ""){
%>
	<script>
		alert("맥주를 찾을 수 없습니다.");
		location.href="sub03.jsp";
	</script>
<%
	}
	
	CrBeer cb = bMgr.getBeer(brname);
	
	String bbname = cb.getBrname();
%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="../css/boot.css">
<script>

	function update(){
		if(document.upFrm.made.value == ""){
			alert("국가를 입력해주세요.");
			document.upFrm.made.focus();
			return;
		}
		if(document.upFrm.alcol.value == ""){
			alert("도수를 입력해주세요.(숫자로만)");
			document.upFrm.alcol.focus();
			return;
		}

		if(document.upFrm.vari.value == ""){
			alert("맥주종류를 입력해주세요.");
			document.upFrm.vari.focus();
			return;
		}
		document.upFrm.submit();
	}
	
</script>
</head>
<body>
	<div class="container">
		<h2>맥주정보수정</h2>
		<form action="upDateBeerOk.jsp" method="post" name="upFrm" enctype="multipart/form-data">
		<ul class="bs-input">
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-person-circle"></i>&nbsp; 맥주명</span>
					<input type="text" name="brname" value="<%=cb.getBrname() %>" readonly class="form-control">
				</div>
			</li>
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-person-circle"></i>&nbsp; 국가</span>
					<input type="text" name="made" value="<%=cb.getMade() %>">
				</div>
			</li>
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-person-circle"></i>&nbsp; 도수</span>
					<input type="text" name="alcol" value="<%=cb.getAlcol() %>" >
				</div>
			</li>
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-calendar2-day"></i>&nbsp; 생산지</span>
					<input type="text" name="madearea"  value="<%=cb.getMadearea() %>" >
				</div>
			</li>
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-calendar2-day"></i>&nbsp; 맥주종류</span>
					<input type="text" name="vari"  value="<%=cb.getVari() %>" >
				</div>
			</li>
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-calendar2-day"></i>&nbsp; 생산연도</span>
					<input type="date" name="birth" >
				</div>
			</li>
			<li>
	            <div class="input-group taste">
	               <span>씁쓸함</span>
	               <input type="range" name="flavor" class="form-range rangebar"  value="2" min="0" max="4" id="customRange2">
	               <span>달콤함</span>
	            </div>
	         </li>
			<li>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-calendar2-day"></i>&nbsp; 향</span>
					<input type="text" name="smell"  value="<%=cb.getSmell() %>" >
				</div>
			</li>
			<li>
			<%
				if(cb.getFilename() != "" || cb.getFilename() == null){
			%>
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-card-image"></i>&nbsp; 파일명</span>
					<input name="filename" type="file"  class="form-control">
				</div>
				<img class="rounded mx-auto d-block img-thumbnail" src="../upload/beer/<%=cb.getFilename() %>" alt="증명사진"/>
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
				<div class="input-group">
					<span class="input-group-text"><i class="bi bi-calendar2-day"></i>&nbsp; 검색키워드</span>
					<input type="text" name="search"  value="<%=cb.getSearch() %>">
				</div>
			</li>
		</ul>
		</form>
		<div class="btn-group">
			<button class="btn btn-danger" onclick="javascript:location.href='../sub03.jsp'">돌아가기</button>
			<button class="btn btn-primary" onclick="update()">맥주 수정</button>
		</div>
	</div>
</body>
</html>