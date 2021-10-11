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
                                        <i class="fas fa-chart-pie me-1"></i>
                                        멤버십 사용 여부(회원)
                                    </div>
         							<div class="card-body"><canvas id="myChart1" width="80%" height="30"></canvas></div>
                                </div>
								<br>
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
                           <div class="col-md-12">
                               <div class="card">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        월별 신규 가입자
                                    </div>
                                    <div class="card-body"><canvas id="myChart3" width="80%" height="31"></canvas></div>
                                </div>
                                <br>
                         			<div class="card ">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        회원 나이(연령) 분포도
                                    </div>
                                    <div class="card-body"><canvas id="myChart4" width="80%" height="31"></canvas></div>
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
 	type: 'pie',
   	data: {
   	labels: ["YES", "NO"],
     datasets: [{
   	  label: ["YES", "NO" ],
        data: [${memberchk_map.get("true")},${memberchk_map.get("false")}], 
        backgroundColor: [
          '#9DCEFF',
          '#F2F3F6'
        ],
      }
    ]
  },
});
   
   
   var ctx2 = document.getElementById("myChart2");
   var myChart2 = new Chart(ctx2, {
  	type: 'doughnut',
    data: {
    	labels: ["basic", "standard", "premium"],
      datasets: [{
    	  label:  ["basic", "standard", "premium"],
    	  data: [${membership_map.get("basic")},${membership_map.get("standard")},${membership_map.get("premium")}],  
    	  backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f"],
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
         backgroundColor: "#86c2b4",
         borderColor: "#317174",
         pointRadius: 5,
         pointBackgroundColor: "#204e5f",
         pointBorderColor: "rgba(255,255,255,0.8)",
         pointHoverRadius: 5,
         pointHoverBackgroundColor: "rgba(2,117,216,1)",
         pointHitRadius: 50,
         pointBorderWidth: 2,
         data: [${month_map.get("01")}, ${month_map.get("02")},${month_map.get("03")},${month_map.get("04")},${month_map.get("05")},
             ${month_map.get("06")},${month_map.get("07")},${month_map.get("08")},${month_map.get("09")},${month_map.get("10")},
             ${month_map.get("11")},${month_map.get("12")}],
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
   
   var ctx4 = document.getElementById("myChart4");
   var myLineChart = new Chart(ctx4, {
     type: 'bar',
     data: {
       labels: ["10대", "20대", "30대", "40대", "50대", "60대 이상"],
       datasets: [{
         label: "age",
         backgroundColor: ["#f8b195", "#f67280","#c06c84","#6c5b7b","#204e5f","#bfbfbf"],
         borderColor: "rgba(2,117,216,1)",
         data: [${age_map.get("10대")},${age_map.get("20대")},${age_map.get("30대")},
        	 ${age_map.get("40대")},${age_map.get("50대")},${age_map.get("60대")}],
       }],
     },
     options: {
       scales: {
         xAxes: [{
           time: {
             unit: 'age'
           },
           gridLines: {
             display: false
           },
           ticks: {
             maxTicksLimit: 6
           }
         }],
         yAxes: [{
           ticks: {
             min: 0,
             max: 10,
             maxTicksLimit: 5
           },
           gridLines: {
             display: true
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