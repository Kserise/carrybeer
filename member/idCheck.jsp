<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr" />
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("mem_id");
	
	boolean result = bMgr.checkid(id);
	// MemberMgr ��ü�� checkId( )�� ���̵� �ߺ��� üũ�Ѵ�.
%>
<title>ID �ߺ�üũ</title>
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
			if (result)  out.println("�� �̹� �����ϴ� ID�Դϴ�.<p>");
			else out.println("�� ��� ���� �մϴ�.<p>");
		%>
		<a href="#"  class="btn btn-outline-secondary btn-sm"  onclick="self.close()">�ݱ�</a>
	</div>
</body>
</html>