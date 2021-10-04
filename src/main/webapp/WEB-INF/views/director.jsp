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
        <title>Admin-감독 관리</title>
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
                        <h1 class="mt-4">감독 관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="adminDash.ado">Dashboard</a></li>
                            <li class="breadcrumb-item active">Dirctor_manage</li>
                        </ol>
                         <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                              Table &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              
                <!-- ==================감독 추가 버튼=========== -->
                        <button type="button" class="btn btn-primary" 
                        data-bs-toggle="modal" 
                        data-bs-target="#insertManage" 
                        data-bs-whatever="@ado"
                        data-manageurl="director"
					    data-name="감독">
                        +감독 추가</button>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple" >
                                    <thead>
                                        <tr>
                                           <th>id</th>
                                            <th>Name</th>
                                            <th>선택</th>

                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                           <th>id</th>
                                            <th>Name</th>
											<th>선택</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                      <c:forEach var="directorList" items="${directorList}">
                                        <tr>
                                           <td>${directorList.id}</td>
                                            <td>${directorList.name}</td>
                                            <td>   
                                            
		            <!--================= 감독 수정 버튼================= -->
		                        		<button type="button" class="btn btn-primary btn-sm" id="modifyBtn"
					                        data-bs-toggle="modal" 
					                        data-bs-target="#modifyManage" 
					                        data-bs-whatever="@ado"
					                        data-modifyid="${directorList.id}"
					                        data-modifyname="${directorList.name}"
					                        data-manageurl="director"
					                        data-name="감독">
					                        수정</button>
		            <!--================= 감독 삭제 버튼================= -->
		                       			  <button type="button" class="btn btn-danger btn-sm" 
					                        data-bs-toggle="modal" 
					                        data-bs-target="#deleteManage" 
					                      	data-delid="${directorList.id}"
					                      	data-manageurl="director"
					                        data-name="감독">
					                        삭제</button></td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                               
 
                     <!-- ==================감독 추가 모달 창=========== -->
                           <div class="modal fade" id="insertManage">
                             <div class="modal-dialog" >
                               <div class="modal-content">
                                 <div class="modal-header">
                                   <h5 class="modal-title" >감독 추가</h5>
                                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                 </div>
                                 <div class="modal-body">
                                   <form id="insertManageForm" name="insertManageForm">
                                   <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">id:</label>
                                       <input type="text" class="form-control" id="id" name="id">
                                     </div>

                                     <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">Name:</label>
                                       <input type="text" class="form-control" id="name" name="name">
                                     </div>
                                   </form>
                                 </div>
                                 <div class="modal-footer">
                                   <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" >취소</button>
                                   <button type="button" class="btn btn-primary" onclick="acyncManageInsert('directorInsert.ado')" id="insertBtn">등록</button>
                                 </div>
                               </div>
                             </div>
                           </div>
                           
                           <!-- ==================감독 수정 모달 창=========== -->            
                        <div class="modal fade" id="modifyManage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                             <div class="modal-dialog" role="document">
                               <div class="modal-content">
                                 <div class="modal-header">
                                   <h5 class="modal-title" id="exampleModalLabel">감독 수정</h5>
                                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                 </div>
                                 <div class="modal-body">
                                   <form id="modifyManageForm" name="modifyManageForm">
                                   <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">id:</label>
                                       <input type="text" class="form-control modifyManageIdInput" id="id" name="id" readonly >
                                     </div>
                                     <div class="mb-3">
                                       <label for="recipient-name" class="col-form-label">Name:</label>
                                       <input type="text" class="form-control modifyManageNameInput" id="name" name="name">
                                     </div>

                                   </form>
                                 </div>
                                 <div class="modal-footer">
                                 <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" >취소</button>
                                   <button type="button" class="btn btn-primary" onclick="acyncManageModify('directorModify.ado')">수정</button>
                                 </div>
                               </div>
                             </div>
                           </div>
                  <!-- ==================감독 삭제 모달 창=========== -->                    
                  
      					<div class="modal fade" id="deleteManage">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title">감독 삭제</h4>
										        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
								</div>
									<div class="modal-body">해당 감독을 정말 삭제하시겠습니까?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											onclick="acyncManageDelete('directorDelete.ado')">예</button>
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
                <script src="resources/js/manage_script.js"></script>
    </body>
</html>
