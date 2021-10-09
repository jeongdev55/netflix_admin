<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src='http://code.jquery.com/jquery-1.8.2.min.js'></script>
    <link rel="stylesheet" type="text/css" href="../css/mypage.css">
	<link rel="stylesheet" type="text/css" href="../css/all.css">
</head>
<body>
     <%@ include file="../include/header.jsp" %>
	    <div class="viewcontainer">
        <div class="view_div">
            <p><span name="name">해정</span>프로필의 시청 기록</p>
            <div class="view_top_right">
                <ul class="tabs">
                    <li class="tab-link current" data-tab="tab-1">보고 있는 콘텐츠</li>
                    <label id="bar">|</label>
                    <li class="tab-link" data-tab="tab-2">평가</li>
                </ul>
            </div>         
        </div>
        <div class="view_content">
            <div id="tab-1" class="tab-content current">
                <div class="tab_row">
                    <div class="row_date">
                        21.9.13
                    </div>
                    <div class="row_title">
                        슬기로운 의사생활 11화
                    </div>
                    <div class="row_report">
                        버그/문제 신고
                    </div>
                    <div class="row_deleteBtn">
                        <span id="delete_text">숨기기</span>
                        <img src="../img/forbbiden.png" class="icon">
                    </div>
                </div>
                <div class="tab_row">
                    <div class="row_date">
                        21.9.13
                    </div>
                    <div class="row_title">
                        슬기로운 의사생활 11화
                    </div>
                    <div class="row_report">
                        버그/문제 신고
                    </div>
                    <div class="row_deleteBtn">
                        <span id="delete_text">숨기기</span>
                        <img src="../img/forbbiden.png" class="icon">
                    </div>
                </div>
                <div class="tab_row">
                    <div class="row_date">
                        21.9.13
                    </div>
                    <div class="row_title">
                        슬기로운 의사생활 11화
                    </div>
                    <div class="row_report">
                        버그/문제 신고
                    </div>
                    <div class="row_deleteBtn">
                        <span id="delete_text">숨기기</span>
                        <img src="../img/forbbiden.png" class="icon">
                    </div>
                </div>
                <div class="tab_row">
                    <div class="row_date">
                        21.9.13
                    </div>
                    <div class="row_title">
                        슬기로운 의사생활 11화
                    </div>
                    <div class="row_report">
                        버그/문제 신고
                    </div>
                    <div class="row_deleteBtn">
                        <span id="delete_text">숨기기</span>
                        <img src="../img/forbbiden.png" class="icon">
                    </div>
                </div>
                <div class="row_bottom">
                    <div class="bottom_btn">
                        <input type="button" value="  더 보기  " class="listbtn listbtn1">
                        <input type="button" value="계정 페이지로 돌아가기" onClick="history.go(-1)" class="listbtn listbtn2">
                    </div>
                    <div class="bottom_right">
                        <a href="#" class="data3">모두 숨기기</a> <label id="bar"> | </label>
                        <a href="#"  class="data3">전체 다운로드</a>
                    </div>
                </div>

            </div>



            <!-- 평가 탭 부분 내용-->
            <div id="tab-2" class="tab-content">
                <div class="tab_row">
                    <div class="row_date">
                        21.9.13
                    </div>
                    <div class="row_title">
                        슬기로운 의사생활
                    </div>
                    <div class="row_ration">
                        <img src="../img/up1.png" class="icon" data-name="upbtn">&nbsp;
                        <img src="../img/down2.png" class="icon" data-name="downbtn">
                    </div>
                    <div class="row_deleteBtn">
                        <img src="../img/cancel.png" class="icon">
                    </div>
                </div>
                <div class="tab_row">
                    <div class="row_date">
                        21.9.13
                    </div>
                    <div class="row_title">
                        슬기로운 의사생활
                    </div>
                    <div class="row_ration">
                        <img src="../img/up2.png" class="icon" data-name="upbtn">&nbsp;
                        <img src="../img/down1.png" class="icon" data-name="downbtn">
                    </div>
                    <div class="row_deleteBtn">
                        <img src="../img/cancel.png" class="icon">
                    </div>
                </div>
                <div class="tab_row">
                    <div class="row_date">
                        21.9.13
                    </div>
                    <div class="row_title">
                        슬기로운 의사생활
                    </div>
                    <div class="row_ration">
                        <img src="../img/up1.png" class="icon" data-name="upbtn">&nbsp;
                        <img src="../img/down2.png" class="icon" data-name="downbtn">

                    </div>
                    <div class="row_deleteBtn">
                        <img src="../img/cancel.png" class="icon">
                    </div>
                </div>
                <div class="row_bottom">
                    <div class="bottom_btn">
                        <input type="button" value="  더 보기  " class="listbtn listbtn1">
                        <input type="button" value="계정 페이지로 돌아가기" onClick="history.go(-1)" class="listbtn listbtn2">
                    </div>
                </div>
            </div>
        </div>
    </div>
     <%@ include file="../include/footer.jsp" %>
     	    <script src="../js/viewed.js"></script>
</body>
</html>