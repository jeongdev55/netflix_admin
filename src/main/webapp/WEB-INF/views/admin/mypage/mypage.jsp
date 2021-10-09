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
    <div class="container">
        <div class="main">
            <div class="main_top">
                <label class="main_text">계정</label>
                <label id="membership_text"><img src="#">멤버십 시작일 : 9월 2020</label>
            </div>
            <hr>
            <div class="row">
                <div class="content_div">
                    <div class="title1">멤버십 & 결제 정보</div><br>
                    <div class="title1_btn" onclick="location.href='planCancel.jsp'">멤버십 해지</div>
                </div>
                <div class="row_content1">
                    <div class="content_all content1">
                        <div class="text_all text1">
                            <p id="font_weight">azz1214@naver.com</p>
                            <a href="emailChange.jsp">계정 이메일 변경</a>
                        </div>
                        <div class="text_all text2">
                            <p>비밀번호: ********</p>
                            <a href="pawChange.jsp">비밀번호 변경</a>
                        </div>
                        <div class="text_all text3">
                            <p>전화번호: 010-6476-3182</p>
                            <a href="phoneChange.jsp">휴대폰 번호 변경</a>
                        </div>
                    </div>
                    <div class="content_all content2">
                        <div class="text_all text1">
                            <p id="font_weight">신용카드 **** **** **** 2731</p>
                            <a href="#">결제 정보 관리</a>
                        </div>
                        <div class="text_all text2">
                            <p>다음 결제일은 2021년 10월 2일입니다.</p>
                            <a href="payment_details.jsp">결제 상세 정보</a>
                        </div>
                        <div class="text_all text3">
                            <p>&nbsp;</p>
                            <a href="#">결제일 변경</a>
                        </div>
                    </div>
                    <div class="content_all2">
                        <div class="text_all text1">
                            <p>&nbsp;</p>
                            <a href="#">기프트카드 또는 할인 코드 입력</a>
                        </div>
                        <div class="text_all text2">
                            <p>&nbsp;</p>
                            <a href="#">기프트카드 판매처</a>
                        </div>
                    </div>
                </div>
            </div>

            <hr>

            <div class="row">
                <div class="content_div">
                    <div class="title1">멤버십 상세 정보</div><br>
                </div>
                <div class="row_content1">
                    <div class="content_all2">
                    <div class="text_all text1">
                        <p id="font_weight">프리미엄</p>
                        <a href="changeplan.jsp">멤버십 변경</a>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="content_div">
                    <div class="title1">설정</div>
                </div>
                <div class="content_all2">
                    <p class="text_all"><a href="#">넷플릭스 테스터로 참여</a></p>
                    <p class="text_all"><a href="#">영상 저장 디바이스 관리</a></p>
                    <p class="text_all"><a href="#">디바이스 활성화</a></p>
                    <p class="text_all"><a href="#">디바이스 최근 시청 기록</a></p>
                    <p class="text_all"><a href="#">모든 디바이스에서 로그아웃</a></p>
                    <p class="text_all"><a href="#">개인 정보 다운로드</a></p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="content_div">
                    <div class="title1">프로필 & 자녀 보호 설정</div>
                </div>
                <div class="row_content1">
                    <div class="content_all content3 user_content1">
                        <div class="user_all user1">
                            <img src="../img/그림5.png">
                        </div>
                        <div class="user_text">
                            <strong>해정</strong>
                            <p>모든 관람 등급</p>
                        </div>
                        <img src="../img/down2_icon.png" id="down_btn">
                    </div>
                    <div class="click_div1">
                        <div class="data">
                            <div class="data_1">
                                언어
                                <p>한국어</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청제한
                                <p>제한없음</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                프로필 잠금
                                <p>꺼짐</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청기록
                            </div>
                            <a href="viewed.jsp?tab=1">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                평가한 콘텐츠
                            </div>
                            <a href="viewed.jsp?tab=2">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                재생설정
                                <p>다음 화 재생. 미리보기 자동재생. 자동 설정된 화질 및 음질.</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                    </div>
                    <div class="content_all content3 user_content2">
                        <div class="user_all user2">
                            <img src="../img/그림5.png">
                        </div>
                        <div class="user_text">
                            <strong>수민</strong>
                            <p>모든 관람 등급</p>
                        </div>
                        <img src="../img/down2_icon.png" id="down_btn">
                    </div>
                    <div class="click_div2">
                        <div class="data">
                            <div class="data_1">
                                언어
                                <p>한국어</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청제한
                                <p>제한없음</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                프로필 잠금
                                <p>꺼짐</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청기록
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                평가한 콘텐츠
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                재생설정
                                <p>다음 화 재생. 미리보기 자동재생. 자동 설정된 화질 및 음질.</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                    </div>
                    <div class="content_all content3 user_content3">
                        <div class="user_all user3">
                            <img src="../img/그림5.png">
                        </div>
                        <div class="user_text">
                            <strong>동현</strong>
                            <p>모든 관람 등급</p>
                        </div>
                        <img src="../img/down2_icon.png" id="down_btn">
                    </div>
                    <div class="click_div3">
                        <div class="data">
                            <div class="data_1">
                                언어
                                <p>한국어</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청제한
                                <p>제한없음</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                프로필 잠금
                                <p>꺼짐</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청기록
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                평가한 콘텐츠
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                재생설정
                                <p>다음 화 재생. 미리보기 자동재생. 자동 설정된 화질 및 음질.</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                    </div>
                    <div class="content_all content3 user_content4">
                        <div class="user_all user4">
                            <img src="../img/그림5.png">
                        </div>
                        <div class="user_text">
                            <strong>유화</strong>
                            <p>모든 관람 등급</p>
                        </div>
                        <img src="../img/down2_icon.png" id="down_btn">
                    </div>
                    <div class="click_div4">
                        <div class="data">
                            <div class="data_1">
                                언어
                                <p>한국어</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청제한
                                <p>제한없음</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                프로필 잠금
                                <p>꺼짐</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청기록
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                평가한 콘텐츠
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                재생설정
                                <p>다음 화 재생. 미리보기 자동재생. 자동 설정된 화질 및 음질.</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                    </div>
                </div>
            </div>
                <div class="margin"></div>
        </div>
    </div>
     <%@ include file="../include/footer.jsp" %>
    <script src="../js/mypage.js"></script>
</body>
</html>