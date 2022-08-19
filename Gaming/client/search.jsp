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
            <div class="container">

                <!--Hiển thị Category & Sub Category-->
                <div class="row">
                    <div class="col-md-2">
                        <h5 class="labelhead">
                            <div class="alert alert-dark" role="alert" style="text-align: center;">
                                <a href="product" style="text-decoration: none; color:black">Thể loại</a>
                            </div>
                        </h5>
                    </div>

                    <div class="col-md-10">
                        <h5 class="labelhead"></h5>
                        <div class="alert alert-secondary" role="alert">
                            <div class="row" style="text-align: center;">
                                <c:forEach items="${listCategories}" var="category">
                                    <div class="col-md-3 btn-group">
                                        <a class="btn btn-outline-secondary ml-3" href="web?action=filter&categoryId=${category.id}"
                                           style="border: none; color:black;">
                                            <b>${category.categoryName}</b>
                                        </a>
                                        <ul class="dropdown-menu" style="padding-left: 5%;margin-left: 18%">
                                            <c:forEach items="${category.getListSubCategories()}" var="subCategory">
                                                <li><a class="dropdown-item" href="web?action=filter&subCategoryId=${subCategory.id}">${subCategory.subCategoryName}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>

                <c:if test="${totalPage>1}">
                    <nav aria-label="Page navigation example" style="margin-top: 3rem;">
                        <ul class="pagination justify-content-end">
                            <li class="page-item ${page<=1?"disabled":""}">
                                <a class="page-link" href="${url}page=${page-1}" tabindex="-1" aria-disabled="true">Previous</a>
                            </li>

                            <c:forEach begin="1" end="${totalPage}" var="i">
                                <li class="page-item ${i==page?"active":""}"><a class="page-link" href="${url}page=${i}">${i}</a></li>
                                </c:forEach>

                            <li class="page-item ${page>=totalPage?"disabled":""}">
                                <a class=" page-link" href="${url}page=${page+1}">Next</a>
                            </li>
                        </ul>
                    </nav>
                </c:if>

                <!--Hiển thị Sản phẩm-->
                <div class="row mt-3 mb-5">

                    <c:if test="${listProducts==null||listProducts.size()==0}">
                        <div class="col-md-12" style="text-align: center;">
                            <h3>Không có sản phẩm tương ứng</h3>
                        </div>
                    </c:if>
                    <c:forEach items="${listProducts}" var="product">
                        <c:if test="${product.quantity>0}">
                            <div class="col-md-3 mt-5">
                                <div class="prod">
                                    <a href="web?action=detail&productId=${product.id}"><img src="static/${product.imageUrl}" class="card-img-top" alt="..."></a>
                                    <div class="prod-body" style="text-align: center;">
                                        <a href="web?action=detail&productId=${product.id}">
                                            <h5 class="card-title" style="color: sienna;">${product.name}</h5>
                                        </a>
                                        <p style="color: gray;">
                                            $${product.price}
                                        </p>
                                        <a href="add2cart?productId=${product.id}" class="btn btn-outline-success"><i class="fas fa-cart-plus mr-2"></i>Add to
                                            cart</a>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>

                <c:if test="${totalPage>1}">
                    <nav aria-label="Page navigation example" style="float: left;margin-bottom: 3rem;">
                        <ul class="pagination justify-content-end">
                            <li class="page-item ${page<=1?"disabled":""}">
                                <a class="page-link" href="${url}page=${page-1}" tabindex="-1" aria-disabled="true">Previous</a>
                            </li>

                            <c:forEach begin="1" end="${totalPage}" var="i">
                                <li class="page-item ${i==page?"active":""}"><a class="page-link" href="${url}page=${i}">${i}</a></li>
                                </c:forEach>
                            <li class="page-item ${page>=totalPage?"disabled":""}">
                                <a class=" page-link" href="${url}page=${page+1}">Next</a>
                            </li>
                        </ul>
                    </nav>
                </c:if>
            </div>
        </div>

        <!-- Footer -->
        <%@include file="../components/footer.jsp" %>
    </body>

</html>
