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
        <title>Admin-${category_name } 관리</title>
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
                        <h1 class="mt-4"><label id="category_name">${category_name } </label> 관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="adminDash.ado">Dashboard</a></li>
                            <li class="breadcrumb-item active">Content_manage</li>
                        </ol>

                         <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                              Table &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              
                <!-- ==================콘텐츠 추가 버튼=========== -->
                        <button type="button" class="btn btn-info" onClick="location.href='content_insertgo.ado?category_name=${category_name}'">
                        +${category_name }  추가</button>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple" style="width:100%">
                                    <thead>
                                        <tr>
											<th>id</th>
											<th>poster</th>
                                            <th>title</th>
                                            <th>rating</th>
                                            <th>making</th>
                                            <th>director</th>
                                            <th>actor</th>
                                            <th>genre</th>
                                            <th>country</th>
                                            <th>is_main</th>
                                           	<th>Button</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
											<th>id</th>
											<th>poster</th>
                                            <th>title</th>
                                            <th>rating</th>
                                            <th>making</th>
                                            <th>director</th>
                                            <th>actor</th>
                                            <th>genre</th>
                                            <th>country</th>
                                            <th>is_main</th>
                                           	<th>Button</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                      <c:forEach var="ContentList" items="${ContentList}">
                                        <tr>
                                           <td>${ContentList.content_id }</td>
                                            <td><img src="http://kghosting.dothome.co.kr/poster/${ContentList.english_title }.png" width="200px" ></td>
                                            <td>${ContentList.content_title }</td>
                                            <td>${ContentList.content_rating }</td>
                                            <td>${ContentList.content_making }</td>
                                            <td>${ContentList.director_name }</td>
                                            <td>${ContentList.actor_name }</td>
                                            <td>${ContentList.genre_name }</td>
                                            <td>${ContentList.country }</td>
                                            <td>${ContentList.is_main }</td>
                                            <td>   
                                            
		            <!--================= 콘텐츠 수정 버튼================= -->
		                        		<button type="button" class="btn btn-primary btn-sm" id="modifyBtn"
					                        onclick="location.href='content_modifygo.ado?content_id=${ContentList.content_id}&&category_name=${category_name}'">
					                        수정</button>
										<button type="button" class="btn btn-danger btn-sm" 
					                        data-bs-toggle="modal" 
					                        data-bs-target="#deleteContent" 
					                      	data-content_id="${ContentList.content_id }">
					                        삭제</button></td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                               
                   <!-- ==================콘텐츠 삭제 모달 창=========== -->                    
                  
      					<div class="modal fade" id="deleteContent">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title">${category_name } 삭제</h4>
										        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
								</div>
									<div class="modal-body">해당 ${category_name }를 정말 삭제하시겠습니까?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											onclick="acyncContentDelete('contentDelete.ado')">예</button>
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
                <script src="resources/js/content.js"></script>
    </body>
</html>