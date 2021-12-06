<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	<!--  jstl -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="../resources/css/qna_list.css">
</head>
<body>
    <div id="wrap">
        <header id="header">
            <div id="headerIn">
                <h1 class="logo"><a href="http://localhost:8080/">be born again</a></h1>
                <nav class="gnb">
                    <ul>
                        <li class="gnbBg"><a class="logoImg" href="http://localhost:8080/"></a></li>
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
                    <div class="con_left" id="work">
                        <div class="con_top">
                            <ul class="tabs_nav">
                                <li><a href="http://localhost:8080/board/notice_list?boardName=notice">공지사항</a></li>
                                <li><a href="http://localhost:8080/board/qna_list?boardName=qna" class="nav_qna">Q&A</a></li>
                            </ul>
                            <button type="button"><a href="http://localhost:8080/board/register">글쓰기</a></button>
                        </div>
                        <div class="qna tabs_panel" id="b_qna">
                            <div class="b_top">
                                <p class="topLine_title">제목</p>
                                <p class="topLine_writer">작성자</p>
                                <p class="topLine_date">날짜</p>
                                <p class="topLine_hit">조회수</p>
                            </div>
                            <ul>
                            	<c:forEach var="boardList" items="${list}">
                                <li>
                                    <div class="list">
                                    	<input type="hidden" name="bno" value="${boardList.bno}">
                                        <p class="title">${boardList.title}</p>
                                        <p class="writer">${boardList.writer}</p>
                                        <p class="date"><fmt:formatDate value="${boardList.regDate}" pattern="yyyy/MM/dd"/></p>
                                        <p class="hit">${boardList.hit}</p>
                                    </div>
                                    <div class="qna_box">
	                                    <p class="text user_q" title="클릭시 수정 및 삭제가 가능합니다.">
	                                    	<a href="http://localhost:8080/board/modify?bno=${boardList.bno}">${boardList.content}</a>
	                                    	<button type="button"><a href="http://localhost:8080/board/comment_register?bno=${boardList.bno}">답글달기</a></button>
	                                    </p>
	                                    <p class="text root_a" title="클릭시 수정 및 삭제가 가능합니다.">asdfasdf</p>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="item_pager">
                        	<c:if test="${pageMaker.prev}">
                            <p><a href="/board/qna_list?BoardName=qna&pageNum=${pageMaker.startPage - 1}&amount=${pageMaker.cri.amount}">＜</a></p>
                            </c:if>
                            <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                            <p><a href="/board/qna_list?BoardName=qna&pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a></p>
                            </c:forEach>
                            <c:if test="${pageMaker.next}">
                            <p><a href="/board/qna_list?BoardName=qna&pageNum=${pageMaker.endPage + 1}&amount=${pageMaker.cri.amount}">＞</a></p>
                            </c:if>
                        </div>
                    </div>
                    <div class="con_right">
                        <form action="/board/list" method="get">
                            <select name="type" id="">
                                <option value="" <c:out value="${pageMaker.cri.type==null?'selected':''}" />>---------------------------</option>
                                <option value="T" <c:out value="${pageMaker.cri.type=='T'?'selected':''}" />>제목</option>
                                <option value="C" <c:out value="${pageMaker.cri.type=='C'?'selected':''}" />>내용</option>
                                <option value="W" <c:out value="${pageMaker.cri.type=='W'?'selected':''}" />>작성자</option>
                                <option value="TC" <c:out value="${pageMaker.cri.type=='TC'?'selected':''}" />>제목+내용</option>
                            </select>
                            <div class="search_box">
	                            <p><input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"></p>
	                            <p><input type="hidden" name="amount" value="${pageMaker.cri.amount}"></p>
                                <p class="src_keyword"><input type="text" placeholder=" 키워드를 입력하세요" name="keyword" value="${pageMaker.cri.keyword}"></p>
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
    <script src="../resources/js/qna_list.js"></script>
</body>
</html>