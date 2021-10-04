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
        <title>Admin-${category_name } 추가</title>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/css/bootstrap-select.css" integrity="sha512-03p8fFZpOREY+YEQKSxxretkFih/D3AVX5Uw16CAaJRg14x9WOF18ZGYUnEqIpIqjxxgLlKgIB2kKIjiOD6++w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
       <link href="resources/css/styles.css" rel="stylesheet" />
     
    </head>
    <body>
     <%@ include file="header.jsp" %>  
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4 "><label id="category_name">${category_name } </label> 추가</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="adminDash.ado">Dashboard</a></li>
                            <li class="breadcrumb-item active">Content_Insert</li>
                        </ol>
				<form id="insertContentForm" name="insertContentForm">
				<div class="row justify-content-center col-md-10">
	       		 <div class="col-5 ">
	         		 <div class="card ">
	           			 <div class="card-header">
	            			  ${category_name } 정보 입력
	            		 </div>
	           			 <div class="card-body">
							    <div class="form-group text-secondary">
							    <div>
							      <label>${category_name } id</label>
							      <input type="text" class="form-control " id="content_id"  name="content_id" >
							     </div>
							    <div>
							      <label>제목</label>
							      <input type="text" class="form-control " id="content_title"  name="content_title" >
							     </div>
							    <div>
							      <label>영어 제목</label>
							      <input type="text" class="form-control " id="english_title"  name="english_title" >
							     <br>
							     <div>
							      <label>제작 년도</label>
							      <input type="text" class="form-control " id="content_making" name="content_making" >
							     </div>
							     <br>
							     <div>
							      <label>요약 설명</label>
							      <textarea class="form-control" id="summary" name="summary" ></textarea>
							     </div>
							     <br>
							     <div>
							      <label>재생 시간(분)</label>
							      <input type="number" class="form-control " id="runningtime" name="runningtime" >
							     </div>
						     	<br>
							 	<div>
							      <label>분류</label>
							      <input type="text" class="form-control " id="category_name"  name="category_name" value="${category_name }" readonly>
							     </div>
							     <br>
							<div>
							      <label>메인 노출 여부</label>
							      <select class="form-control " id="is_main" name="is_main"	>
										<option value="">선택</option>
										<option value="Y">Y</option>
										<option value="N">N</option>

								</select>
							     </div>
							    </div>
				            </div>
				        </div>
				  </div>
				</div>
				<div class="col-5">
	         		 <div class="card">
	           			 <div class="card-header">
	            			  콘텐츠 정보 선택
	            		 </div>
	           			 <div class="card-body">
							    <div class="form-group text-secondary">
							 <div>
							     <label >국가</label> <select
								class="form-control" id="country" name="country"
								title="선택해 주세요">
								<option value="한국">한국</option>
								<option value="미국">미국</option>
								<option value="영국">영국</option>
								<option value="일본">일본</option>
								<option value="프랑스">프랑스</option>
								<option value="중국">중국</option>
								<option value="캐나다">캐나다</option>
								<option value="대만">대만</option>
								<option value="스페인">스페인</option>
								<option value="오스트레일리아">오스트레일리아</option>
								<option value="인도">인도</option>
								<option value="러시아">러시아</option>
							</select>
							     </div>
							     <br>
							     <div>
							      <label>장르</label>
							     <select class=" multi_select form-control" id="genre_name " name="genre_name" 
									multiple data-live-search="true"
									title="선택해 주세요" 
									data-max-options="4">
									<c:forEach var="genreList" items="${genreList }">
										<option value="${genreList.name }">${genreList.name }</option>
									</c:forEach>
								</select>
							     </div>
							     <br>
							     <div>
							      <label>감독</label>
							     <select class=" multi_select form-control" id="director_name " name="director_name" 
									multiple data-live-search="true"
									title="선택해 주세요" 
									data-max-options="4">
									<c:forEach var="directorList" items="${directorList }">
										<option value="${directorList.name }">${directorList.name }</option>
									</c:forEach>
								</select>
							     </div>
							     <br>
							     <div>
							      <label>배우</label>
							     <select class=" form-control multi_select" id="actor_name " name="actor_name"
									multiple data-live-search="true"
									title="선택해 주세요" 
									data-max-options="4">
									<c:forEach var="actorList" items="${actorList }">
										<option value="${actorList.name }">${actorList.name }</option>
									</c:forEach>
								</select>
							     </div>
							     <br>
							 	<div >
							      <label>연령등급</label>
							      <select class="form-control" id="content_rating" name="content_rating"	>
										<option value="" selected hidden>선택</option>
										<option value="12">12세</option>
										<option value="15">15세</option>
										<option value="18">18세</option>
								</select>
							     </div>
							     <br>
							   <div>
							      <label>화질 선택</label>
							     <select class="form-control" id="imagequality" name="imagequality"	>
										<option value="HD">HD</option>
										<option value="Full-HD">Full-HD</option>
										<option value="">null</option>
								</select>
							     </div>
							     <br>
							    <div>
							     <label>특징</label>
							       <select class = "multi_select form-control" multiple id="characteristic" name="characteristic"   multiple data-live-search="true"
									title="선택해 주세요" 
									data-max-options="6">
										<option value="힐링">힐링</option>
										<option value="설렘주의">설렘주의</option>
										<option value="다크">다크</option>
										<option value="긴장감 넘치는">긴장감 넘치는</option>
										<option value="흥미진진">흥미진진</option>
										<option value="엉뚱 기발">엉뚱 기발</option>
										<option value="무서운 이야기">무서운 이야기</option>
										<option value="가슴 뭉클">가슴 뭉클</option>
										<option value="황당한 이야기">황당한 이야기</option>
										<option value="위트">위트</option>
										<option value="푼수 캐릭터">푼수 캐릭터</option>
										<option value="감동과 영감">감동과 영감</option>
										<option value="로맨스">로맨스</option>
										<option value="즐거움">즐거움</option>
										<option value="슬픔">슬픔</option>
								</select>
							     </div>
							     <div class="row">
									    <div class=" text-center">
									    <br>
										    <button type="button" class="btn btn-primary btn-xlm" onclick="acyncContentInsert('contentInsert.ado')">추가</button>
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
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/js/bootstrap-select.min.js" integrity="sha512-yDlE7vpGDP7o2eftkCiPZ+yuUyEcaBwoJoIhdXv71KZWugFqEphIS3PU60lEkFaz8RxaVsMpSvQxMBaKVwA5xg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script src="resources/js/content.js"></script>
		
    </body>
</html>