<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>b.b.a</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
    <!-- jQeury 연결 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- jQeury UI연결-->
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="../resources/css/0_reset.css">
    <link rel="stylesheet" href="../resources/css/0_header.css">
    <link rel="stylesheet" href="../resources/css/0_footer.css">
    <link rel="stylesheet" href="../resources/css/store_list.css">
</head>
<body>
    <div id="wrap">
        <header id="header">
            <div id="headerIn">
                <h1 class="logo"><a href="http://localhost:8080/">be born again</a></h1>
                <nav class="gnb">
                    <ul>
                        <li class="gnbBg"><a class="logoImg"></a></li>
                        <li class="mag">
                            <a href="#" class="gnbTitle">magazine</a>
                            <div class="inGnb">
                                <ul>
                                    <li><a href="">all articles</a></li>
                                    <li><a href="">green</a></li>
                                    <li><a href="">fashion</a></li>
                                    <li><a href="">people</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="sto">
                            <a href="#" class="gnbTitle">store</a>
                            <div class="inGnb">
                                <ul>
                                    <li><a href="http://localhost:8080/store/list">all products</a></li>
                                    <li><a href="http://localhost:8080/store/list">best seller</a></li>
                                    <li><a href="http://localhost:8080/store/list">magazine</a></li>
                                    <li><a href="http://localhost:8080/store/list">upcycle</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="map">
                            <a href="#" class="gnbTitle">map</a>
                            <div class="inGnb">
                                <ul>
                                    <li><a href="">vintage shop</a></li>
                                    <li><a href="">veg restaurant</a></li>
                                    <li><a href=""></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="info">
                            <a href="#" class="gnbTitle">??!</a>
                            <div class="inGnb">
                                <ul>
                                    <li><a href="">b.b.a?</a></li>
                                    <li><a href="">vintage?</a></li>
                                    <li><a href="">tip!</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>
                <div class="h_util">
                    <div>
                        <ul class="util">
                            <li><a href="http://localhost:8080/util_login">login</a></li>
                            <li><a href="http://localhost:8080/util_join">join</a></li>
                        </ul>
                        <p><a href="http://localhost:8080/board/notice_list?boardName=notice">board</a></p>
                    </div>
                </div>
            </div>
        </header>
        <div id="container">
            <div class="container_in">
                <div class="content">
                    <div class="con_left">
                        <ul class="item_list">
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                        </ul>
                        <div class="item_pager">
                            <p><a href="">＜</a></p>
                            <p><a href="">1</a></p>
                            <p><a href="">2</a></p>
                            <p><a href="">3</a></p>
                            <p><a href="">4</a></p>
                            <p><a href="">5</a></p>
                            <p><a href="">＞</a></p>
                        </div>
                    </div>
                    <div class="con_right">
                        <form action="">
                            <select name="" id="">
                                <option value="">---------------------------</option>
                                <option value="">all</option>
                                <option value="">magazine</option>
                                <option value="">upcycle</option>
                            </select>
                            <div class="search_box">
                                <p class="src_keyword"><input type="text" placeholder=" 키워드를 입력하세요"></p>
                                <p class="src_btn"><input type="submit" value="찾기"></p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer id="footer">
            <div id="footer_in">
                <div>
                    <ul class="f_menu">
                        <li><a href="">공지사항</a></li>
                        <li><a href="">Q&A</a></li>
                        <li class="fm1"><a href="">개인정보처리방침</a></li>
                        <li><a href="">이용약관</a></li>
                        <li><a href="">사업자정보확인</a></li>
                    </ul>                
                    <div class="f_info">
                        <p>
                            상호명 : (주)saveus 소재지 : 서울특별시 강남구 신사동 123길 45 대표자 : 이다연<br>
                            사업자등록번호 : 123-45-67891 통신판매업신고 : 1234-서울강남구-12345<br>
                            고객센터 : 070-1234-1234 입점문의 : bba_contact@saveus.com                        
                        </p>
                    </div>
                </div>
                <ul class="f_sns">
                    <li><a href="">Instagram</a></li>
                    <li><a href="">Facebook</a></li>
                    <li><a href="">Blog</a></li>
                    <li><a href="">KakaoTalk</a></li>
                </ul>
            </div>
        </footer>
    </div> <!--#wrap-->
</body>
</html>