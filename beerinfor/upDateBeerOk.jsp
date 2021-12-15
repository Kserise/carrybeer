<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr"/>
<%
	boolean flag = bMgr.updatebeer(request);
	
	if(flag	== true){
%>
<script>
	alert("맥주정보 수정이 완료되었습니다.");
	location.href="../sub03.jsp";
</script>
<%
	}else{
%>
<script>
	alert("업데이트 실패");
	location.href="upDateBeer.jsp";
</script>
<%
	}
%>