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
            <form name="pwCheck" action="asda.do" method="post"> <!-- 액션에 컨트롤러 경로 써주세요 -->
                <p>비밀번호 변경</p>  
                <input type="password" name="currenPassword" 
                class="hastext " id="currenPassword" tabindex="0" autocomplete="off" maxlength="60" minlength="4" readonly value="123123"> <!-- value값에 비밀번호 가져오기 -->
                <label for="currenPassword" class="placeLabel pl1">기존 비밀번호</label>
  

                <input type="password" name="newPassword" 
                class="hastext textbox1 " id="newPassword" tabindex="0" autocomplete="off" maxlength="60" minlength="6" placeholder="새 비밀번호(6~60자)">

                <input type="password" name="confirnewPassword" 
                class="hastext " id="confirnewPassword" tabindex="0" autocomplete="off" maxlength="60" minlength="6" placeholder="새 비밀번호 재 입력">
                <div class="pw_remember">
                <br>
                    <input type="checkbox" class="pw_checkbox" name="pw_remember"><label>모든 디바이스에서 새로운 비밀번호로 다시 로그인 하셔야 합니다.</label>
                </div>
                <div class="pw_btn_div">
                    <input type="button" value="저장" class="pw_btn pw_btn1" onclick="formCheck()">
                    <input type="reset" value="취소" class="pw_btn pw_btn2">
                </div>
            </form>
        </div>
    </div> 
     <%@ include file="../include/footer.jsp" %>
     	    <script src="../js/mypage.js"></script>
     	    <script>
     	    //폼 체크 함수
     	    function formCheck(){
     	        var pw1=$('#newPassword').val(); //새비밀번호 데이터
     	        var pw2=$('#confirnewPassword').val(); //새 비밀번호 재입력 데이터
     	        
     	        if(pw1==""||pw2==""){
     	        	alert("비밀번호를 입력하세요.");
     	        }else if(pw1!=pw2){
     	        	alert("비밀번호가 일치하지 않습니다.");
     	        }else{
     	        	alert("비밀번호 변경")
     	        	pwCheck.submit();
     	        }
     	    }
     	    </script>
</body>
</html>