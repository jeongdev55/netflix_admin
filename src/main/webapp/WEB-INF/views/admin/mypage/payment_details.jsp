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
    <div class="paydecontainer">
        <div class="pay_div">
            <p>결제 상세 정보</p>
            <p id="membership_text1">내 멤버십</p>
            <div class="membership">
                <p id="membership_text2">회원님의 멤버십</p>
                <label id="my_membership">프리미엄</label>: 월 <label id="membership_price">14,500</label>원
                <p id="membership_people">동시 접속 4명</p>
                <br>
                <p id="membership_text2">다음 멤버십 요금</p>
                <p id="payment_month">2021년 10월 2일</p>
            </div>
            <p id="membership_text3">멤버십 요금은 결제 주기 시작일에 청구되며, 계정에 청구일이 표시될 때까지 수일이 걸릴 수 있습니다.</p> 
        </div>
        <div class="pay_table_div">
            <table class="pay_table">
                <tr class="table_top">
                    <th class="top1">날짜</th>
                    <th class="top2">설명</th>
                    <th class="top3">서비스 기간</th>
                    <th class="top4">결제 수단</th>
                    <th class="top5">소계</th>		
                    <th class="top6">총 합계</th>		
                </tr>
                <tr class="table_content">
                    <td class="table_text1">2021년 9월 3일</td>
                    <td>스트리밍 서비스</td>
                    <td>2021년 9월 3일 - 2021년 10월 2일</td>
                    <td>신용카드 **** **** **** 2731</td>
                    <td class="content5">13,182원<p id="surtax">(+1,318원 부가세)</p></td>
                    <td  class="content6">14,500원</td>
                </tr>

            </table>
        </div>
    </div>
         <%@ include file="../include/footer.jsp" %>
     	    <script src="../js/mypage.js"></script>
</body>
</html>