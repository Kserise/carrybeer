<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 탈퇴 확인 </title>
 <%
 	if(session.getAttribute("mem_id")==null){
%>
 <script>
 	alert("로그인이 필요합니다..");
 	location.href="../index.jsp";
 </script>
 <%
 	}
 %>
 <link rel="shortcut icon" href="./imgs/fv_beer.ico">
 <link rel="stylesheet" href="../css/boot.css"/>
<link rel="stylesheet" href="../css/bootstrap.min.css"/>
<style>
	a { margin-top:10px; }
</style>
</head>
<body bgcolor="#b4b4b4">
	<div align="center" class="confirmbox" >
		<p>정말로 탈퇴하시겠습니까?</p>
		<a href="#"  class="btn btn-outline-secondary btn-sm"  onclick="javascript:location.href='deleteIDProc.jsp'">네</a>
		<a href="#"  class="btn btn-warning btn-sm"  onclick="self.close()">아니오</a>
	</div>
</body>
</html>