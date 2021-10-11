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
        <title>Admin-이용권 관리</title>
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
                        <h1 class="mt-4">이용권 관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="adminDash.ado">Dashboard</a></li>
                            <li class="breadcrumb-item active">Ticket_manage</li>
                        </ol>
                         <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                              Table &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              
                <!-- ==================이용권 추가 버튼=========== -->
                        <button type="button" class="btn btn-primary" 
                        data-bs-toggle="modal" 
                        data-bs-target="#insertTicket" 
                        data-bs-whatever="@ado"
                        data-manageurl="genre"
					    data-name="장르">
                        +이용권 추가</button>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple"  class="">
                                    <thead>
                                        <tr>
                                           <th>ticket_id</th>
                                            <th>ticket_name</th>
                                            <th>ticket_limited</th>
                                            <th>ticket_price</th>
                                            <th>ticket_content</th>
                                            <th>is_main</th>
											<th>선택</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                           <th>ticket_id</th>
                                            <th>ticket_name</th>
                                            <th>ticket_limited</th>
                                            <th>ticket_price</th>
                                            <th>ticket_content</th>
                                            <th>is_main</th>
											<th>선택</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                         				 <c:forEach var="ticketList" items="${ticketList}">
	                                        <tr>
	                                           <td>${ticketList.ticket_id}</td>
	                                            <td>${ticketList.ticket_name}</td>
	                                            <td>${ticketList.ticket_limited}</td>
	                                            <td>${ticketList.ticket_price}</td>
	                                            <td>${ticketList.ticket_content}</td>
	                                            <td>${ticketList.is_main}</td>
	                                            <td>   
                                            
		            <!--================= 이용권 수정 버튼================= -->
		                        		<button type="button" class="btn btn-primary btn-sm" id="modifyBtn"
					                        data-bs-toggle="modal" 
					                        data-bs-target="#modifyTicket" 
					                        data-bs-whatever="@ado"
					                        data-modifyid="${ticketList.ticket_id}"
					                        data-modifyname="${ticketList.ticket_name}"
					                        data-modifylimited="${ticketList.ticket_limited}"
					                        data-modifyprice="${ticketList.ticket_price}"
					                        data-modifycontent="${ticketList.ticket_content}"
					                        data-modifyis_main="${ticketList.is_main}">
					                        수정</button>
		            <!--================= 이용권 삭제 버튼================= -->
		                       			  <button type="button" class="btn btn-danger btn-sm" 
					                        data-bs-toggle="modal" 
					                        data-bs-target="#deleteTicket" 
					                      	data-delid="${ticketList.ticket_id}">
					                        삭제</button></td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                               
 
                     <!-- ==================이용권 추가 모달 창=========== -->
                           <div class="modal fade" id="insertTicket">
                             <div class="modal-dialog" >
                               <div class="modal-content">
                                 <div class="modal-header">
                                   <h5 class="modal-title" >이용권 추가</h5>
                                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                 </div>
                                 <div class="modal-body">
                                   <form id="insertTicketForm" name="insertTicketForm">
                                   <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">이용권 id:</label>
                                       <input type="text" class="form-control" id="ticket_id" name="ticket_id">
                                     </div>

                                     <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">이용원 이름:</label>
                                       <input type="text" class="form-control" id="ticket_name" name="ticket_name">
                                     </div>
                                     
                                   <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">시청 인원:</label>
                                       <input type="number" class="form-control" id="ticket_limited" name="ticket_limited">
                                     </div>
                                     
                                   <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">가격:</label>
                                       <input type="text" class="form-control" id="ticket_price" name="ticket_price">
                                     </div>
                                     
                                 <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">이용권 설명:</label>
 									 <textarea class="form-control" id="ticket_content" name="ticket_content" ></textarea>
                                     </div>
                                     
                                      <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">메인 노출 여부:</label>
                                       <select class="form-control" id="is_main" name="is_main"	>
     									 <option  value="" seleted hidden>선택하세요.</option>
										<option value="Y">Y</option>
										<option value="N">N</option>
										</select>
                                     </div>
                                   </form>
                                 </div>
                                 <div class="modal-footer">
                                   <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" >취소</button>
                                   <button type="button" class="btn btn-primary" onclick="acyncTicketInsert('ticketInsert.ado')" id="insertBtn">등록</button>
                                 </div>
                               </div>
                             </div>
                           </div>
                           
                           <!-- ==================장르 수정 모달 창=========== -->            
                        <div class="modal fade" id="modifyTicket" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                             <div class="modal-dialog" role="document">
                               <div class="modal-content">
                                 <div class="modal-header">
                                   <h5 class="modal-title" id="exampleModalLabel">이용권 수정</h5>
                                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                 </div>
                                 <div class="modal-body">
								<form id="modifyTicketForm" name="modifyTicketForm">
                                   <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">이용권 id:</label>
                                       <input type="text" class="form-control mofifyidinput" id="ticket_id" name="ticket_id">
                                     </div>

                                     <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">이용원 이름:</label>
                                       <input type="text" class="form-control modifynameinput" id="ticket_name" name="ticket_name">
                                     </div>
                                     
                                   <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">시청 인원:</label>
                                       <input type="number" class="form-control modifylimitedinput" id="ticket_limited" name="ticket_limited">
                                     </div>
                                     
                                   <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">가격:</label>
                                       <input type="text" class="form-control modifypriceinput" id="ticket_price" name="ticket_price">
                                     </div>
                                     
                                 <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">이용권 설명:</label>
                                          <textarea class="form-control modifycontentinput" id="ticket_content" name="ticket_content" ></textarea>
                                     </div>
                                     
                                      <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">메인 노출 여부:</label>
                                       <select class="form-control" id="is_main" name="is_main"	>
										<option class="modifyis_maininput" value="" seleted hidden></option>
										<option value="Y">Y</option>
										<option value="N">N</option>
										</select>
                                     </div>
                                   </form>
                                 </div>
                                 <div class="modal-footer">
                                 <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" >취소</button>
                                   <button type="button" class="btn btn-primary" onclick="acyncTicketModify('ticketModify.ado')">수정</button>
                                 </div>
                               </div>
                             </div>
                           </div>
                  <!-- ==================장르 삭제 모달 창=========== -->                    
                  
      					<div class="modal fade" id="deleteTicket">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title">이용권 삭제</h4>
										        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
								</div>
									<div class="modal-body">해당 이용권을 정말 삭제하시겠습니까?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											onclick="acyncTicketDelete('ticketDelete.ado')">예</button>
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
                <script src="resources/js/ticket_script.js"></script>
    </body>
</html>
