<%-- 
    Document   : thanks
    Created on : Oct 26, 2021, 7:09:49 PM
    Author     : phant
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <style>
            .a{
                text-decoration: none !important;
                color: purple;
                font-size: 25px !important;
            }
            table td{
                padding-left: 2rem;
            }
            .next{
                right: 0 !important;
                border-radius: 3px 0 0 3px;
            }
            .btn-info{
                width: 15% !important;
            }
            span input{
                width: 75% !important;
            }

        </style>
        <!-- Bootstrap CSS -->

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
              integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <title>アプリ Shop - Product</title>
        <link rel="stylesheet" href="static/css/main.css">
    </head>

    <body>
        <!-- Header -->
        <header>
            <%@include file="../components/header.jsp" %>
        </header>

        <!-- Body -->
        <div class="container">
            <div class="row">
                <div class="col-md-12 mt-5">
                    <!--My profile-->
                    <div class="row mt-5" style="border: 1px solid #ced4da !important; border-radius: 5px !important">
                        <div class="col-md-4 mt-3 text-center">
                            <h3 style="color: orange">Thông tin tài khoản</h3>
                            <hr/>
                            <div class="mt-5"><a class="btn btn-outline-primary" href="myprofile" style="text-decoration: none;">Thông tin cá nhân</a></div>
                            <div class="mt-3"><a class="a" onclick="openOrder()">Đơn hàng</a></div>
                            <div class="mt-3"><a class="a" onclick="openHistory()">Lịch sử mua hàng</a></div>
                            <div class="mt-3"><a class="btn btn-outline-primary" onclick="openSetting()">Thay đổi thông tin cá nhân</a></div>
                        </div>
                        <div class="col-md-8" style="border: 1px solid #ced4da;">
                            <h3 class="text-center pt-3" style="color: orange">Chi tiết</h3>
                            <hr/>
                            <div class="row">
                                <div class="col-md-7">
                                    <table class="mt-5 mb-3">
                                        <tr>
                                            <td>Tên tài khoản:</td>
                                            <td>${sessionScope.account.username}</td>
                                        </tr>
                                        <tr>
                                            <td>Tên hiển thị:</td>
                                            <td>${sessionScope.account.displayName}</td>
                                        </tr>
                                        <tr>
                                            <td>Họ và tên</td>
                                            <td>${sessionScope.account.fullName}</td>
                                        </tr>
                                        <tr>
                                            <td>Địa chỉ: </td>
                                            <td>${sessionScope.account.address}</td>
                                        </tr>
                                        <tr>
                                            <td>Địa chỉ email: </td>
                                            <td>${sessionScope.account.email}</td>
                                        </tr>
                                        <tr>
                                            <td>Số điện thoại:  </td>
                                            <td>${sessionScope.account.phone}</td>
                                        </tr>
                                        <tr>
                                            <td>Vai trò:  </td>
                                            <td>${sessionScope.account.getRole(account.roleId).role}</td>
                                        </tr>
                                        <tr>
                                            <td>Trạng thái:  </td>
                                            <td>${sessionScope.account.getStatus(account.status).status}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-md-5">
                                    <img style="margin-top: -30px" class="img-circle" src="images/AccountIcon2.png" alt=""/>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Order Watting-->                    
                    <div id="order" class="row">
                        <div class="col-md-12 mt-3" style="border: 1px solid #ced4da !important; border-radius: 5px !important">
                            <h3 style="color: orange">Đơn hàng</h3>
                            <hr/>
                            <table class="table">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Họ và tên</th>
                                    <th scope="col">Số điện thoại</th>
                                    <th scope="col">Địa chỉ</th>
                                    <th scope="col">Tổng tiền</th>
                                    <th scope="col">Ngày đặt hàng</th>
                                    <th scope="col">Trạng thái</th>
                                    <th scope="col">Hành động</th>
                                <tr>
                                    <c:forEach items="${listOrderWatting}" var="order">
                                    <tr>
                                        <td>${order.id}</td>
                                        <td>${order.getShipping().name}</td>
                                        <td>${order.getShipping().phone}</td>
                                        <td>${order.getShipping().address}</td>
                                        <td><fmt:formatNumber type="currency" value="${order.totalPrice}"/></td>
                                    <td>${order.createDate}</td>
                                    <td>${order.getStatusOrder().status}</td>
                                    <c:if test="${order.getStatusOrder().id==2||order.getStatusOrder().id==5}"><td></td></c:if>
                                    <c:if test="${order.getStatusOrder().id==1}">
                                        <td> 
                                            <a  href="delete-order?id=${order.id}" onclick="return confirm('Are you sure you want to delete this item?');" class="btn btn-outline-danger"><i class="fas fa-trash mr-2"></i>Xóa</a>
                                        </td>
                                    </c:if>
                                    <c:if test="${order.getStatusOrder().id==3||order.getStatusOrder().id==4}">
                                        <td>
                                            <a href="success-order?id=${order.id}&status=${status}" class="btn btn-outline-info">Xác nhận</a>
                                        </td>
                                    </c:if>
                                    </tr>
                                </c:forEach>

                            </table>
                        </div>
                    </div>

                    <!--History-->
                    <div id="history" class="row">
                        <div class="col-md-12 mt-3" style="border: 1px solid #ced4da !important; border-radius: 5px !important">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Id đơn hàng</th>
                                                    <th>Tên sản phẩm</th>
                                                    <th>Ảnh</th>
                                                    <th>Số lượng</th>
                                                    <th>Giá bán</th>
                                                    <th>Ngày đặt hàng</th>
                                                    <th>Trạng thái</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${listOrderHistory}" var="history" varStatus="track">
                                                    <tr>

                                                        <td>${track.count}</td>
                                                        <td>${history.orderId}</td>
                                                        <td>${history.productName}</td>
                                                        <td><a href="detail?id=${history.productId}"><img src="images/${history.productImage}" style="width: 50px"></a></td>
                                                        <td>${history.quantity}</td>
                                                        <td>${history.productPrice}</td>
                                                        <td>${history.getOrder().createDate}</td>
                                                        <td class="text-success">success</td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Setting-->
                    <div id="setting" class="row mt-3">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3">

                                </div>

                                <div class="col-md-6" style="border: 1px solid #ced4da !important; border-radius: 5px !important">
                                    <form action="change" method="Post">
                                        <a onclick="openDisplayName()" id="disp" class="btn btn-outline-danger w-100 mt-2">Thay đổi tên hiển thị</a>
                                        <span id="displayName"><input type="text" class="mt-2" style="height: 35px" placeholder="Tên hiển thị" name="displayName"><input type="submit" class="btn btn-info ml-5" value="Thay đổi"></span>
                                        <a onclick="openChangePassword()" class="btn btn-outline-danger w-100 mt-2">Thay đổi mật khẩu</a>
                                        <span id="password"><input type="password" class="mt-2" style="height: 35px" placeholder="Nhập mật khẩu mới" name="password"></span>
                                        <span id="retypePassword"><input type="password" class="mt-2" style="height: 35px" placeholder="Nhập lại mật khẩu" name="retypePassword"><input type="submit" class="btn btn-info ml-5" value="Thay đổi"></span>
                                        <a onclick="openemail()" class="btn btn-outline-danger w-100 mt-2">Thay đổi email</a>
                                        <span id="email"><input type="email" class="mt-2" style="height: 35px" placeholder="Nhập email" name="email"><input type="submit" class="btn btn-info ml-5" value="Thay đổi"></span>
                                        <a onclick="openPhone()" class="btn btn-outline-danger w-100 mt-2">Thay đổi số điện thoại</a>
                                        <span id="phone"><input type="text" class="mt-2" style="height: 35px" placeholder="Nhập số điện thoại" name="phone"><input type="submit" class="btn btn-info ml-5" value="Thay đổi"></span>
                                        <a onclick="openAddress()" class="btn btn-outline-danger w-100 mt-2 mb-2">Thay đổi địa chỉ</a>
                                        <span id="address"><input type="text" class="mt-2" style="height: 35px" placeholder="Nhập địa chỉ" name="address"><input type="submit" class="btn btn-info ml-5" value="Thay đổi"></span>
                                    </form>
                                </div>

                                <div class="col-md-3">

                                </div>
                            </div>
                        </div>
                    </div>               

                </div>
            </div>
        </div>

        <!-- Footer -->
        <script>
            <c:choose>
                <c:when test="${order eq 1}">
            document.getElementById('order').style.display = 'block';
            document.getElementById('history').style.display = 'none';
            document.getElementById('setting').style.display = 'none';
                </c:when>
                <c:otherwise>
            document.getElementById('order').style.display = 'none';
            document.getElementById('history').style.display = 'none';
            document.getElementById('setting').style.display = 'none';
            document.getElementById('displayName').style.display = 'none';
            document.getElementById('password').style.display = 'none';
            document.getElementById('retypePassword').style.display = 'none';
            document.getElementById('email').style.display = 'none';
            document.getElementById('phone').style.display = 'none';
            document.getElementById('address').style.display = 'none';

            function openOrder() {
                document.getElementById('order').style.display = 'none';
                document.getElementById('history').style.display = 'none';
                document.getElementById('setting').style.display = 'none';
            }
            function openHistory() {
                document.getElementById('order').style.display = 'none';
                document.getElementById('history').style.display = 'none';
                document.getElementById('setting').style.display = 'none';
            }
            function openSetting() {
                if (document.getElementById('setting').style.display == 'none') {
                    document.getElementById('order').style.display = 'none';
                    document.getElementById('history').style.display = 'none';
                    document.getElementById('setting').style.display = 'block';
                } else {
                    document.getElementById('order').style.display = 'none';
                    document.getElementById('history').style.display = 'none';
                    document.getElementById('setting').style.display = 'none';
                }
            }
            function openDisplayName() {
                if (document.getElementById('displayName').style.display == 'none') {
                    document.getElementById('displayName').style.display = 'block';
                } else {
                    document.getElementById('displayName').style.display = 'none';
                }
            }
            function openChangePassword() {
                if (document.getElementById('password').style.display == 'none' && document.getElementById('retypePassword').style.display == 'none') {
                    document.getElementById('password').style.display = 'block';
                    document.getElementById('retypePassword').style.display = 'block';
                } else {
                    document.getElementById('password').style.display = 'none';
                    document.getElementById('retypePassword').style.display = 'none';
                }
            }
            function openemail() {
                if (document.getElementById('email').style.display == 'none') {
                    document.getElementById('email').style.display = 'block';
                } else {
                    document.getElementById('email').style.display = 'none';
                }
            }
            function openPhone() {
                if (document.getElementById('phone').style.display == 'none') {
                    document.getElementById('phone').style.display = 'block';
                } else {
                    document.getElementById('phone').style.display = 'none';
                }
            }
            function openAddress() {
                if (document.getElementById('address').style.display == 'none') {
                    document.getElementById('address').style.display = 'block';
                } else {
                    document.getElementById('address').style.display = 'none';
                }
            }
                </c:otherwise>
            </c:choose>
        </script>
        <%@include file="../components/footer.jsp" %>
    </body>

</html>
