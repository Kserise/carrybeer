<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.kmc.carry.CrBeer" %>
<%@page import="com.kmc.carry.CrMember" %>
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
<%
	request.setCharacterEncoding("utf-8");
	String mem_id = "";
	String keyField = "";
	String keyWord = "";
	int admin = 0;
	int listSize = 0;
	int start = 0;
	int end = 6;
	int numPerBeer = 6;
	int totalRecord = 0;
	int totalPage = 0;
	int nowPage = 1;
	
	if(session.getAttribute("mem_id") != null){
		mem_id = (String)session.getAttribute("mem_id");
	}
	if(request.getParameter("keyWord") != null){
		keyField = request.getParameter("keyField");
		keyWord = request.getParameter("keyWord");
	}
	if(request.getParameter("nowPage") != null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}

	CrMember cm = bMgr.getMember(mem_id);
	if ( cm.getAdmin() != 0){
		admin = 1;
	}
	totalRecord = bMgr.getTotalCount(keyField, keyWord);
	totalPage = (int)Math.ceil((double)totalRecord/numPerBeer);
	start = (nowPage-1)*numPerBeer;
	
%>
        <div class="container">
            <div class="mainbar1">
                <div class="mainbar2">
                    <div class="maincon1">
                        <h3>각양각색 <span>맥주 스타일</span></h3>
                        <p class="txt1">각 나라에서 선호하는 맥주</p>
                        <p>맥주의 종류, 향, 맛별 키워드로 나만의 맥주취향을 찾아보세요.</p>
                    </div>
                    <div class="map">
                        <div class="cover"></div>
                        <div class="search-box">
                  			 <form name="searchFrm" method="post" action="sub03.jsp">
                            	<input type="text" name="keyWord" class="search-txt" placeholder="맥주이름, 종류">
                           		<a href="javascript:search()" class="search-btn"><i class="fas fa-search"></i></a>
                           		<input type="hidden" name="keyField" value="search">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
        <article>
            <h3>나라 별 <span>대표맥주</span></h3>
            <p class="txt2">국가 별 맥주 브랜드</p>
            <ul class="nation" id="nati">
                <li><a href="javascript:area('독일')"><%if(keyWord.equals("독일")){%><span class="nationcolor"><%} %>독일<%if(keyWord.equals("독일")){%></span><%} %></a></li>
                <li><a href="javascript:area('영국')"><%if(keyWord.equals("영국")){%><span class="nationcolor"><%} %>영국<%if(keyWord.equals("영국")){%></span><%} %></a></li>
                <li><a href="javascript:area('일본')"><%if(keyWord.equals("일본")){%><span class="nationcolor"><%} %>일본<%if(keyWord.equals("일본")){%></span><%} %></a></li>
                <li><a href="javascript:area('중국')"><%if(keyWord.equals("중국")){%><span class="nationcolor"><%} %>중국<%if(keyWord.equals("중국")){%></span><%} %></a></li>
                <li><a href="javascript:area('네덜란드')"><%if(keyWord.equals("네덜란드")){%><span class="nationcolor"><%} %>네덜란드<%if(keyWord.equals("네덜란드")){%></span><%} %></a></li>
                <li><a href="javascript:area('한국')"><%if(keyWord.equals("한국")){%><span class="nationcolor"><%} %>한국<%if(keyWord.equals("한국")){%></span><%} %></a></li>
            </ul>
<%
	application.getContextPath();
	request.getSession().getServletContext().getRealPath("/");
	application.getRealPath("/carrybeer");
	
	Vector<CrBeer> list = bMgr.getBeers(keyField, keyWord, start, end);
	Vector<CrBeer> mlist = bMgr.getMyBeer(mem_id);
	
	int mlistSize = 0;
	mlistSize = mlist.size();
	listSize = list.size();

	if(listSize < 1){
%>
			<div class="empty">
				<h2>맥주목록이 비었습니다. 채워주세요</h2>
			</div>
<%} %>
            <ul id="maincon2" class="hid">
 	<%if(admin == 1) {%>
			<li>
              <div class="beerimg dumi">
              	<div class="insertB"><a href="./beerinfor/beerInsert.jsp"><i class="fas fa-plus"></i></a></div>
  	         </div>
          	</li>
    <% } %>
<%
	for(int i=0; i<listSize; i++){
		CrBeer cb = list.get(i);
		String brname = cb.getBrname();
		int span = 0;
%>
		
                <li>
                    <div class="beerimg">
                    	<img src="./upload/beer/<%=cb.getFilename() %>" alt="맥주이미지">
                    </div>
                    <div class="beername">
	                    <div class="beertxt">
                            <p><span class="eng"><%=cb.getBrname() %></span><p>
                        	<p><%=cb.getVari() %></p>
	                    </div>
                        <div class="tri">
	                      <%
	                       if(mem_id != ""){
	                        if(admin == 1){ 
	                        %>
	                        	<a href="javascript:updateBeer('<%=brname %>')">
	                        		<i class="fas fa-edit admincon" ></i>
	                        	</a>
	                        	<a href="javascript:deleteBeer('<%=brname %>')">
	                        		<i class="fas fa-trash-alt admincon "></i>
	                        	</a>
	                        	
	                        	
	                       	<%} %>
	                            <a  href="javascript:addBeer('<%=brname %>')" >
                        		<%for(int j=0; j<mlistSize; j++){
                        			CrBeer cv = mlist.get(j);
                        			if(cv.getBrname().equals(brname)){
                        				span = 1;
                        			}
                        		}
	                        	if(span == 1){
	                       		%>
									<span style="color:red">
	                       		<%
	                        	}
	               				%>
                       					<i class="fas fa-heart"></i>
	                        	<%
								if(span == 1){
	                        	%>
                       				</span>
	                       		<%
								  }
	              				%>
	                  			</a>
	                  			<%
	                      	 }
	                  			%>
                        </div>
                    </div>
                    <ul class="beercon">
                        <li>
                            <p class="bh5"><span>맥주</span>의 특징</p>
                            <p><span>제조사:</span> <%=cb.getMade() %></p>
                            <p><span>알코올 도수:</span> <%=cb.getAlcol() %>%</p>
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
            <div class="btngroup">
            <%if(nowPage > 1){ %>
            	<button class="button bk" onclick="block('<%=nowPage-1 %>')">뒤로</button>
           	<%} %>
	            <!-- <a id="next" href="#">다음 페이지</a> -->
            <%if(nowPage < totalPage){ %>
            	<button class="button fw" onclick="block('<%=nowPage+1 %>')">다음</button>
           	<%} %>
            </div>
            <form name="nowFrm" action="sub03.jsp" method="post">
            	<input type="hidden" name="nowPage" value="<%=nowPage %>">
           		<input type="hidden" name="keyField" value="<%=keyField %>">
            	<input type="hidden" name="keyWord" value="<%=keyWord %>">
            </form>
            
            <form name="areaFrm" action="sub03.jsp" method="post">
            	<input type="hidden" name="keyField" value="made">
            	<input type="hidden" name="keyWord">
            </form>
        </article>
    </section>
   	
    <script>
    function block(value){
    	document.nowFrm.nowPage.value = value;
    	document.nowFrm.submit();
    }
    
    function deleteBeer(brname){
    	url = "beerinfor/deleteBeer.jsp?brname="+brname;
    	window.open(url, "deleteBeer","width=500px,height=150px,directories=no,scrollbars=0,menubar=no,location=no");
    }
    
    function updateBeer(brname){
    	location.href="beerinfor/upDateBeer.jsp?brname="+brname;
    }
    </script>
<%@ include file="footer.jsp" %>
