<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
    <title>历史提交</title>

    <link rel="stylesheet" href="../dist/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../dist/modules/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../dist/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css">

    <link rel="stylesheet" href="../dist/modules/summernote/summernote-lite.css">
    <link rel="stylesheet" href="../dist/modules/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="../dist/css/demo.css">
    <link rel="stylesheet" href="../dist/css/style.css">
</head>

<body onload="queryServer('<shiro:principal type='dto.User' property='uid'/>')">

    <div id="app">

        <jsp:include page="include.jsp"/>
            <div class="main-content">
                <section class="section">
                    <h1 class="section-header">
                        <div>历史申报</div>
                    </h1>
                    <div class="row mt-5">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4>历史申报</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped" id="table">
                                            <tr>
                                                <th class="text-center">
                                                    <div class="custom-checkbox custom-control">
                                                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" id="checkbox-all">
                                                        <label for="checkbox-all" class="custom-control-label"></label>
                                                    </div>
                                                </th>
                                                <th>问题标题</th>
                                                <th>进程</th>
                                                <th>成员</th>
                                                <th>提交时间</th>
                                                <th>转台</th>
                                                <th>细节</th>


                                            </tr>
                                            <tr>
                                                <td width="40">
                                                    <div class="custom-checkbox custom-control">
                                                        <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-1">
                                                        <label for="checkbox-1" class="custom-control-label"></label>
                                                    </div>
                                                </td>
                                                <td>Create a mobile app</td>
                                                <td class="align-middle">
                                                    <div class="progress" style="height: 4px;" data-toggle="tooltip" title="100%">
                                                        <div class="progress-bar bg-success" style="width: 100%;"></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <img alt="image" src="../dist/img/avatar/avatar-5.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Wildan Ahdian">
                                                </td>
                                                <td>2018-01-20</td>
                                                <td>
                                                    <div class="badge badge-success">Completed</div>
                                                </td>
                                                <td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>
                                            </tr>
                                            <%--<tr>--%>
                                                <%--<td>--%>
                                                    <%--<div class="custom-checkbox custom-control">--%>
                                                        <%--<input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-2">--%>
                                                        <%--<label for="checkbox-2" class="custom-control-label"></label>--%>
                                                    <%--</div>--%>
                                                <%--</td>--%>
                                                <%--<td>Redesign homepage</td>--%>
                                                <%--<td class="align-middle">--%>
                                                    <%--<div class="progress" style="height: 4px;" data-toggle="tooltip" title="0%">--%>
                                                        <%--<div class="progress-bar" style="width: 0;"></div>--%>
                                                    <%--</div>--%>
                                                <%--</td>--%>
                                                <%--<td>--%>
                                                    <%--<img alt="image" src="../dist/img/avatar/avatar-1.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Nur Alpiana">--%>
                                                    <%--<img alt="image" src="../dist/img/avatar/avatar-3.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Hariono Yusup">--%>
                                                    <%--<img alt="image" src="../dist/img/avatar/avatar-4.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Bagus Dwi Cahya">--%>
                                                <%--</td>--%>
                                                <%--<td>2018-04-10</td>--%>
                                                <%--<td>--%>
                                                    <%--<div class="badge badge-info">Todo</div>--%>
                                                <%--</td>--%>
                                                <%--<td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>--%>
                                            <%--</tr>--%>
                                            <%--<tr>--%>
                                                <%--<td>--%>
                                                    <%--<div class="custom-checkbox custom-control">--%>
                                                        <%--<input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-3">--%>
                                                        <%--<label for="checkbox-3" class="custom-control-label"></label>--%>
                                                    <%--</div>--%>
                                                <%--</td>--%>
                                                <%--<td>Backup database</td>--%>
                                                <%--<td class="align-middle">--%>
                                                    <%--<div class="progress" style="height: 4px;" data-toggle="tooltip" title="70%">--%>
                                                        <%--<div class="progress-bar bg-warning" style="width: 70%;"></div>--%>
                                                    <%--</div>--%>
                                                <%--</td>--%>
                                                <%--<td>--%>
                                                    <%--<img alt="image" src="../dist/img/avatar/avatar-1.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Rizal Fakhri">--%>
                                                    <%--<img alt="image" src="../dist/img/avatar/avatar-2.jpeg" class="rounded-circle" width="35" data-toggle="title" title="Hasan Basri">--%>
                                                <%--</td>--%>
                                                <%--<td>2018-01-29</td>--%>
                                                <%--<td>--%>
                                                    <%--<div class="badge badge-warning">In Progress</div>--%>
                                                <%--</td>--%>
                                                <%--<td><a href="#" class="btn btn-action btn-secondary">Detail</a></td>--%>
                                            <%--</tr>--%>

                                        </table>
                                    </div>

                                </div>

                                <div class="card-footer text-right">
                                    <nav class="d-inline-block">
                                        <ul class="pagination mb-0">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" tabindex="-1"><i class="ion ion-chevron-left"></i></a>
                                            </li>
                                            <li class="page-item active"><a class="page-link" href="#">1 <span class="sr-only">(current)</span></a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#">2</a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#"><i class="ion ion-chevron-right"></i></a>
                                            </li>
                                        </ul>
                                    </nav>
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
        var data;
        var pageSize=5;
        var currentPage=1;
        var totalPage;


        function queryServer(account){

            $.ajax({
                url: "/QueryHistory", //请求的url地址
                dataType: "json", //返回格式为json
                async: true, //使用异步请求进行通信
                data:{
                    "account":account
                },
                timeout: 5000,
                type: "post", //请求方式
                success: function(req) {
                    data = req;
                    InitializesPaging();
                },
                error: function(jqXHR){
                    alert("发生错误：" + jqXHR.status);
                },
            });



        }



        function showCurrentData(dataOfCurrentPage) {
            for(var i=0;i<dataOfCurrentPage.length;i++){
                var newTr = document.createElement('tr');
                //TO-DO

            }

            console.log($("table"));


        }

        function InitializesPaging(){
            totalPage = Math.ceil(data.length / pageSize);
            currentPage = 1;
            var dataOfCurrentPage = getDataOfCurrentPage();

            showCurrentData(dataOfCurrentPage);

        }

        function getDataOfCurrentPage() {
            var dataEnd = currentPage * pageSize;
            var dataStart = (currentPage - 1)*pageSize;
            if (dataEnd > data.length){
                dataEnd = data.length;
            }
            console.log(dataStart);
            console.log(dataEnd);

            return data.slice(dataStart,dataEnd);
        }





    </script>
    <script src="../dist/js/scripts.js"></script>
    <script src="../dist/js/custom.js"></script>
    <script src="../dist/js/demo.js"></script>
</body></html>
