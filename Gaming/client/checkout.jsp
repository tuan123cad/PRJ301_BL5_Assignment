<%-- 
    Document   : checkout
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
            <div class="container" style="margin-top: 7.5rem">
                <div class="row">
                    <div class="col-md-8" style="border: 1px solid #ced4da;border-radius: 5px !important">
                        <h2 class="mt-3">Danh sách sản phẩm</h2>
                        <table class="w-100 table table-striped mt-3">
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
                    <div class="col-md-4 pl-5" style="border: 1px solid #ced4da;border-radius: 5px !important;">
                        <h3 class="mt-3" style="color: orange;text-align: center;">Thông tin khách hàng</h3>
                        <div class="card mt-3">
                            <div class="card-body">
                                <form action="checkout" method="POST">
                                    <div class="form-group">
                                        <label for="name">Họ và tên</label>
                                        <input type="text" name="name" class="form-control" placeholder="Nhập họ và tên."
                                               required="">
                                        <small id="emailHelp" class="form-text text-muted">
                                            Chúng tôi sẽ không bao giờ cung cấp thông tin của bạn cho bên thứ 3.
                                        </small>
                                    </div>
                                    <div class="form-group">
                                        <label for="sdt">Số điện thoại</label>
                                        <input type="number" name="mobile" class="form-control" placeholder="Nhập số điện thoại"
                                               required="">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Địa chỉ Email</label>
                                        <input type="text" name="email" class="form-control" placeholder="Nhập email của bạn"
                                               required="">
                                    </div>
                                    <div class="form-group">
                                        <label for="note">Ghi chú</label>
                                        <textarea class="form-control" rows="3" name="note"></textarea>
                                    </div>

                                    <button type="submit" class="btn btn-success w-100">Xác nhận</button>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- Footer -->
        <%@include file="../components/footer.jsp" %>
    </body>

</html>
