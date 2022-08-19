<%-- 
    Document   : insertProduct
    Created on : Nov 3, 2021, 8:27:52 AM
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

        <title>Sửa danh mục con</title>

        <!-- Custom fonts for this template -->
        <link href="static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="static/css/sb-admin-2.min.css" rel="stylesheet">

        <!-- Custom styles for this page -->
        <link href="static/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

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
                        <h1 class="h3 mb-4 text-gray-700" style="text-align: center;">Sửa danh mục con</h1>

                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <form action="admin-subcategory?action=update&id=${subCategory.id}" method="POST">
                                    <c:if test="${warning!=null}">
                                        <div style="text-align: center;">
                                            <span class="alert-danger">${warning}</span>
                                        </div>
                                    </c:if>
                                    <div class="form-group mt-4">
                                        <label for="productCode">Sản phẩm thuộc danh mục: </label>
                                        <select name="cate">
                                            <c:forEach items="${listCategories}" var="category" varStatus="track">
                                                <option value="${category.id}" ${subCategory.category.getId()==category.id?"selected":""}>${category.categoryName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="subCateName">Tên danh mục con</label>
                                        <input type="text" class="form-control" name="name" id="exampleInputEmail1" aria-describedby="subcatename" placeholder="Nhập tên danh mục con" value="${subCategory.subCategoryName}">
                                    </div>
                                    <div class="form-group">
                                        <label for="productStatus">Trạng thái của danh mục con</label>
                                        <div style="margin-left: 40%">
                                            <c:forEach items="${listStatusSubCategory}" var="stat">
                                                <c:choose>
                                                    <c:when test="${stat.id==listStatusSubCategory.size()}">
                                                        <input type="radio" name="status" value="${stat.id}" ${subCategory.status==stat.id?"checked":""}>${stat.status}
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="radio" name="status" value="${stat.id}" ${subCategory.status==stat.id?"checked":""}>${stat.status}<br/>
                                                    </c:otherwise>
                                                </c:choose>

                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="form-group" style="text-align: center; border-radius: 5px;">
                                        <input type="submit" name="submit" class="btn btn-facebook" value="Sửa danh mục con">
                                    </div>
                                </form>
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

    </body>

</html>
