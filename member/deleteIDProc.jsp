<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr" />

<%
	String mem_id = (String)session.getAttribute("mem_id");
	if(mem_id != null) {	
		bMgr.deleteMem(mem_id);
		session.invalidate( );
%>
<script>
	opener.document.location.href="../index.jsp";
	window.close( );
</script>
<%
	} 
%>