<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
    <title>干事申请</title>

    <link rel="stylesheet" href="../dist/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../dist/modules/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../dist/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css">

    <link rel="stylesheet" href="../dist/modules/summernote/summernote-lite.css">
    <link rel="stylesheet" href="../dist/modules/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="../dist/css/demo.css">
    <link rel="stylesheet" href="../dist/css/style.css">
</head>

<body>
    <div id="app">
        <jsp:include page="include.jsp"/>
            <div class="main-content">
                <section class="section">
                    <h1 class="section-header">
                        <div>提交申报</div>
                    </h1>
                    <div class="row">
                        <div class="col-lg-7 col-md-12 col-12 col-sm-12">
                            <form method="post" class="needs-validation" novalidate>
                                <div class="card">
                                    <div class="card-header">
                                        <h4>维修申报表</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label>问题标题</label>
                                            <input type="text" name="title" class="form-control" required>

                                            <div class="invalid-feedback">
                                                请输入内容
                                            </div>

                                        </div>

                                        <div class="form-group">
                                            <label>问题类型</label>

                                            <div>
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-primary" id="btn-select">硬件问题</button>
                                                    <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <span class="sr-only">Toggle Dropdown</span>
                                                    </button>
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" onclick="change(this)">软件问题</a>
                                                        <a class="dropdown-item" onclick="change(this)">编程问题</a>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label>问题描述(越详细越好)</label>
                                            <textarea class="summernote-simple"></textarea>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <button class="btn btn-primary float-right">提交</button>
                                    </div>
                                </div>
                            </form>
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
        var ctx = document.getElementById("myChart").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
                datasets: [{
                    label: 'Statistics',
                    data: [460, 458, 330, 502, 430, 610, 488],
                    borderWidth: 2,
                    backgroundColor: '#0062cc',
                    borderColor: '#0062cc',
                    borderWidth: 2.5,
                    pointBackgroundColor: '#ffffff',
                    pointRadius: 4
                }]
            },
            options: {
                legend: {
                    display: false
                },
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true,
                            stepSize: 150
                        }
                    }],
                    xAxes: [{
                        gridLines: {
                            display: false
                        }
                    }]
                },
            }
        });

        function change(e) {
            var m = e.innerHTML;
            console.log(e.innerHTML)
            e.innerHTML = document.getElementById("btn-select").innerHTML;
            document.getElementById("btn-select").innerHTML = m;

        }
    </script>
    <script src="../dist/js/scripts.js"></script>
    <script src="../dist/js/custom.js"></script>
    <script src="../dist/js/demo.js"></script>
</body></html>
