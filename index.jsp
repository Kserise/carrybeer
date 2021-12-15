<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<title>당신을 위한 맥주지침서 | 캐리비어</title>
<link rel="shortcut icon" href="./imgs/fv_beer.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/script.js"></script>
</head>
<body>
    <div class="bg">
        <header>
            <nav>
                <a href="index.jsp" class="logo"><img src="./imgs/logo.png" alt="캐리비어로고"></a>
                <a href="#" id="open"><i class="fas fa-bars"></i></a>
                <ul class="topmenu text">
			<%
				String id = "";
				if(session.getAttribute("mem_id")!=null){
					id = (String)session.getAttribute("mem_id");
				}
				
				if(id == ""){
			%>
                    <li><a href="member/login.jsp">로그인</a></li>
                    <li><a href="member/joinForm.jsp">회원가입</a></li>
        	<%}else{ %>
                    <li><a href="member/myPage.jsp">내 정보</a></li>
                    <li><a href="member/logOut.jsp">로그아웃</a></li>
            <%} %>
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

            <a href="#" id="black_cover"></a>

            <div id="navbar">
                <a href="#" id="close"><i class="fas fa-times"></i></a>
                <ul id="mainmenu">
                    <li><a href="#">beer story</a>
                        <ul class="submenu">
                            <li><a href="sub01.jsp">맥주의 역사</a></li>
                            <li><a href="sub01.jsp">맥주의 효능</a></li>
                        </ul>
                    </li>
                    <li><a href="#">beer recipe</a>
                        <ul class="submenu">
                            <li><a href="sub02.jsp">맥주 제조방식</a></li>
                            <li><a href="sub02.jsp">맥주의 종류</a></li>
                        </ul>
                    </li>
                    <li><a href="#">beer world</a>
                        <ul class="submenu">
                            <li><a href="sub03.jsp">나라별 대표맥주</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </header>
        <section>
            <div class="titlebox">
                <h2>everything about beer</h2>
            </div>
            <div class="buttonbox">
                <ul class="mainbutton">
                    <li>
                        <svg class="fhdline" width="100%" height="100%">
                            <line x1="0" y1="0" x2="1050" y2="0" class="top" />
                            <line x1="350" y1="85" x2="-700" y2="85" class="bottom" />
                            <line x1="0" y1="85" x2="0" y2="-170" class="left" />
                            <line x1="350" y1="0" x2="350" y2="255" class="right" />
                        </svg> 
                        <svg class="hdline" width="100%" height="100%">
                            <line x1="0" y1="0" x2="780" y2="0" class="top" />
                            <line x1="260" y1="85" x2="-520" y2="85" class="bottom" />
                            <line x1="0" y1="85" x2="0" y2="-170" class="left" />
                            <line x1="260" y1="0" x2="260" y2="255" class="right" />
                        </svg> 
                        <a href="sub01.jsp">beer story
                            <p>비어스토리</p>
                        </a>
                      </li>
                    <li>
                        <svg class="fhdline" width="100%" height="100%">
                            <line x1="0" y1="0" x2="1050" y2="0" class="top" />
                            <line x1="350" y1="85" x2="-700" y2="85" class="bottom" />
                            <line x1="0" y1="85" x2="0" y2="-170" class="left" />
                            <line x1="350" y1="0" x2="350" y2="255" class="right" />
                        </svg> 
                        <svg class="hdline" width="100%" height="100%">
                            <line x1="0" y1="0" x2="780" y2="0" class="top" />
                            <line x1="260" y1="85" x2="-520" y2="85" class="bottom" />
                            <line x1="0" y1="85" x2="0" y2="-170" class="left" />
                            <line x1="260" y1="0" x2="260" y2="255" class="right" />
                        </svg> 
                        <a href="sub02.jsp">beer recipe
                            <p>비어레시피</p>
                        </a>
                    </li>
                    <li>
                        <svg class="fhdline" width="100%" height="100%">
                            <line x1="0" y1="0" x2="1050" y2="0" class="top" />
                            <line x1="350" y1="85" x2="-700" y2="85" class="bottom" />
                            <line x1="0" y1="85" x2="0" y2="-170" class="left" />
                            <line x1="350" y1="0" x2="350" y2="255" class="right" />
                        </svg> 
                        <svg class="hdline" width="100%" height="100%">
                            <line x1="0" y1="0" x2="780" y2="0" class="top" />
                            <line x1="260" y1="85" x2="-520" y2="85" class="bottom" />
                            <line x1="0" y1="85" x2="0" y2="-170" class="left" />
                            <line x1="260" y1="0" x2="260" y2="255" class="right" />
                        </svg>  
                        <a href="sub03.jsp">beer world 
                        <p>비어월드</p>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
    </div>
</body>
</html>
