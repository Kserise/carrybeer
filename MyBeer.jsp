<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.kmc.carry.CrBeer" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<title>당신을 위한 맥주지침서 | 캐리비어</title>
<link rel="shortcut icon" href="./imgs/fv_beer.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="./vegas/vegas.css">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/subcommon.css">
<link rel="stylesheet" href="./css/sub03.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="vegas/vegas.js"></script>
<script src="js/subheader.js"></script>
<script src="js/sub03script.js"></script>
</head>
<%@ include file="subheader.jsp" %>
<jsp:useBean id="bMgr" class="com.kmc.carry.BoardMgr"/>
<section>
        <div class="bn">
            <div class="blackbn">
                <h2 class="eng"><a href="#"><span>beer</span> world</a></h2>
            </div>
        </div>
</section>
<%
	request.setCharacterEncoding("utf-8");
	application.getContextPath();
	request.getSession().getServletContext().getRealPath("/");
	application.getRealPath("/carrybeer");
	String mem_id = "";
	int nowPage = 1;
	if(session.getAttribute("mem_id") != null){
		mem_id = (String)session.getAttribute("mem_id");
	}
%>

<%
	Vector<CrBeer> mlist = bMgr.getMyBeer(mem_id);
	int mlistSize = 0;
	mlistSize = mlist.size();
	if(mlistSize < 1){
%>
		<div class="empty">
			<h2>장바구니가 비었어요.. 채워주세요..</h2>
		</div>
<%
	}
%>
		<div class="space">
			<h2>나의 맥주</h2>
		</div>
        <article>
            <ul id="maincon2" class="hid">


<%
	for(int i=0; i<mlistSize; i++){
		CrBeer cb = mlist.get(i);
		String brname = cb.getBrname();
%>
                <li>
                    <div class="beerimg">
                    	<img src="./upload/beer/<%=cb.getFilename() %>" alt="맥주이미지">
                    </div>
                    <div class="beername">
                    	<div class="beertxt">
	                    	<p><span class="eng"><%=cb.getBrname() %></span><p>
	                        <p> <%=cb.getVari() %></p>
                    	</div>
                        <div class="tri">
                        	<a href="javascript:deleteMyBeer('<%=cb.getBrname() %>')">
               					<span style="color:red">
                        			<i class="fas fa-heart"></i>
                       			</span>
                  			</a>
                        </div>
                    </div>
                    <ul class="beercon">
                        <li>
                            <p class="bh5"><span>맥주</span>의 특징</p>
                            <p><span>제조사:</span> <%=cb.getMade() %></p>
                            <p><span>알코올 도수:</span> <%=cb.getAlcol() %></p>
                            <p><span>원산지:</span> <%=cb.getMadearea() %></p>
                            <p><span>종류:</span> <%=cb.getVari() %></p>
                            <p><span>출시 연도:</span> <%=cb.getBirth() %>년</p>
                            <p><span>맛: </span><%=cb.getFlavor() %></p>
                            <p><span>향: </span><%=cb.getSmell() %></p>
                        </li>
                    </ul>
                </li>
<%
	}
%>
            </ul>
            <div class="clear"></div>
            <!--  <a id="next" href="#">다음 페이지</a> -->
        </article>
<%@ include file="footer.jsp" %>
