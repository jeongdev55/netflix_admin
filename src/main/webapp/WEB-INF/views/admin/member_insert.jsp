<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin-회원 관리</title>
       <link href="resources/css/styles.css" rel="stylesheet" />
       <link rel="stylesheet" 
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" 
      crossorigin="anonymous">

    </head>
    <body>
         <%@ include file="header.jsp" %>   
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4 ">회원 추가</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="adminDash.ado">Dashboard</a></li>
                            <li class="breadcrumb-item active">Member_insert</li>
                        </ol>
				<form id="insertMemberForm" name="insertMemberForm">
				<div class="row justify-content-center col-md-10">
	       		 <div class="col-5 ">
	         		 <div class="card ">
	           			 <div class="card-header">
	            			  개인 정보
	            		 </div>
	           			 <div class="card-body">
							    <div class="form-group text-secondary">
							    <div>
							      <label>이메일</label>
							      <input type="email" class="form-control" id="email"  name="email" placeholder="Email">
							     </div>
							     <br>
							     <div>
							      <label >비밀번호</label>
							      <input type="password" class="form-control" id="password" name="password" placeholder="password" >
							     </div>
							     <br>
							     <div>
							      <label>생년</label>
							      <input type="text" class="form-control" id="birthyear" name="birthyear" placeholder="ex) 97">
							     </div>
							     <br>
							     <div>
							      <label>생월</label>
							      	<select class="form-control" id="birthmonth" name="birthmonth"	>
							      	<option value="" selected disabled hidden>월 선택</option>
										<option value="01">1월</option>
										<option value="02">2월</option>
										<option value="03">3월</option>
										<option value="04">4월</option>
										<option value="05">5월</option>
										<option value="06">6월</option>
										<option value="07">7월</option>
										<option value="08">8월</option>
										<option value="09">9월</option>
										<option value="10">10월</option>
										<option value="11">11월</option>
										<option value="12">12월</option>
										</select>
							     </div>
							     <br>
							   <div>
							      <label>생일</label>
							      <select class="form-control" id="birthday" name="birthday"	>
							      	<option value="" selected disabled hidden>일 선택</option>
										<option value="01">1일</option>
										<option value="02">2일</option>
										<option value="03">3일</option>
										<option value="04">4일</option>
										<option value="05">5일</option>
										<option value="06">6일</option>
										<option value="07">7일</option>
										<option value="08">8일</option>
										<option value="09">9일</option>
										<option value="10">10일</option>
										<option value="11">11일</option>
										<option value="12">12일</option>
										<option value="13">13일</option>
										<option value="14">14일</option>
										<option value="15">15일</option>
										<option value="16">16일</option>
										<option value="17">17일</option>
										<option value="18">18일</option>
										<option value="19">19일</option>
										<option value="20">20일</option>
										<option value="21">21일</option>
										<option value="22">22일</option>
										<option value="23">23일</option>
										<option value="24">24일</option>
										<option value="25">25일</option>
										<option value="26">26일</option>
										<option value="27">27일</option>
										<option value="28">28일</option>
										<option value="29">29일</option>
										<option value="30">30일</option>
										<option value="31">31일</option>
										</select>
							     </div>
							     <br>
							     <div>
								  <label>이름(닉네임)</label>
							      <input type="text" class="form-control" id="name" name="name" placeholder="홍길동">
							     </div>
							    </div>
				            </div>
				        </div>
				  </div>
				<div class="col-5">
	         		 <div class="card">
	           			 <div class="card-header">
	            			  계정 정보
	            		 </div>
	           			 <div class="card-body">
							    <div class="form-group text-secondary">
							      <div>
								  <label>가입 날짜</label>
							      <input type="date" class="form-control" id="joindate" name="joindate">
							     </div>
							     <br>
							     <div>
								  <label for="inputConfirm">멤버십 사용 여부</label> 
										<select class="form-control" id="membership_chk" name="membership_chk"	>
							      	<option value="" selected disabled hidden>선택</option>
										<option value="true">YES</option>
										<option value="false">NO</option>
										</select>
							     </div>
							     <br>
							     <div>
								<label>이용권</label> <select
									class="form-control" id="membership" name="membership">
									<option value="" selected disabled hidden>선택</option>
									<c:forEach var="ticketList" items="${ticketList }">
										<option value="${ticketList.ticket_name }">${ticketList.ticket_id } / ${ticketList.ticket_name } / 동시 ${ticketList.ticket_limited}명</option>
									</c:forEach>
								</select>
							     </div>
							     <br>
							     <div>
								  <label>멤버십 시작 날짜</label>
							      <input type="date" class="form-control" id="membership_date" name="membership_date">
							     </div>
							     <br>
							     <div>
								 <label >멤버십 종료 날짜</label>
							      <input type="date" class="form-control" id="expiredate" name="expiredate" value="" readonly>
							     </div>
							     <br>
							    <div>
								  <label >카드 번호</label>
							      <input type="text" class="form-control" id="cardnum" name="cardnum" placeholder="302-1068-7781">
							     </div>
							      <div class="row">
									    <div class=" text-center">
									    <br>
									 
										    <button type="button" class="btn btn-primary btn-xlm" onclick="acyncMemberInsert('memberInsert.ado')">추가</button>
			      							<button type="reset" class="btn btn-danger btn-xlm">취소</button>
									  </div>
									</div>
									
							    </div>
				            </div>
				        </div>
				  </div>
			</div>
			</form>
					
                   </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; netflix Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
    </body>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="resources/js/scripts.js"></script>
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" 
      integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" 
      crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
      integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" 
      crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="resources/js/datatables-simple-demo.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="resources/js/member_script.js"></script>
        <script>
        
        //멤버십 사용 여부가 yes인 경우에만 이용권을 선택할 수 있도록 설정
    	$("#membership_chk").mouseout(function () {
    		var select=$(this).val();
    		if(select=='false'){
    			$("#membership option:eq(0)").prop("selected", true);
    			$("#membership_date ").prop("disabled", true);
    			$("#cardnum ").prop("disabled", true);
    			$('#membership option').each(function(){
    				$(this).prop('disabled',true);
    			});
    		}else{
    			$("#membership option:eq(0)").prop("selected", true);
    			$("#membership_date ").prop("disabled", false);
    			$("#cardnum ").prop("disabled", false);
    			$('#membership option').each(function(){
    				$(this).prop('disabled',false);
    			});
    		}
    	});
        

  

        
        $('#membership_date').change(function(){
        	
        	var memdate=$(this).val();
        	if(memdate!=null){
            	var dateSplit=memdate.split("-"); //문자열로 짤라주기
            	
            	var year = dateSplit[0];      //첫번째 배열은 년
            	var month = dateSplit[1];  //월
            	var month2 = parseInt(month)+1;  //월
            	var day = dateSplit[2];   //일

            	var InputDate = year +"-"+ month2 +"-"+ day;       //입력된 값을 date형태로 만들어준다
            	
            	$('#expiredate').val(InputDate);
        	}



        });

        
</script>
</html>