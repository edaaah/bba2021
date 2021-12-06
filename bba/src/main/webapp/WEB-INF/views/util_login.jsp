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
    <link rel="stylesheet" href="resources/css/0_reset.css">
    <link rel="stylesheet" href="resources/css/util_login.css">
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
                                    <li><a href="">all products</a></li>
                                    <li><a href="">best seller</a></li>
                                    <li><a href="">magazine</a></li>
                                    <li><a href="">upcycle</a></li>
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
                            <li><a href="">login</a></li>
                            <li><a href="">join</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <div id="container">
            <div id="login_logo">
                <h1>
                    <a href="http://localhost:8080/" class="l_logo">
                        <span class="hide">be born again</span>
                    </a>
                </h1>
            </div>
            <div class="content">
                <h2 class="hide">bba 로그인</h2>
                <form action="" id="login_form">
                    <!-- 아이디 -->
                    <div class="con_row">
                        <h3 class="login_title">
                            <label for="user_id" class="hide">아이디</label>
                        </h3>
                        <div class="id_box">
                            <span class="box">
                                <input type="text" id="user_id" name="id" class="uInput" maxlength="20" placeholder="id">
                            </span>
                        </div>
                        <!-- <span class="error_box"></span> -->
                    </div>
                    <!-- 비밀번호 -->
                    <div class="con_row">
                        <h3 class="join_title">
                            <label for="user_pw" class="hide">비밀번호</label>
                        </h3>
                        <span class="box">
                            <input type="password" id="user_pw" name="pw1" class="uInput" maxlength="20" placeholder="password">
                        </span>
                        <!-- <span class="error_box"></span> -->
                    </div>
                    <!-- 로그인 버튼 -->
                    <div class="btn_area">
                        <div class="join_btn">
                            <button type="submit" class="btn">로그인</button>
                        </div>
                    </div>
                </form>
                <div class="link">
                    <div class="find">
                        <ul>
                            <li class="find_id"><a href="#">아이디 찾기</a></li>
                            <li>/</li>
                            <li class="find_pw"><a href="#">비밀번호 찾기</a></li>
                        </ul>
                    </div>
                    <div class="go_join">
                        <p><a href="http://localhost:8080/util_join">계정이 없다면 가입하기</a></p>
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
            </div>
        </footer>
    </div> <!--#wrap-->
</body>
</html>