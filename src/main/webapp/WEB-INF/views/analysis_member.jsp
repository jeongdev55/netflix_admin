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
        <title>Charts - Member_Analysis</title>
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
                        <h1 class="mt-4">회원 분석 Charts</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Member_Analysis</li>
                        </ol>
						<div class="chart_div"  style="display:flex;">
						<div class="chart_left" style="flex:1;"> 
                              <div class="col-md-12">
                                <div class="card ">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        본인 인증(카드 등록) 여부
                                    </div>
         							<div class="card-body"><canvas id="myChart1" width="80%" height="30"></canvas></div>
                         
                                </div>

                                <div class="card ">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                        티켓 구매자 분석
                                    </div>
                                    <div class="card-body"><canvas id="myChart2" width="80%" height="30"></canvas></div>
                                   
                                </div>
                            </div>
                        </div>
                        <div class="chart_right" style="flex:1;">
                           <div class="col-md-20">
                               <div class="card">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        회원 나이(연령) 분포도
                                    </div>
                                    <div class="card-body"><canvas id="myChart3" width="90%" height="73"></canvas></div>
                              
                                </div>
                            </div>
						</div>
                      </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>         
           <script>
   

    
      

           
   var ctx1 = document.getElementById("myChart1");
   var myChart1 = new Chart(ctx1, {
 	type: 'doughnut',
   	data: {
   	labels: ["YES", "NO"],
     datasets: [{
   	  label: ["YES", "NO" ],
        data: [42, 12],      // 섭취량, 총급여량 - 섭취량
        backgroundColor: [
          '#9DCEFF',
          '#F2F3F6'
        ],
        borderWidth: 0,
        scaleBeginAtZero: true,
      }
    ]
  },
});
   
   
   var ctx2 = document.getElementById("myChart2");
   var myChart2 = new Chart(ctx2, {
  	type: 'doughnut',
    data: {
    	labels: ["102", "104", "106", "미구매"],
      datasets: [{
    	  label: ["102", "104", "106", "미구매" ],
    	  data: [4,5,6,30],  
    	  backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9"],
          borderWidth: 0,
          scaleBeginAtZero: true,
      }
    ]
  },
  
});
   
   var ctx3 = document.getElementById("myChart3");
   var myLineChart = new Chart(ctx3, {
     type: 'line',
     data: {
       labels: ["Jan 1", "Feb 2", "Mar 3", "Apr 4", "May 5", "Jun 6", "Jul 7", "Aug 8", "Sep 9", "Oct 10", "Nov 11", "Dec 12"],
       datasets: [{
         label: "가입자 수",
         lineTension: 0.3,
         backgroundColor: "rgba(2,117,216,0.2)",
         borderColor: "rgba(2,117,216,1)",
         pointRadius: 5,
         pointBackgroundColor: "rgba(2,117,216,1)",
         pointBorderColor: "rgba(255,255,255,0.8)",
         pointHoverRadius: 5,
         pointHoverBackgroundColor: "rgba(2,117,216,1)",
         pointHitRadius: 50,
         pointBorderWidth: 2,
         data: [${countMember.get(0).get("count")}, ${countMember.get(1).get("count")},${countMember.get(2).get("count")}, ${countMember.get(3).get("count")},
       	  ${countMember.get(4).get("count")},${countMember.get(5).get("count")},${countMember.get(6).get("count")},${countMember.get(7).get("count")},
       	  ${countMember.get(8).get("count")},${countMember.get(9).get("count")},${countMember.get(10).get("count")},${countMember.get(11).get("count")}],
       }],
     },
     options: {
       scales: {
         xAxes: [{
           time: {
             unit: 'date'
           },
           gridLines: {
             display: false
           },
           ticks: {
             maxTicksLimit: 7
           }
         }],
         yAxes: [{
           ticks: {
             min: 0,
             max: 10,
             maxTicksLimit: 5
           },
           gridLines: {
             color: "rgba(0, 0, 0, .125)",
           }
         }],
       },
       legend: {
         display: false
       }
     }
   });
   </script>
    </body>
</html>