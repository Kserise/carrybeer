<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr" />

<%
	boolean flag = bMgr.insertBeer(request);

	if(flag){
%>
	<script>
	alert("등록되었습니다.");
	location.href="beerInsert.jsp";
	</script>
<%
	} else{
%>
	<script>
	alert("등록에 실패하였습니다.");
	location.href="beerInsert.jsp";
	</script>
<%
}
%>