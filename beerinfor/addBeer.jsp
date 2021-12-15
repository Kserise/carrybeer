<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr" />
<%
	String brname = request.getParameter("brname");
	String mem_id = (String)session.getAttribute("mem_id");
	boolean check = bMgr.checkMyBeer(mem_id, brname);
	if(check == true){
%>
<script>
 	alert("이미 즐겨찾기에 등록되었습니다.");
</script>
<%
	}else {
		boolean flag = bMgr.addMyBeer(mem_id, brname);
		if(flag == true){
%>
<script>
 	alert("즐겨찾기에 추가 되었습니다.");
</script>
<%
		}else {
%>
<script>
	alert("즐겨찾기 추가에 실패하였습니다.");
</script>
<%
		}
%>
<%
	}
%>
<script>
	self.close();
</script>