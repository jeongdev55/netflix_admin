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
                        <h1 class="mt-4 ">회원 수정</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="adminDash.ado">Dashboard</a></li>
                            <li class="breadcrumb-item active">Member_Modify</li>
                        </ol>
				<form id="modifyMemberForm" name="modifyMemberForm">
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
							      <input type="email" class="form-control" id="email"  name="email" value="${oneList.email }">
							     </div>
							     <br>
							     <div>
							      <label >비밀번호</label>
							      <input type="text" class="form-control" id="password" name="password" value="${oneList.password }" >
							     </div>
							     <br>
							     <div>
							      <label>생년</label>
							      <input type="text" class="form-control" id="birthyear" name="birthyear" value="${oneList.birthyear }">
							     </div>
							     <br>
							     <div>
							      <label>생월</label>
							      	<select class="form-control" id="birthmonth" name="birthmonth"	>
							      	<option value="${oneList.birthmonth }" selected disabled hidden>${oneList.birthmonth }</option>
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
							        	<option value="${oneList.birthday }" selected disabled hidden>${oneList.birthday }</option>
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
							      <input type="text" class="form-control" id="name" name="name" value="${oneList.name }">
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
							      <input type="date" class="form-control" id="joindate" name="joindate" value="${oneList.joindate }">
							     </div>
							     <br>
							     <div>
								  <label for="inputConfirm">멤버십 사용 여부</label> 
										<select class="form-control" id="membership_chk" name="membership_chk"	>
							      	<option value="${oneList.membership_chk }" selected disabled hidden>${oneList.membership_chk }</option>
										<option value="true">YES</option>
										<option value="false">NO</option>
										</select>
							     </div>
							     <br>
							     <div>
								<label>이용권</label> <select
									class="form-control" id="membership" name="membership">
								 	<option value="${oneList.membership }" selected disabled hidden>${oneList.membership }</option>
									<c:forEach var="ticketList" items="${ticketList2 }">
										<option value="${ticketList.ticket_name }">${ticketList.ticket_id } / ${ticketList.ticket_name } / 동시 ${ticketList.ticket_limited}명</option>
									</c:forEach>
								</select>
							     </div>
							     <br>
							     <div>
								  <label>멤버십 시작 날짜</label>
							      <input type="date" class="form-control" id="membership_date" name="membership_date" value="${oneList.membership_date }">
							     </div>
							     <br>
							     <div>
								 <label >멤버십 종료 날짜</label>
							      <input type="date" class="form-control" id="expiredate" name="expiredate" value="${oneList.expiredate }">
							     </div>
							     <br>
							    <div>
								  <label >카드 번호</label>
							      <input type="text" class="form-control" id="cardnum" name="cardnum" value="${oneList.cardnum }">
							     </div>
							      <div class="row">
									    <div class=" text-center">
									    <br>
									 
										    <button type="button" class="btn btn-primary btn-xlm" onclick="acyncMemberModify('memberModify.ado')">수정</button>
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
               
                </script>
    </body>
</html>