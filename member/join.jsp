<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr" />
<%
	request.setCharacterEncoding("utf-8");
	boolean flag = false;
	flag = bMgr.joinmem(request);
	if(flag == true){
%>
<script>
	alert("회원가입이 완료되었습니다.");
	location.href="../index.jsp";
</script>
<%
	} else{
%>
<script>
	alert("회원가입이 실패하였습니다.");
	history.back();
</script>
<%
	}
%>
