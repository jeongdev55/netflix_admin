<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src='http://code.jquery.com/jquery-1.8.2.min.js'></script>
    <link rel="stylesheet" type="text/css" href="../css/mypage.css">
	<link rel="stylesheet" type="text/css" href="css/all.css">
</head>
<body>
     <%@ include file="../include/header.jsp" %>
<div class="plancontainer">
        <div class="plan_div">
            <p>스트리밍 멤버십 변경</p>
            <ul class="list">
                <li class="item1 list_item">
                    <div class="selection_header" data-set="basic">베이식</div>
                    <div class="selection_body">SD(480p)로 좋은 화질 제공. 스마트폰, 태블릿, 컴퓨터 또는 TV로 시청.</div>
                    <div class="selection_price">월 9,500원</div>
                </li>

                <li class="item2 list_item">
                    <div class="selection_header">스탠다드</div>
                    <div class="selection_body">풀 HD(1080p)로 뛰어난 화질 제공. 스마트폰, 태블릿, 컴퓨터 또는 TV로 시청.</div>
                    <div class="selection_price">월 12,000원</div>
                </li>

                <li class="item3 list_item">
                    <div class="selection_header">프리미엄</div>
                    <div class="selection_body">UHD(4K) 및 HDR로 넷플릭스 최고 화질 제공. 스마트폰, 태블릿, 컴퓨터 또는 TV로 시청.</div>
                    <div class="selection_price">월 14,500원</div>
                </li>
            </ul>
            <br>
            <span>HD(720p), 풀 HD(1080p), UHD(4K), HDR 화질 제공 여부는 사용하는 인터넷 서비스와 디바이스의 성능에 따라 달라질 수 있습니다. 모든 콘텐츠가 모든 화질로 제공되지는 않습니다. 자세한 내용은 <a href="#" class="data3">이용약관</a>을 확인하세요.</span>
            <br>
            <span>한집에 사는 사람들만 계정을 함께 이용할 수 있습니다. 프리미엄 멤버십은 동시접속 4명, 스탠다드 멤버십은 2명, 베이식 멤버십은 1명까지 가능합니다.</span>
            <div class="list_btn">
                <input type="button" value="다음" class="listbtn listbtn1" onclick="aaa(url)">
                <input type="button" value="뒤로가기" class="listbtn listbtn2" onclick="location.href='mypage.jsp';">
            </div>
        </div>
    </div>
         <%@ include file="../include/footer.jsp" %>
    <script src="../js/mypage.js"></script>
</body>
</html>