<%-- 
    Document   : contact
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
        <div class="container" style="margin-top: 7rem">

            <c:choose>
                <c:when test="${carts==null||carts.size()==0}">
                    <div>
                        <h1 style="text-align: center;">Giỏ hàng của bạn</h1>
                        <div class="alert alert-danger" role="alert" style="text-align: center;">
                            Giỏ hàng trống
                        </div>
                        <div style="text-align: center;">
                            <a class="btn btn-outline-success" href="web?action=product">
                                Mua hàng ngay
                            </a>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="mt-3">
                        <h1 style="text-align: center;">Giỏ hàng của bạn</h1>

                        <form id="formQuantity" action="update" method="get">
                            <table class="w-100 table table-striped mt-3">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Image</th>
                                        <th>Name of Product</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total Price</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${sessionScope.carts}" var="cart" varStatus="track">
                                        <tr>
                                            <td>${track.count}</td>
                                            <td>
                                                <img src="static/${cart.value.product.imageUrl}" style="width: 100px">
                                            </td>
                                            <td>${cart.value.product.name}</td>
                                            <td>
                                                $${cart.value.product.price}
                                            </td>
                                            <td>
                                                <input type="number" min="1" max="${cart.value.product.quantity}" class="pl-1" name="quantity${cart.value.product.id}" value="${cart.value.quantity}"
                                                       style="width: 60px" onchange="this.form.submit()" >
                                            </td>
                                            <td>
                                                $${cart.value.product.price*cart.value.quantity}
                                            </td>
                                            <td>
                                                <a href="web?action=delete&productId=${cart.value.product.id}" class="btn btn-danger"><i class="fas fa-trash"></i></a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <hr>
                            <div class="text-right">
                                <h4>Tổng tiền hóa đơn: $${totalMoney}</h4>
                            </div>
                            <hr>
                            <div class="text-right">
                                <a href="web?action=deleteAll" class="btn btn-danger"><i class="fas fa-trash mr-2"></i>Delete
                                    Cart</a>
                                <a href="checkout" class="btn btn-success ml-2">Continue
                                    <i class="fas fa-arrow-right ml-2"></i>
                                </a>
                            </div>
                        </form>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>

        <!-- Footer -->
        <%@include file="../components/footer.jsp" %>
    </body>

</html>
