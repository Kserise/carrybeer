<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr" />
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("mem_id");
	
	boolean result = bMgr.checkid(id);
	// MemberMgr 객체의 checkId( )로 아이디 중복을 체크한다.
%>
<title>ID 중복체크</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../css/bootstrap.min.css"/>
<style>
	a { margin-top:10px; }
</style>
</head>
<body bgcolor="#b4b4b4">
	<div align="center">
		<br /> <b><%=id%></b>
		<%
			if (result)  out.println("는 이미 존재하는 ID입니다.<p>");
			else out.println("는 사용 가능 합니다.<p>");
		%>
		<a href="#"  class="btn btn-outline-secondary btn-sm"  onclick="self.close()">닫기</a>
	</div>
</body>
</html>