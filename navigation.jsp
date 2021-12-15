<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="navigation">
		<div class="nav-btn"><i class="fas fa-chevron-circle-left"></i></div>
        <ul>
            <li class="list active">
                <a href="member/myPage.jsp">
                    <span class="icon"><i class="fas fa-home"></i></span>
                    <span class="text">마이페이지</span>
                </a>
            </li>
            <li class="list">
                <a href="member/upDate.jsp">
                    <span class="icon"><i class="fas fa-user-edit"></i></span>
                    <span class="text">내 정보</span>
                </a>
            </li>
            <li class="list">
                <a href="MyBeer.jsp">
                    <span class="icon"><i class="fas fa-beer"></i></span>
                    <span class="text">나의 맥주</span>
                </a>
            </li>
            <div class="indicator"></div>
        </ul>
    </div>

    <script src="js/navigation.js"></script>