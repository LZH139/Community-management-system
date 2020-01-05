<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
    <title>工作台</title>



    <link rel="stylesheet" href="../dist/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../dist/modules/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../dist/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css">

    <link rel="stylesheet" href="../dist/modules/summernote/summernote-lite.css">
    <link rel="stylesheet" href="../dist/modules/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="../dist/css/demo.css">

    <link rel="stylesheet" href="../dist/css/style.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>



</head>

<body>
    <div id="app">
            <jsp:include page="include.jsp"/>
            <div class="main-content">
                <section class="section">
                    <h1 class="section-header">
                        <div>工作台</div>
                    </h1>

                    <div class="row">

                        <div class="col-12 col-sm-6 col-lg-3">
                            <div class="card card-sm bg-primary">
                                <div class="card-icon">
                                    <i class="ion ion-person"></i>
                                </div>
                                <div class="card-wrap">
                                    <div class="card-body">
                                        10天
                                    </div>
                                    <div class="card-header">
                                        <h4>任职时长</h4>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12">
                            <div class="card card-sm bg-danger">
                                <div class="card-icon">
                                    <i class="ion ion-ios-paper-outline"></i>
                                </div>
                                <div class="card-wrap">
                                    <div class="card-body">
                                        3
                                    </div>
                                    <div class="card-header">
                                        <h4>代办事项</h4>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12">
                            <div class="card card-sm bg-success">
                                <div class="card-icon">
                                    <i class="ion ion-checkmark-circled"></i>
                                </div>
                                <div class="card-wrap">
                                    <div class="card-body">
                                        47
                                    </div>
                                    <div class="card-header">
                                        <h4>已完成事项</h4>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12">
                            <div class="card card-sm bg-info">
                                <div class="card-icon">
                                    <i class="ion ion-ios-bell"></i>
                                </div>
                                <div class="card-wrap">
                                    <div class="card-body">
                                        47
                                    </div>
                                    <div class="card-header">
                                        <h4>通知</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-6 col-lg-8">
                            <div class="card">
                                <div class="card-header">
                                    <div class="float-right">
                                        <a data-collapse="#mycard-timetable" class="btn btn-icon"><i class="ion ion-minus"></i></a>
                                    </div>
                                    <h4>空闲时间表</h4>
                                </div>
                                <div class="collapse hidden" id="mycard-timetable">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="timetable">
                                                <tr>
                                                    <th>#</th>
                                                    <th>Monday</th>
                                                    <th>Tuesday</th>
                                                    <th>Wednesday</th>
                                                    <th>Thursday</th>
                                                    <th>Friday</th>
                                                    <th>Saturday</th>
                                                    <th>Sunday</th>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>7</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>8</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>9</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>10</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>11</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>12</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                            </table>
                                        </div>

                                    </div>
                                    <div class="card-footer">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 col-12 col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="float-right">
                                        <a data-collapse="#mycard-collapse" class="btn btn-icon"><i class="ion ion-minus"></i></a>
                                    </div>
                                    <h4>成员列表</h4>
                                </div>
                                <div class="collapse hidden" id="mycard-collapse">
                                    <div class="card-body">

                                        <div class="row pre-scrollable">
                                            <ul class="list-unstyled list-unstyled-border" style="width:100%; margin:0px 10px 0px 10px">
                                                <li class="media">
                                                    <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                                                    <button class="btn btn-primary" type="button"><i class="ion ion-search"></i></button>
                                                </li>
                                                <li class="media">

                                                    <img class="mr-3 rounded-circle" width="50" src="../dist/img/avatar/avatar-1.jpeg" alt="avatar">
                                                    <div class="media-body">

                                                        <div class="media-title">Farhan A Mujib</div>
                                                        <shiro:hasPermission name="sendNotices">
                                                            <button data-collapse="#mycard-test" class="btn btn-primary btn-round btn-sm float-right"><i class="ion ion-minus"></i></button>
                                                            <div class="collapse hidden" style="margin-top: 50px" id="mycard-test">
                                                                <form method="post" action="/sendmessage">
                                                                    <input hidden value="0" name="id">
                                                                    <textarea type="text" class="form-control" placeholder="请输入内容..." name="message"></textarea>

                                                                    <shiro:hasPermission name="sendTasks">
                                                                        <div class="input-group-sm" style="display: none;margin-top: 3px" id="tasktime">
                                                                            <input type="text" class="form-control input-sm" id="datepickerstart"  data-min-date=today style="background-color: white;width: 48%" placeholder="任务开始时间">
                                                                            <div class="ion ion-minus" style="padding:8px 0px 8px 0px"></div>
                                                                            <input type="text" class="form-control" id="datepickerend"  data-min-date=today style="background-color: white;width: 48%" placeholder="任务结束时间">
                                                                        </div>
                                                                    </shiro:hasPermission>

                                                                    <div class="btn-group float-right" style="margin-top: 8px">
                                                                        <button type="button" class="btn btn-primary btn-sm float-right">发送通知</button>
                                                                        <button type="button" class="btn btn-primary btn-sm float-right dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <span class="sr-only">Toggle Dropdown</span>
                                                                        </button>
                                                                        <div class="dropdown-menu">
                                                                            <shiro:hasPermission name="sendTasks">
                                                                                <a class="dropdown-item" onclick="choose(this)" id="1">任务</a>
                                                                            </shiro:hasPermission>
                                                                                <a class="dropdown-item" onclick="choose(this)" id="0">通知</a>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </shiro:hasPermission>
                                                    </div>
                                                </li>

                                            </ul>
                                        </div>


                                    </div>





                                </div>

                            </div>




                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-6 col-lg-6">
                            <div class="card">
                                <div class="card-header bg-danger">
                                    <div class="float-right ">
                                        <a data-collapse="#mycard-notice" class="btn btn-icon" style="color: white"><i class="ion ion-minus"></i></a>
                                    </div>
                                    <h4 style="color: white">任务</h4>
                                </div>
                                <div class="collapse show" id="mycard-notice">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label>要求</label>
                                            <div>
                                                <strong>XXXX</strong>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>完成情况</label>
                                            <textarea class="summernote-simple"></textarea>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <button class="btn btn-primary">确认提交</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-6">
                            <div class="card" id="mycard-dimiss">
                                <div class="card-header bg-info">
                                    <div class="float-right">
                                        <a data-dismiss="#mycard-dimiss" class="btn btn-icon" style="color: white"><i class="ion ion-close"></i></a>
                                    </div>
                                    <h4 style="color: white">通知</h4>
                                </div>
                                <div class="card-body">
                                    You can dimiss this card.
                                </div>
                                <div class="card-footer">

                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <footer class="main-footer">
                <div class="footer-right"></div>
            </footer>
        </div>
    </div>

    <script src="../dist/js/jquery.min.js"></script>
    <script src="../dist/modules/popper.js"></script>
    <script src="../dist/modules/tooltip.js"></script>
    <script src="../dist/bootstrap/js/bootstrap.min.js"></script>
    <script src="../dist/modules/nicescroll/jquery.nicescroll.min.js"></script>
    <script src="../dist/modules/scroll-up-bar/dist/scroll-up-bar.min.js"></script>
    <script src="../dist/js/sa-functions.js"></script>

    <script src="../dist/modules/chart.min.js"></script>
    <script src="../dist/modules/summernote/summernote-lite.js"></script>


    <script>
        var tab = document.getElementById('timetable')
        var rows = tab.rows;
        var rlen = rows.length;
        for (var i = 1; i < rlen; i++) {
            var cells = rows[i].cells;
            for (var j = 0; j < cells.length; j++) {
                cells[j].onclick = function() {
                    if (this.style.background == '') {
                        this.style.background = "#28a745"
                    } else {
                        this.style.background = ''
                    }
                }

            }
        }


        document.getElementById("datepickerstart").flatpickr();
        document.getElementById("datepickerend").flatpickr();


        function choose(e) {
            e.parentNode.parentNode.children[0].innerHTML = "发送" + e.innerHTML;
            e.parentNode.parentNode.parentNode.children[0].value = e.id;
            if(document.getElementById("tasktime").style.display == "none"){
                document.getElementById("tasktime").style.display = "flex";
            }else{
                document.getElementById("tasktime").style.display = "none";
            }

        }



        // var ctx = document.getElementById("myChart").getContext('2d');
        // var myChart = new Chart(ctx, {
        //     type: 'line',
        //     data: {
        //         labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
        //         datasets: [{
        //             label: 'Statistics',
        //             data: [460, 458, 330, 502, 430, 610, 488],
        //             borderWidth: 2,
        //             backgroundColor: '#0062cc',
        //             borderColor: '#0062cc',
        //             borderWidth: 2.5,
        //             pointBackgroundColor: '#ffffff',
        //             pointRadius: 4
        //         }]
        //     },
        //     options: {
        //         legend: {
        //             display: false
        //         },
        //         scales: {
        //             yAxes: [{
        //                 ticks: {
        //                     beginAtZero: true,
        //                     stepSize: 150
        //                 }
        //             }],
        //             xAxes: [{
        //                 gridLines: {
        //                     display: false
        //                 }
        //             }]
        //         },
        //     }
        // });

    </script>
    <script src="../dist/js/scripts.js"></script>
    <script src="../dist/js/custom.js"></script>
    <script src="../dist/js/demo.js"></script>
</body></html>
