<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>당신을 위한 맥주지침서 | 캐리비어</title>
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;400;600&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="./imgs/fv_beer.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="liteaccordion/liteaccordion.css">
<link rel="stylesheet" href="FlexSlider/flexslider.css">
<link rel="stylesheet" href="vegas/vegas.min.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/sub02.css">
<link rel="stylesheet" href="css/subcommon.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="liteaccordion/liteaccordion.jquery.js"></script>
<script src="vegas/vegas.min.js"></script>
<script src="FlexSlider/jquery.flexslider.js"></script>
<script src="js/subheader.js"></script>
<script src="js/sbu02.js"></script>
</head>

<%@ include file="subheader.jsp" %>

<div class="bn2">
        <div class="bnblack">
            <div class="bnsub">
                <h2 class="bnfhd-txt"><span>beer</span> recipe</h2>
                <h2 class="bntb-txt">beer</h2>
                <h2 class="bntb-txt">recipe</h2>
            </div>
        </div>
    </div>

    <section>
        <div class="bm">
            <h3>맥주 <span>제조방식</span></h3>
            <div class="fhdbox">
                <h4>맥주의 구분</h4>
                <p class="fhd-txt">맥주는 크게는 사용하는 <span class="purple">효모와 홉</span>, <span class="purple">양조 방법</span>에 따라 구분 하고 세부적으로는 알코올 도수, 맥주의 색, 쓴맛의 정도, 담백한 정도, 향미, 감미로운 등으로 구별한다.</p>
                <p class="hd-txt">맥주는 크게는 사용하는 <span class="purple">효모와 홉</span>, <span class="purple">양조 방법</span>에 따라 구분 하고세부적으로는</p> 
                <p class="hd-txt">알코올 도수, 맥주의 색, 쓴맛의 정도, 담백한 정도,
                향미, 감미로운 등으로 구별한다.</p>
                <p class="sm-txt">맥주는 크게는 사용하는 <span class="purple">효모와 홉</span>, <span class="purple">양조 방법</span>에 따라</p>
                <p class="sm-txt">구분하고 세부적으로는 알코올 도수, 맥주의 색, 쓴맛의</p>
                <p class="sm-txt">정도, 담백한 정도,향미, 감미로운 등으로 구별한다.</p>
            </div>
        </div>

        <div id="js_version" class="beerbox">
            <ol>
                <li data-slide-name="slide1">            
                    <h2><span>발효 방식</span>에 따른 구분</h2>
                    <div><img src="imgs/article1.jpg" alt="슬라이드 어코디언1">
                        <div class="all1">
                            <p><span>상면발효방식</span></p>
                            <P>15~21도 발효 색이 짙으며 도수가 높음</P>
                            <p><span>하면발효방식</span></p>
                            <p>4~10도 발효 맛이 부드럽고 도수가 낮음</p>
                        </div>
                    </div>
                </li>
                <li data-slide-name="slide2">            
                    <h2><span>양조법</span>에 따른 구분</h2>                
                    <div><img src="imgs/article2.jpg" alt="슬라이드 어코디언2">
                        <div class="all2">
                            <p><span> 디허스크</span></p>
                            <p>탄닌이나 에구미를 제거한 깔끔한 맛</p>
                            <p><span>드라이</span></p>
                            <p>강한효모를 사용해 당을 최소화한 담백한 맛</p>
                            <p><span>아이스</span></p>
                            <p>3~5도 저온에 3일정도 숙성 본연의 맛</p>
                        </div>
                    </div>
                </li>
                <li data-slide-name="slide3">            
                    <h2><span>색</span>에 따른 구분</h2>                
                    <div><img src="imgs/article3.jpg" alt="슬라이드 어코디언3">
                        <div class="all3">
                            <p><span>담색</span></p>
                            <p>옅은 맥아 사용 깨끗한 맛</p>
                            <p class="c1"><span>농색</span></p>
                            <p>짙은 특수 맥아 사용 깊고 풍부한 맛</p>
                        </div>
                    </div>
                </li>
            </ol>
        </div>

        <div class="tb">
            <div class="tbcontainer">
                <!-- 어코디언 메뉴 -->
                <input id="ac-1" type="checkbox">
                <label for="ac-1"><span>발효 방식</span>에 따른 구분</label>
                <!-- 어코디언 내용 -->
                <div class="ac content-1">
                    <div class="labelImg"></div>
                    <div class="labelp">
                        <ul>
                            <li>상면발효방식</li>
                            <p class="fhd-txt">15~21도 발효 색이 짙으며 도수가 높음</p>
                            <p>15~21도 발효</p>
                            <p>발효 색이 짙으며 도수가 높음</p>
                        </ul>
                        <ul>
                            <li>하면발효방식</li>
                            <p class="fhd-txt">4~10도 발효 맛이 부드럽고 도수가 낮음</p>
                            <p>4~10도 발효</p>
                            <p>맛이 부드럽고 도수가 낮음</p>
                        </ul>
                    </div>
                </div>
                
                <!-- 어코디언 메뉴 -->
                <input id="ac-2" type="checkbox">
                <label for="ac-2"><span>양조법</span>에 따른 구분</label>
                <!-- 어코디언 내용 -->
                <div class="ac content-2">
                    <div class="labelImg-2"></div>
                    <div class="labelp">
                        <ul>
                            <li>디허스크</li>
                            <p>탄닌이나 에구미를 제거 깔끔한 맛</p>
                        </ul>
                        <ul>
                            <li>드라이</li>
                            <p>강한 효모 사용 당을 최소화 담백한 맛</p>
                        </ul>
                        <ul>
                            <li>아이스</li>
                            <p>3~5도 저온에 3일정도 숙성 본연의 맛</p>
                        </ul>
                    </div>
                </div>
        
                <!-- 어코디언 메뉴 -->
                <input id="ac-3" type="checkbox">
                <label for="ac-3"><span>색</span>에 따른 구분</label>
                <!-- 어코디언 내용 -->
                <div class="ac content-3">
                    <div class="labelImg-3"></div>
                    <div class="labelp">
                        <ul>
                            <li>담색</li>
                            <p>옅은 맥아 사용 깨끗한 맛</p>
                        </ul>
                        <ul>
                            <li>농색</li>
                            <p>짙은 특수 맥아 사용 깊고 풍부한 맛</p>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


    </section>
    <div class="clear"></div>

    <section>
        <div class="bm">
            <h3>맥주의 <span>종류</span></h3>
        </div>

        <div class="container">
            <h4>ale beer</h4>
            <div class="flexslider carousel">
                <ul class="slides">
                    <li>
                        <div class="beerimg1">
                            <div class="beerbt">
                                <a href="#">페일 에일</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="beerimg2">
                            <div class="beerbt">
                                <a href="#">뉴캐슬 브라운 에일</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="beerimg3">
                            <div class="beerbt">
                                <a href="#">기네스</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="beerimg4">
                            <div class="beerbt">
                                <a href="#">런던포터</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="beerimg5">
                            <div class="beerbt">
                                <a href="#">호가든</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="beerimg6">
                            <div class="beerbt">
                                <a href="#">파울러너</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="container2">
            <h4>lager beer</h4>
            <div class="flexslider carousel">
                <ul class="slides">
                    <li>
                        <div class="beerimg7">
                            <div class="beerbt">
                                <a href="#">버드와이저</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="beerimg8">
                            <div class="beerbt">
                                <a href="#">플로그 스티어트</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="beerimg9">
                            <div class="beerbt">
                                <a href="#">라트롭</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="beerimg10">
                            <div class="beerbt">
                                <a href="#">브라세리 뒤 몽블랑</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="beerimg11">
                            <div class="beerbt">
                                <a href="#">사무엘 아담스</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="beerimg12">
                            <div class="beerbt">
                                <a href="#">모이네트</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <div class="clear"></div>

<%@ include file="footer.jsp" %>