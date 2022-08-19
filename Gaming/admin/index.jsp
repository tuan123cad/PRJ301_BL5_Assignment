<%-- 
    Document   : index
    Created on : Nov 2, 2021, 1:39:21 PM
    Author     : phant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin</title>

        <!-- Custom fonts for this template-->
        <link href="static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="static/css/sb-admin-2.min.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <%@include file="../components/headerAdmin.jsp" %>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <%@include file="../components/topbar.jsp" %>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Thông tin</h1>
                            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                    class="fas fa-download fa-sm text-white-50"></i> Tải xuống bản report</a>
                        </div>

                        <!-- Content Row -->
                        <div class="row">

                            <!-- Danh mục -->
                            <div class="col-xl-4 col-md-6 mb-4">
                                <a href="admin-category" style="text-decoration: none">
                                    <div class="card border-left-primary shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                        Danh mục</div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800">Số danh mục: ${countCate}</div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-list-alt fa-2x text-gray-300"></i>
                                                </div>
                                                <div class="col-12 mt-2" style="border-bottom: 3px solid black; "></div>
                                                <div class="col-12 mt-2">
                                                    Xem chi tiết
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <!-- Danh mục con -->
                            <div class="col-xl-4 col-md-6 mb-4">
                                <a href="admin-subcategory" style="text-decoration: none">
                                    <div class="card border-left-success shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                        Danh mục con</div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800">Số danh mục con: ${countSubCate}</div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-align-left fa-2x text-gray-300"></i>
                                                </div>
                                                <div class="col-12 mt-2" style="border-bottom: 3px solid black; "></div>
                                                <div class="col-12 mt-2">
                                                    Xem chi tiết
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <!-- Sản phẩm -->
                            <div class="col-xl-4 col-md-6 mb-4">
                                <a href="admin-product" style="text-decoration: none">
                                    <div class="card border-left-info shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Sản phẩm
                                                    </div>
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col-auto">
                                                            <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">Số sản phẩm: ${countProd}</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fab fa-product-hunt fa-2x text-gray-300"></i>
                                                </div>
                                                <div class="col-12 mt-2" style="border-bottom: 3px solid black; "></div>
                                                <div class="col-12 mt-2">
                                                    Xem chi tiết
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <!-- Tài khoản -->

                            <div class="col-xl-4 col-md-6 mb-5">
                                <a href="admin-account" style="text-decoration: none">
                                    <div class="card border-left-warning shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                        Tài khoản</div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800">Số tài khoản: ${countAccount}</div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-users fa-2x text-gray-300"></i>
                                                </div>
                                                <div class="col-12 mt-2" style="border-bottom: 3px solid black; "></div>
                                                <div class="col-12 mt-2">
                                                    Xem chi tiết
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>


                            <!--Hóa đơn-->

                            <div class="col-xl-4 col-md-6 mb-5">
                                <a href="admin-order" style="text-decoration: none">
                                    <div class="card border-left-dark shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                        Hóa đơn</div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800">Số hóa đơn: ${countOrder}</div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-boxes fa-2x text-gray-300"></i>
                                                </div>
                                                <div class="col-12 mt-2" style="border-bottom: 3px solid black; "></div>
                                                <div class="col-12 mt-2">
                                                    Xem chi tiết
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <!--Thông tin hóa đơn-->

                            <div class="col-xl-4 col-md-6 mb-5">
                                <a href="admin-order-detail" style="text-decoration: none">
                                    <div class="card border-left-danger shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                        Chi tiết đơn hàng</div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800">Số đơn chi tiết: ${countOrderDetail}</div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fab fa-usps fa-2x text-gray-300"></i>
                                                </div>
                                                <div class="col-12 mt-2" style="border-bottom: 3px solid black; "></div>
                                                <div class="col-12 mt-2">
                                                    Xem chi tiết
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-12" style="text-align: center;">
                                <img src="static/images/poster/anh1.jpg" width="100%" style="height: 85%;object-fit: cover;"/>
                            </div>
                        </div>

                    </div>
                    <!--/.container-fluid--> 

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>@copyright by <a>ゲーム Shop</a> 2021.</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Sẵn sàng rời đi?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Chọn "Đăng xuất" bên dưới nếu bạn đã sẵn sàng kết thúc phiên hiện tại của mình.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
                        <a class="btn btn-primary" href="logout">Đăng xuất</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="static/vendor/jquery/jquery.min.js"></script>
        <script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="static/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="static/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="static/vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="static/js/demo/chart-area-demo.js"></script>
        <script src="static/js/demo/chart-pie-demo.js"></script>

    </body>

</html>
