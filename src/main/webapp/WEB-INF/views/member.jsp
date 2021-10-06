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
                        <h1 class="mt-4">회원 관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="adminDash.ado">Dashboard</a></li>
                            <li class="breadcrumb-item active">Member_manage</li>
                        </ol>

                         <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                              Table &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              
                <!-- ==================회원 추가 버튼=========== -->
                        <button type="button" class="btn btn-info" onClick="location.href='member_insertgo.ado'">
                        +회원 추가</button>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple" style="width:100%">
                                    <thead>
                                        <tr>
											<th>Email</th>
                                            <th>Join_date</th>
                                            <th>Nickname</th>
                                            <th>Ticket_id</th>
                                            <th>confirm</th>
                                            <th>Phone</th>
                                            <th>Button</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
											<th>Email</th>
                                            <th>Join_date</th>
                                            <th>Nickname</th>
                                            <th>Ticket_id</th>
                                            <th>confirm</th>
                                            <th>Phone</th>
                                            <th>Button</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                      <c:forEach var="member" items="${memberList}">
                                        <tr>
                                           <td>${member.email }</td>
                                            <td>${member.join_date }</td>
                                            <td>${member.nickname }</td>
                                            <td>${member.ticket_id }</td>
                                            <td>${member.confirm }</td>
                                            <td>${member.phonenumber }</td>
                                            <td>   
                                            
		            <!--================= 회원 수정 버튼================= -->
		                        		<button type="button" class="btn btn-primary btn-sm" id="modifyBtn"
					                        onclick="location.href='member_modifygo.ado?email=${member.email}'">
					                        수정</button>
										<button type="button" class="btn btn-danger btn-sm" 
					                        data-bs-toggle="modal" 
					                        data-bs-target="#deleteMember" 
					                      	data-delemail="${member.email }">
					                        삭제</button></td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                               
                   <!-- ==================회원 삭제 모달 창=========== -->                    
                  
      					<div class="modal fade" id="deleteMember">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title">회원 삭제</h4>
										        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
								</div>
									<div class="modal-body">해당 회원을 정말 삭제하시겠습니까?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											onclick="acyncMemberDelete('memberDelete.ado')">예</button>
										<button type="reset" class="btn btn-secondary" data-bs-dismiss="modal" >아니요</button>
									</div>
								</div>
							</div>
						</div>
                           
                           
                            </div>
                    </div>
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