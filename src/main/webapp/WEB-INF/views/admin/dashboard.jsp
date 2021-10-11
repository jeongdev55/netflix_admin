<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - 관리자 페이지</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
        <link href="resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
     <%@ include file="header.jsp" %>   
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Admin</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">등록된 콘텐츠 수<br>총<label>${contentCnt }</label>개</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="content.ado?category_name=영화">자세히 보기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">가입자 수<br>총<label>${memberCnt}</label>명</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                       <a class="small text-white stretched-link" href="member.ado">자세히 보기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">문의 건수<br>총<label>10</label>건</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                       <a class="small text-white stretched-link" href="#">자세히 보기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                   <div class="card-body">월 매출<br>\<label>xxxxx</label>원</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                      <a class="small text-white stretched-link" href="#">자세히 보기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        월별 가입자 수
                                    </div>
                                    <div class="card-body"><canvas id="MonthMember" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        월별 매출
                                    </div>
                                    <div class="card-body"><canvas id="MonthSales" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                신규 가입자 리스트
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                      		<th>email</th>
                                            <th>joindate</th>
                                            <th>membership_chk</th>
                                            <th>name</th>
                                            <th>membership</th>
                                            <th>birthyear</th>

                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>email</th>
                                            <th>joindate</th>
                                            <th>membership_chk</th>
                                            <th>name</th>
                                            <th>membership</th>
                                            <th>birthyear</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach var="member" items="${memberList}">
                                    <tr>
                                    <td>${member.email}</td>
                                    <td>${member.joindate}</td>
                                    <td>${member.membership_chk}</td>
                                    <td>${member.name}</td>
                                    <td>${member.membership}</td>
                                    <td>${member.birthyear}</td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
     <%@ include file="footer.jsp" %>   
            </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="resources/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="resources/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="resources/js/datatables-simple-demo.js"></script>
                <script>
        var ctx = document.getElementById("MonthMember");
        var myLineChart = new Chart(ctx, {
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
                  max: 15,
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

        
        var ctx2 = document.getElementById("MonthSales");
        var myLineChart = new Chart(ctx2, {
          type: 'bar',
          data: {
        	  labels: ["Jan 1", "Feb 2", "Mar 3", "Apr 4", "May 5", "Jun 6", "Jul 7", "Aug 8", "Sep 9", "Oct 10", "Nov 11", "Dec 12"],
            datasets: [{
              label: "Revenue",
              backgroundColor: "rgba(2,117,216,1)",
              borderColor: "rgba(2,117,216,1)",
              data: [${sales_map.get("01")}, ${sales_map.get("02")},${sales_map.get("03")},${sales_map.get("04")},${sales_map.get("05")},
                  ${sales_map.get("06")},${sales_map.get("07")},${sales_map.get("08")},${sales_map.get("09")},${sales_map.get("10")},
                  ${sales_map.get("11")},${sales_map.get("12")}],
            }],
          },
          options: {
            scales: {
              xAxes: [{
                time: {
                  unit: 'month'
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
                  max: 50000,
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