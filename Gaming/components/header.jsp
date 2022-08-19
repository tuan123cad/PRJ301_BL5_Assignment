<%-- 
    Document   : header
    Created on : Oct 26, 2021, 7:10:16 PM
    Author     : phant
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark"
     style="height: 5rem; opacity: 0.8; font-family: sans-serif; font-size: 90%; background-color: #404040 !important">
    <a class="navbar-brand" href="web"
       style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">アプリショップ</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="btn btn-outline-secondary ml-3" aria-current="page" href="web"
                   style="border: none;border-radius: 100%;color:white;"><b>TRANG CHỦ</b></a>
            </li>
            <li class="nav-item ">
                <a class="btn btn-outline-secondary ml-3" href="web?action=product"
                   style="border: none; border-radius: 100%;color:white;"><strong>SẢN PHẨM</strong></a>
            </li>
            <li class="nav-item dropdown s btn-group">
                <a class="btn btn-outline-secondary ml-3" href="web?action=product" id="navbarDropdownMenuLink" role="button"
                   data-bs-toggle="dropdown" aria-expanded="false" style="border: none;border-radius: 100%;color:white;">
                    <b>THỂ LOẠI</b>
                </a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="web?action=filter&categoryId=1" style="color:black;">MIỄN PHÍ</a></li>
                    <li><a class="dropdown-item" href="web?action=filter&categoryId=2" style="color:black;">CÓ PHÍ</a></li>
                    <li><a class="dropdown-item" href="web?action=filter&categoryId=3" style="color:black;">VIỆT HÓA</a></li>
                    <li><a class="dropdown-item" href="web?action=filter&categoryId=4" style="color:black;">KHÁC</a></li>
                </ul>
            </li>
            <li class="nav-item ">
                <a class="btn btn-outline-secondary ml-3" href="web?action=contact"
                   style="border: none;border-radius: 100%;color:white;"><b>CONTACT</b></a>
            </li>
            <li>
                <form target="_self" id="frm" action="search" method="GET" onchange="this.form.submit()">
                    <div class="search-box">
                        <input class="search-txt" name="inputSearch" type="text" placeholder="Type to search">
                        <input type="hidden" value="${page}" name="page">
                        <a href="#" class="search-btn">
                            <i class="fas fa-search text-center" style="margin-top:12px;color: white"></i>
                        </a>
                    </div>
                </form>
            </li>
        </ul>


        <!-- Cart + Infor -->
        <ul class="navbar-nav ml-auto ml-2 mr-4">
            <c:if test="${sessionScope.account!=null}">
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle mr-3" href="#" id="navbarDropdown"
                       style="color: springgreen; font-size: 2.3rem" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-cart-plus mr-1" style="color: #e9ecef;font-size: 2.3rem"></i>
                        <c:if test="${sessionScope.carts!=null&&sessionScope.carts.size()!=0}">
                            <sup style="color: #fcae00 !important">${sessionScope.carts.size()}</sup>
                        </c:if>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        <div class="popup-list-cart">
                            <table>
                                <tbody>
                                    <c:forEach items="${sessionScope.carts}" var="cart">
                                        <tr>
                                            <td class="px-2"><img src="static/${cart.value.product.imageUrl}" width="50px">
                                            </td>
                                            <td class="px-2 f-small" ><a href="web?action=detail&productId=${cart.value.product.id}">${cart.value.product.name}</a></td>
                                            <td class="px-3 f-small">x${cart.value.quantity}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="viewcart">Xem giỏ hàng</a>
                    </div>
                </li>
            </c:if>
            <!-- Example single danger button -->
            <div class="btn-group">
                <c:choose>
                    <c:when test="${sessionScope.account==null}">
                        <a class="nav-link btn btn-outline-dark mt-2 ml-2" href="login">
                            Đăng nhập
                            <i class="fas fa-user-plus ml-2"></i>
                        </a>
                    </c:when>
                    <c:otherwise>
                        <a class="nav-link btn btn-outline-secondary" href="#"
                           style="border:none; border-radius: 10px;">
                            ${sessionScope.account.displayName}
                            <i class="fas fa-user-circle ml-2"></i>
                        </a>

                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a class="dropdown-item mr-5" href="myprofile">Thông tin của tôi</a></li>
                                <c:if test="${sessionScope.account.roleId!=1}">
                                <li><a class="dropdown-item mr-5" href="#">Đơn hàng</a></li>
                                <li><a class="dropdown-item mr-5" href="#">Lịch sử mua hàng</a></li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleId==1}">
                                <li><a class="dropdown-item mr-5" href="admin">Trang chủ admin</a></li>
                                </c:if>
                            <li>
                                <div class="dropdown-divider"></div>
                            </li>
                            <li><a class="dropdown-item mr-5" href="logout">Đăng xuất</a></li>
                        </ul>
                    </c:otherwise>
                </c:choose>

            </div>
        </ul>
    </div>
</nav>
