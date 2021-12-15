<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr" />
<%
	String brname = request.getParameter("brname");
	String mem_id = (String)session.getAttribute("mem_id");
	boolean check = bMgr.checkMyBeer(mem_id, brname);
	out.println(brname);
	out.println(mem_id);
	if(check != true){
%>
<script>
 	alert("이미 삭제되었습니다.");
</script>
<%
	}else {
		boolean flag = bMgr.deleteMyBeer(mem_id, brname);
		if(flag == true){
%>
<script>
 	alert("삭제되었습니다.");
</script>
<%
		}else {
%>
<script>
	alert("삭제에 실패하였습니다.");
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