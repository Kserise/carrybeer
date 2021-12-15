<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr" />
<%
	String mem_id = request.getParameter("mem_id");
	String pwd =request.getParameter("pwd");
	
	if(bMgr.checkmem(mem_id, pwd)){
		session.setAttribute("mem_id",mem_id);
%>
<script>
	alert("로그인 되셨습니다.");
	location.href="../index.jsp";
</script>
<%
	} else {
%>
<script>
	alert("로그인에 실패했습니다.");
	location.href="login.jsp";
</script>
<%
	}
%>
