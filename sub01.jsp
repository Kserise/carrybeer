<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>당신을 위한 맥주지침서 | 캐리비어</title>
<link rel="shortcut icon" href="./imgs/fv_beer.ico">
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="FlexSlider/flexslider.css">
<link rel="stylesheet" href="liteaccordion/liteaccordion1.css">
<link rel="stylesheet" href="vegas/vegas.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/sub01.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/subcommon.css">
<link rel="shortcut icon" href="imgs/favicon.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="liteaccordion/liteaccordion1.jquery.js"></script>
<script src="FlexSlider/jquery.flexslider-min.js"></script>
<script src="vegas/vegas.min.js"></script>
<script src="js/subheader.js"></script>
<script src="js/sub01.js"></script>
<%@ include file="subheader.jsp"  %>
    <div class="bn1">
        <div class="bnblack">
            <div class="bnsub">
                <h2 class="hdbn"><span>Beer</span> Story</h2>
                <h2 class="tbbn">Beer</h2>
                <h2 class="tbbn">Story</h2>
            </div>
        </div>
    </div>

    
    </section>
    
    <section>
        <div class="t1">
            <h3>맥주의<span> 역사</span></h3>
            <div class="lbox">
                <h4>맥주의 일대기</h4>
                <p class="txt">맥주는 전 세계 에서 가장 대중적이며 가장 오래된 알코올 음료로 알려져있다.
                기원전 8000년경 곡식으로 발효 술을 만든 최초의 흔적들이 에리코(현,요르단)에서 발견된 바 있다.</p>
                <p class="sm-txt">맥주는 전 세계 에서 가장 대중적이며</p> 
                <p class="sm-txt">가장 오래된 알코올 음료로 알려져있다.</p>
                <p class="sm-txt">기원전 8000년경 곡식으로 발효 술을 만든 최초의</p> 
                <p class="sm-txt">흔적들이 에리코(현,요르단)에서 발견된 바 있다.</p>
            </div>
        </div>
    </section> 
    
    <section>   
        <article>
            <div id="js_version" class="abox">
                <ol>
                    <li data-slide-name="slide1">            
                        <h2><span>기원전</span></h2>>                
                        <div><img src="imgs/231.jpg" alt="슬라이드 어코디언1">
                            <p>맥주는 BC4200년경 메소포타미아에서 <span>수메르</span>인들이
                            시카루라고 하는 곤죽을 만들어 먹는것에 기원한다.</p>
                        </div>
                    </li>
                    <li data-slide-name="slide2">            
                        <h2><span>그리스로마</span></h2>                
                        <div><img src="imgs/232.jpg" alt="슬라이드 어코디언2">
                            <p><span>그리스로</span>넘어간 맥주는 와인에 밀려났지만 
                                신성로마 제국 황제인 <span>카를루스대제의</span>영향으로 맥주가 유럽에서 자리잡게 되었다.</p>
                        </div>
                    </li>
                    <li data-slide-name="slide3">            
                        <h2><span>17세기</span></h2>                
                        <div><img src="imgs/233.jpg" alt="슬라이드 어코디언3">
                            <p><span>아시아권</span>에는 네덜란드 상인에 의해 일본으로 들어와 점차 널리 퍼졌다.</p>
                        </div>
                    </li>    
                </ol>
            </div>
        </article>
    </section>    
    
    <div class="container">
        <!-- 어코디언 메뉴 -->
        <input id="ac-1" type="checkbox">
        <label for="ac-1">기원전</label>
        <!-- 어코디언 내용 -->
        <div class="ac content-1">
            <div class="labelImg"></div>
            <div class="labelp">
            <p>맥주는 BC4200년경 메소포타미아에서 <span>수메르</span>인들이시카루라고 하는 곤죽을 만들어 먹는것에 기원한다.</p>
            </div>
        </div>
     
        <!-- 어코디언 메뉴 -->
        <input id="ac-2" type="checkbox">
        <label for="ac-2">그리스로마</label>
        <!-- 어코디언 내용 -->
        <div class="ac content-2">
            <div class="labelImg-2"></div>
            <div class="labelp">
            <p><span>그리스로</span>넘어간 맥주는 와인에 밀려났지만 
            신성로마 제국 황제인 <span>카를루스대제의</span>영향으로 맥주가 유럽에서 자리잡게 되었다.</p>
            </div>
        </div>

        <!-- 어코디언 메뉴 -->
        <input id="ac-3" type="checkbox">
        <label for="ac-3">17세기</label>
        <!-- 어코디언 내용 -->
        <div class="ac content-3">
            <div class="labelImg-3"></div>
            <div class="labelp">
            <p><span>아시아권</span>에는 네덜란드 상인에 의해 일본으로 들어와 점차 널리 퍼졌다.</p>
            </div>
        </div>
    </div>

    <div class="container1">
        <!-- 어코디언 메뉴 -->
        <input id="ac-4" type="checkbox">
        <label for="ac-4">기원전</label>
        <!-- 어코디언 내용 -->
        <div class="ac content-4">
            <div class="labelImg-4"></div>
            <div class="labelp">
            <p>맥주는 BC4200년경 메소포타미아에서 <span>수메르</span>인들이시카루라고 하는 곤죽을 만들어 먹는것에 기원한다.</p>
            </div>
        </div>
     
        <!-- 어코디언 메뉴 -->
        <input id="ac-5" type="checkbox">
        <label for="ac-5">그리스로마</label>
        <!-- 어코디언 내용 -->
        <div class="ac content-5">
            <div class="labelImg-5"></div>
            <div class="labelp">
            <p><span>그리스로</span>넘어간 맥주는 와인에 밀려났지만 
            신성로마 제국 황제인 <span>카를루스대제의</span>영향으로 맥주가 유럽에서 자리잡게 되었다.</p>
            </div>
        </div>

        <!-- 어코디언 메뉴 -->
        <input id="ac-6" type="checkbox">
        <label for="ac-6">17세기</label>
        <!-- 어코디언 내용 -->
        <div class="ac content-6">
            <div class="labelImg-6"></div>
            <div class="labelp">
            <p><span>아시아권</span>에는 네덜란드 상인에 의해 일본으로 들어와 점차 널리 퍼졌다.</p>
            </div>
        </div>
    </div>    
    
    <div class="clear"></div>

    
    <section class="hidden">
        
        <div class="t2">
            <h3>맥주의<span>효능</span></h3>
            <h4>우리가 맥주를 마셔야하는 이유</h4>
        </div>
        
        <article>
            <div class="leftBox">
                <div class="left"></div>
                <div class="right">
                    <h4>1.뼈의 건강 증가</h4>
                    <p>맥주에는 뼈의 밀도를 높여주는 규소 성분이 첨가 되어 있어 뼈 건강에 도음을 준다.</p>
                </div>
            </div>
            <div class="rightBox">
                <div class="left"></div>
                <div class="right">
                    <h4>2.신장 결석 방지</h4>
                    <p>적당량의 맥주는 몸 속 독소배출에 효과가 있어 신장결석이 생길확률을 낮춰준다.</p>
                </div>
            </div>            
        </article>
        <div class="clear"></div>

        <article>
            <div class="leftBox">
                <div class="left"></div>
                <div class="right">
                    <h4>3.심장발작을 예방</h4>
                    <p>맥주 속 항산화 물질은 심장 발작을 일으키는 몸속 화학물질을 제거해준다.</p>
                </div>
            </div>
            
            <div class="rightBox">
                <div class="left"></div>
                <div class="right">
                    <h4>4.뇌졸증 위험 감소</h4>
                    <p>혈전 억제에 도움을 주어 적당량의 맥주를 마시는 사람은 뇌졸증에 걸릴 위험이 낮다.</p>
                </div>
            </div>            
        </article>
        <div class="clear"></div>

        <article>
            <div class="leftBox">
                <div class="left"></div>
                <div class="right">
                    <h4>5.치매 예방 도움</h4>
                    <p>맥주원료 홉 속에 있는 항산화 기능이 스트레스, 퇴행성 뇌 질환 방지에 도움을 준다.</p>
                </div>
            </div>                
        </article>
        
        
        
        <div class="clear"></div>        
    </section>
    <a id="next" href="#">다음 페이지</a>
    <div class="clear"></div>
    
   
<%@ include file="footer.jsp" %>