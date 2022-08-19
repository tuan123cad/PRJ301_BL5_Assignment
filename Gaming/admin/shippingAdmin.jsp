<%-- 
    Document   : productAdmin
    Created on : Nov 2, 2021, 8:33:05 PM
    Author     : phant
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>${product.name}</title>

        <!-- Custom fonts for this template -->
        <link href="static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="static/css/sb-admin-2.min.css" rel="stylesheet">

        <!-- Custom styles for this page -->
        <link href="static/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
        <link rel="stylesheet" href="static/css/main.css">
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
                        <div style="text-align: center; " class="mt-5 mb-5">
                            <h1 class="h3 mb-2 text-gray-800">Thông tin chi tiết tài khoản</h1>
                        </div>

                        <div class="row">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <table class="table">
                                    <tr>
                                        <th scope="row"><input type="text" class="form-control-plaintext" value="Tên người nhận" disabled></th>
                                        <td><input type="text" class="form-control-plaintext" value="${shipping.name}" disabled></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><input type="text" class="form-control-plaintext" value="Email người nhận" disabled></th>
                                        <td><input type="text" class="form-control-plaintext" value="${shipping.email}" disabled></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><input type="text" class="form-control-plaintext" value="Số điện thoại người nhận" disabled></th>
                                        <td><input type="text" class="form-control-plaintext" value="${shipping.phone}" disabled></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a class="btn btn-outline-primary" href="admin-order">
                                                Quay về trang quản lý đơn hàng
                                            </a>
                                        </td>
                                        <td>
                                            <a class="btn btn-outline-success" href="admin">
                                                Quay về trang chủ
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-3"></div>
                        </div>
                    </div>
                    <!-- /.container-fluid -->

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
        <script src="static/vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="static/vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="static/js/demo/datatables-demo.js"></script>
        <script src="static/js/javascript.js" type="text/javascript"></script>
    </body>

</html>
