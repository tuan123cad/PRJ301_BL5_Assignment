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
                        <h1 class="h3 mb-2 text-gray-800">Sản phẩm</h1>
                        <div class="mb-5">
                            <c:choose>
                                <c:when test="${product.quantity>0}">
                                    <div class="row mt-5">
                                        <div class="col-md-5 mt-5">

                                            <c:forEach items="${product.getListImages()}" var="image" varStatus="track">
                                                <div class="mySlides" style="display: block;">
                                                    <div class="numbertext">${track.count} / ${product.getListImages().size()}</div><br/><br/>
                                                    <div><img src="static/${image.imageUrl}" alt="${track.count}" class="w-100"></div>
                                                </div>
                                            </c:forEach>

                                            <!-- Next and previous buttons -->
                                            <a class="prevs" onclick="plusSlides(-1)">❮</a>
                                            <a class="nexts" onclick="plusSlides(1)">❯</a>


                                            <!-- Thumbnail images -->
                                            <div class="row-image">
                                                <c:forEach items="${product.getListImages()}" var="image" varStatus="track">
                                                    <div class="column">
                                                        <img class="demo cursor w-100 active" src="static/${image.imageUrl}" alt="${track.count}"
                                                             onclick="currentSlide(${track.count})">
                                                    </div>
                                                </c:forEach>

                                            </div>
                                        </div>

                                        <div class="col-md-6 pl-5">
                                            <h3 class="mt-5">
                                                ${product.name}
                                                <span>
                                                    <sup >
                                                        <sup class="btn-primary" style="border-radius: 10px">
                                                            ${product.getStatus(product.id)}
                                                        </sup>
                                                    </sup>
                                                </span>
                                            </h3>
                                            <p class="my-0"><b style="font-size: 25px;color: #f60">$${product.price}</b></p>
                                            <hr>
                                            <h6 class="mt-4"><b>Mã sản phẩm: ${product.code}</b></h6>
                                            <p class="mt-3"><b>Số lượng: </b>${product.quantity}</p>
                                            <hr>
                                            <p class="mt-4"><b>Thông tin sản phẩm:</b><br><br> ${product.description}</p>
                                            <hr>
                                            <a href="admin-image?action=view&id=${product.id}" class="btn btn-outline-dark" style="float: left;margin-left: 10%">Chỉnh sửa thông tin ảnh</a>
                                            <a href="admin-product" class="btn btn-outline-success" style="float: right; margin-right: 10%;">Quay về trang sản phẩm</a>
                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="row" style="margin-top:7rem;">
                                        <div class="col-md-12 alert alert-danger" role="alert" style="text-align: center;">
                                            KHÔNG TÌM THẤY SẢN PHẨM TƯƠNG ỨNG
                                        </div>
                                        <div class="col-md-12" style="text-align: center;">
                                            <a class="btn btn-outline-success" href="web">
                                                Quay về trang chủ
                                            </a>
                                        </div>
                                    </div>
                                </c:otherwise>
                            </c:choose>
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
