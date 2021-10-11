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
        <title>Admin-판매 관리</title>
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
                        <h1 class="mt-4">판매 관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="adminDash.ado">Dashboard</a></li>
                            <li class="breadcrumb-item active">Sales_manage</li>
                        </ol>
                         <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                              Table &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple"  class="">
                                    <thead>
                                        <tr>
                                           <th>email</th>
                                            <th>membership</th>
                                            <th>membership_date</th>
                                            <th>expiredate</th>
                                            <th>cardnum</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                           <th>email</th>
                                            <th>membership</th>
                                            <th>membership_date</th>
                                            <th>expiredate</th>
                                            <th>cardnum</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                         				 <c:forEach var="salesList" items="${salesList}">
	                                        <tr>
	                                           <td>${salesList.email}</td>
	                                            <td>${salesList.membership}</td>
	                                            <td>${salesList.membership_date}</td>
	                                            <td>${salesList.expiredate}</td>
	                                            <td>${salesList.cardnum}</td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
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
         <script>
         var delTicket_id="";
         $(document).ready(function() {	
        		$('#deleteSales').on('show.bs.modal', function(event) {
        			delSales_id = $(event.relatedTarget).data('delid');
        		});
        	});
         function acyncSalesDelete(url) {
        		var sales_id = {
        				"sales_id" : delSales_id
        			};

        			$.ajax({
        				url : url,
        				type : "POST",
        				data : sales_id,
        				dataType : "json",
        				success : function(data) {
        					if (data == 1) {
        			               alert("해당 결제가 취소 되었습니다.");
        			               location.href="sales.ado";
        					} else {
        			               alert("[Error] 결제 취소 오류");
        					}
        				},
        				error : function() {
        					alert("error");
        				}
        			});
        		
        	}
         </script>
    </body>
</html>