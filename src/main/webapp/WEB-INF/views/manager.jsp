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
        <title>Admin-관리자 관리</title>
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
                        <h1 class="mt-4">관리자 관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="adminDash.ado">Dashboard</a></li>
                            <li class="breadcrumb-item active">Manager_manage</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
      
                                   <h5>관리자 권한 기능 규정</h5><br>
                                    최고 관리자: 관리자 추가 , 관리자 수정, 관리자 삭제<br>
                                    중간 관리자: 관리자 수정, 관리자 삭제<br>
                                    하위 관리자: 기능 제한<br><br>
                                    당신은 <label style="color:red;" id="manager_position">${sessionScope.manager.position}</label> 입니다.
                
                            </div>
                        </div>
                         <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                              Table &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              
                <!-- ==================관리자 추가 버튼=========== -->
                        <button type="button" class="btn btn-primary" 
                        data-bs-toggle="modal" 
                        data-bs-target="#exampleModal" 
                        data-bs-whatever="@ado">
                        +관리자추가</button>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                           <th>id</th>
                                            <th>Email</th>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>선택</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                           <th>id</th>
                                            <th>Email</th>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>선택</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                      <c:forEach var="manager" items="${managerList}">
                                        <tr>
                                           <td>${manager.id }</td>
                                            <td>${manager.email }</td>
                                            <td>${manager.name }</td>
                                            <td>${manager.position }</td>
                                            <td>   
                                            
		            <!--================= 관리자 수정 버튼================= -->
		                        		<button type="button" class="btn btn-primary btn-sm" id="modifyBtn"
					                        data-bs-toggle="modal" 
					                        data-bs-target="#modifyManager" 
					                        data-bs-whatever="@ado"
					                        data-modifyid="${manager.id }"
					                        data-modifyemail="${manager.email }"
					                        data-modifypass="${manager.pass }"
					                        data-modifyname="${manager.name }"
					                        data-modifyposition="${manager.position}">
					                        수정</button>
		            <!--================= 관리자 삭제 버튼================= -->
		                       			  <button type="button" class="btn btn-danger btn-sm" 
					                        data-bs-toggle="modal" 
					                        data-bs-target="#deleteManager" 
					                      	data-delid="${manager.id }">
					                        삭제</button>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                               
 
                     <!-- ==================관리자 추가 모달 창=========== -->
                           <div class="modal fade" id="exampleModal">
                             <div class="modal-dialog" >
                               <div class="modal-content">
                                 <div class="modal-header">
                                   <h5 class="modal-title" >관리자 추가</h5>
                                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                 </div>
                                 <div class="modal-body">
                                   <form id="insertManagerForm" name="insertManagerForm">
                                   <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">id:</label>
                                       <input type="text" class="form-control" id="id" name="id">
                                     </div>
                                     <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">Email:</label>
                                       <input type="text" class="form-control" id="email" name="email">
                                     </div>
                                               <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">Password:</label>
                                       <input type="text" class="form-control" id="pass" name="pass">
                                     </div>
                                     <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">Name:</label>
                                       <input type="text" class="form-control" id="name" name="name">
                                        
                                     </div>
                                      <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">Position:</label>
                                       <select id="position" name="position" class="form-control">
									    <option value="선택">선택</option>
									    <option value="최고 관리자">최고 관리자</option>
									    <option value="중간 관리자">중간 관리자</option>
									    <option value="하위 관리자">하위 관리자</option>
									    </select>
                                     </div>
                                   </form>
                                 </div>
                                 <div class="modal-footer">
                                   <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" >취소</button>
                                   <button type="button" class="btn btn-primary" onclick="acyncManagerInsert('managerInsert.ado')" id="insertBtn">등록</button>
                                 </div>
                               </div>
                             </div>
                           </div>
                           
                           <!-- ==================관리자 수정 모달 창=========== -->            
                        <div class="modal fade" id="modifyManager" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                             <div class="modal-dialog" role="document">
                               <div class="modal-content">
                                 <div class="modal-header">
                                   <h5 class="modal-title" id="exampleModalLabel">관리자 수정</h5>
                                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                 </div>
                                 <div class="modal-body">
                                   <form id="modifyManagerForm" name="modifyManagerForm">
                                   <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">id:</label>
                                       <input type="text" class="form-control modifyManagerIdInput" id="id" name="id" readonly >
                                     </div>
                                     <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">Email:</label>
                                       <input type="text" class="form-control modifyManagerEmailInput" id="email" name="email">
                                     </div>
                                               <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">Password:</label>
                                       <input type="text" class="form-control modifyManagerPassInput" id="pass" name="pass">
                                     </div>
                                     <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">Name:</label>
                                       <input type="text" class="form-control modifyManagerNameInput" id="name" name="name">
                                        
                                     </div>
                                     <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">Position:</label>
                                       <select id="position" name="position" class="form-control modifyManagerPositionInput">
									    <option value="최고 관리자">최고 관리자</option>
									    <option value="중간 관리자">중간 관리자</option>
									    <option value="하위 관리자">하위 관리자</option>
									    </select>
                                     </div>
                                   </form>
                                 </div>
                                 <div class="modal-footer">
                                 <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" >취소</button>
                                   <button type="button" class="btn btn-primary" onclick="acyncManagerModify('managerModify.ado')">수정</button>
                                 </div>
                               </div>
                             </div>
                           </div>
                  <!-- ==================관리자 삭제 모달 창=========== -->                    
                  
      					<div class="modal fade" id="deleteManager">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title">관리자 삭제</h4>
										        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
								</div>
									<div class="modal-body">해당 관리자를 정말 삭제하시겠습니까?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											onclick="acyncManagerDelete('managerDelete.ado')">예</button>
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
                <script src="resources/js/manager_script.js"></script>
    </body>
</html>