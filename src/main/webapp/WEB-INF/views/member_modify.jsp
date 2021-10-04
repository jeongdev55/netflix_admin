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
                            <li class="breadcrumb-item active">Member_modify</li>
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
							      <label for="inputEmail">이메일</label>
							      <input type="email" class="form-control " id="email"  name="email" value="${oneList.email}" readonly>
							     </div>
							     <br>
							     <div>
							      <label for="inputPass">비밀번호</label>
							      <input type="text" class="form-control " id="pass" name="pass" value="${oneList.pass}">
							     </div>
							     <br>
							     <div>
							      <label for="inputage">나이</label>
							      <input type="text" class="form-control "  id="age" name="age" value="${oneList.age}">
							     </div>
							     <br>
							     <div>
							      <label for="inputPhone">휴대폰번호</label>
							      <input type="text" class="form-control " id="phonenumber" name="phonenumber" value="${oneList.phonenumber}">
							     </div>
							     <br>
							     <div>
									<label for="inputgender">성별</label> 
										<select class="form-control modifymembergender" id="gender" name="gender"	>
										<option value="${oneList.gender}">${oneList.gender}</option>
										<option value="M">남자</option>
										<option value="W">여자</option>
										</select>
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
								  <label for="inputJoin_date">가입 날짜</label>
							      <input type="date" class="form-control " id="join_date" name="join_date" value="${oneList.join_date}">
							     </div>
							     <br>
							     <div>
								  <label for="inputNickname">닉네임</label>
							      <input type="text" class="form-control " id="nickname" name="nickname" value="${oneList.nickname}">
							     </div>
							     <br>
							     <div>
								<label for="inputTicket_id">이용권</label> <select
									class="form-control" id="ticket_id " name="ticket_id">
								<option value="${oneList.ticket_id}" selected hidden>${oneList.ticket_id}</option>
									<c:forEach var="ticketList2" items="${ticketList2 }">
										<option value="${ticketList2.ticket_id }">${ticketList2.ticket_id } / ${ticketList2.ticket_name } / 동시 ${ticketList2.ticket_limited}명</option>
									</c:forEach>
								</select>
							     </div>
							     <br>
							     <div>
								  <label for="inputConfirm">본인인증</label> 
										<select class="form-control" id="confirm" name="confirm"	>
										<option value="${oneList.confirm}">${oneList.confirm}</option>
										<option value="Y">YES</option>
										<option value="N">NO</option>
										</select>
							     </div>
							      <div class="row">
									    <div class=" text-center">
									    <br>
									    <br>
										    <button type="button" class="btn btn-primary btn-xlm" onclick="acyncMemberModify('memberModify.ado')">수정</button>
			      							<button type="reset" class="btn btn-danger btn-xlm" onclick="location.href='member.ado'">취소</button>
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
    </body>
</html>