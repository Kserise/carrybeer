<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
	<link rel="stylesheet" href="./css/navigation.css">
	<header>
		<nav>
            <a href="#" id="open"><i class="fas fa-bars"></i></a>
            <a href="index.jsp" class="logo"><img src="./imgs/wlogo.png" alt="캐리비어로고"></a>
<%
		String id = "";
		if(session.getAttribute("mem_id") != null){
			id = (String)session.getAttribute("mem_id");
		}
%>
            <ul class="topmenu text">
<%
		if(id == ""){
%>
                <li><a href="member/login.jsp">로그인</a></li>
                <li><a href="member/joinForm.jsp">회원가입</a></li>
                <%
		}else {
                %>
				<li><a href="member/myPage.jsp">내 정보</a></li>
				<li><a href="member/logOut.jsp">로그아웃</a></li>
<%
		}
%>
            </ul>
            <ul class="topmenu icon">
                <%if(id == ""){ %>
                    <li><a href="member/login.jsp"><i class="fas fa-user-circle"></i></a></li>
                <%}else { %>
                    <li><a href="member/myPage.jsp"><i class="fas fa-user-circle"></i></a></li>
                    <li><a href="member/logOut.jsp"><i class="fas fa-sign-out-alt"></i></a></li>
                <%} %>
            </ul>
        </nav>
        <div id="navbar"></div>
        <a href="#" id="black_cover"></a>
    </header>
    <aside class="sidenav">
        <ul class="mainmenu">
            <li>
                <a href="#">
                    <span class="s-icon"><i class="fas fa-home"></i></span>
                    <span class="title">Beer Story</span>
                </a>
                <ul class="submenu">
                    <li><a href="sub01.jsp">맥주의 역사</a></li>
                    <li><a href="sub01.jsp">맥주의 효능</a></li>
                </ul>
            </li>
            <li>
                <a href="#">
                    <span class="s-icon"><i class="fas fa-user"></i></span>
                    <span class="title">Beer Recipe</span>
                </a>
                <ul class="submenu">
                    <li><a href="sub02.jsp">맥주 제조방식</a></li>
                    <li><a href="sub02.jsp">맥주의 종류</a></li>
                </ul>
            </li>
            <li>
                <a href="#">
                    <span class="s-icon"><i class="fas fa-question-circle"></i></span>
                    <span class="title">Beer World</span>
                </a>
                <ul class="submenu">
                    <li><a href="sub03.jsp">나라별 대표맥주</a></li>
                </ul>
            </li>
        </ul>
    </aside>
   <%@ include file="navigation.jsp" %>

