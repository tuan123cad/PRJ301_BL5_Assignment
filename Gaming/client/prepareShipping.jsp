<%-- 
    Document   : product
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
        <div>
            <div class="container" style="margin-top: 6rem;">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-body mt-5" style="border: 1px solid #ced4da;border-radius: 5px">
                            <h2 style="color: orange;text-align: center;">Danh sách sản phẩm</h2>
                            <table class="w-100 table mt-3">
                                <tbody>
                                    <tr>
                                        <th>STT</th>
                                        <th>Ảnh</th>
                                        <th>Tên sản phẩm</th>
                                        <th>Giá tiền</th>
                                        <th>Số lượng</th>
                                        <th>Tổng tiền</th>
                                    </tr>
                                    <c:forEach items="${sessionScope.carts}" var="cart" varStatus="track">
                                        <tr>
                                            <td>${track.count}</td>
                                            <td>
                                                <img src="static/${cart.value.product.imageUrl}" style="width: 100px">
                                            </td>
                                            <td>
                                                ${cart.value.product.name}
                                            </td>
                                            <td>
                                                ${cart.value.product.price}
                                            </td>
                                            <td>
                                                ${cart.value.quantity}
                                            </td>
                                            <td>
                                                ${cart.value.product.price*cart.value.quantity}
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <hr>
                            <div class="text-right">
                                <h4>Số tiền phải thanh toán:$${totalMoney}</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="mt-5"><a onclick="document.getElementById('inf').submit()" class="btn btn-outline-success ml-auto w-100">Giao hàng</a></div>
                        <div class="mt-3"><a onclick="display()"
                                             class="btn btn-outline-info ml-auto w-100">Chỉnh sửa thông tin nhận hàng</a></div>
                    </div>

                    <div class="col-md-8 mt-3">
                        <form id="inf" action="shipping" method="post"
                              style="border: 1px solid #ced4da !important; border-radius: 5px !important">
                            <div class="card">
                                <div class="card-body">
                                    <h2 style="color: orange;text-align: center;">Thông tin nhận hàng:</h2>
                                    <h6 style="overflow: visible;text-align: center !important">Sản phẩm sẽ được gửi qua thông tin dưới đây!</h6><br>
                                    <table style="margin-left: 27%;">
                                        <tr>
                                            <td>Họ và tên </td>
                                            <td>
                                                <span class="ml-4"> <b>${name}</b></span>
                                                <input type="hidden" name="name" value="${name}">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Phone number </td>
                                            <td>
                                                <span class="ml-4">${phone}</span>
                                                <input type="hidden" name="mobile" value="${phone}">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Email </td>
                                            <td>
                                                <span class="ml-4">${email}</span>
                                                <input type="hidden" name="email" value="${email}">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Ghi chú </td>
                                            <td>
                                                <span class="ml-4">${note}</span>
                                                <input type="hidden" name="note" value="${note}">
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-2">

                    </div>
                    <div id="info" class="col-md-8 mt-5" style="display: none;">
                        <div class="card">
                            <div class="card-body" style="border: 1px solid #ced4da;border-radius: 5px !important">
                                <h2 class="mt-3" style="color: orange;text-align: center">Thông tin khách hàng</h2>
                                <div class="card mt-3">
                                    <div class="card-body">
                                        <form action="shipping" method="POST">
                                            <div class="form-group">
                                                <label for="name">Họ và tên</label>
                                                <input type="text" name="name" class="form-control"
                                                       placeholder="Nhập họ và tên">
                                                <small id="emailHelp" class="form-text text-muted">Chúng tôi sẽ không bao giờ cung cấp thông tin của bạn cho bên thứ 3.</small>
                                            </div>
                                            <div class="form-group">
                                                <label for="sdt">Số điện thoại</label>
                                                <input type="number" name="mobile" class="form-control"
                                                       placeholder="Nhập số điện thoại">
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input type="text" name="email" class="form-control" placeholder="Nhập email của bạn"
                                                       required="">
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Ghi chú</label>
                                                <textarea class="form-control" rows="3" name="note"></textarea>
                                            </div>

                                            <button type="submit" class="btn btn-success w-100">Xác nhận</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-2">

                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <%@include file="../components/footer.jsp" %>
    </body>

</html>
