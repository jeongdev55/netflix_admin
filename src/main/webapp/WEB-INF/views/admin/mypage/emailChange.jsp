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
     <div class="pwcontainer">
     	<div class="pw_div">
     	<form action=# method="post">
     	<p>이메일 변경</p>
     	<input type="text" name="currenEmail" class="hastext textbox" id="currenEmail" tabindex="0" value="gowjdpo@naver.com" readonly>
     	   <label for="currenEmail" class="placeLabel pl1 ">현재 이메일</label>
     	   
     	   <input type="email" name="newEmail" 
                class="hastext textbox1 " id="newEmail" tabindex="0" autocomplete="off" maxlength="60" minlength="6" placeholder ="새 이메일">
                
             <div class="pw_btn_div">
                    <input type="submit" value="저장" class="pw_btn pw_btn1">
                    <input type="reset" value="취소" class="pw_btn pw_btn2">
                </div>
     	</form>
     	</div>
     </div>

     <%@ include file="../include/footer.jsp" %>
     	    <script src="../js/mypage.js"></script>
</body>
</html>