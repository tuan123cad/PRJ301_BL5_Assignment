<%-- 
    Document   : home
    Created on : Oct 26, 2021, 7:09:49 PM
    Author     : phant
--%>

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
        <title>アプリ Shop - Home</title>
        <link rel="stylesheet" href="static/css/main.css">
    </head>

    <body>
        <!-- Header -->
        <header>
            <%@include file="../components/header.jsp" %>
        </header>

        <!-- Body -->
        <div>
            <!-- Banner -->
            <div class="container" style="margin-bottom: 0.5rem;">
                <div class="row">
                    <div class="col-md-4">
                        <img class="img-fluid" style="margin-top: 5.5rem;" src="static/images/poster/1.png" alt="none"
                             width="100%">
                    </div>
                    <div class="col-md-4">
                        <img class="img-fluid" style="margin-top: 5.5rem;" src="static/images/poster/2.jpg" alt="none"
                             width="100%">
                    </div>
                    <div class="col-md-4">
                        <img class="img-fluid" style="margin-top: 5.5rem;" src="static/images/poster/3.jpg" alt="none" width="99%">
                    </div>
                </div>

                <div class="row">

                </div>
            </div>

            <!-- Slide -->
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000"
                 style="margin-bottom: 0.5rem;">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="static/images/slide/game_6.png" class="d-block w-100"
                             alt="static/images/slide/game_6.png">
                    </div>
                    <div class="carousel-item">
                        <img src="static/images/slide/game_2.png" class="d-block w-100"
                             alt="static/images/slide/game_2.png">
                    </div>
                    <div class="carousel-item">
                        <img src="static/images/slide/game_5.png" class="d-block w-100"
                             alt="static/images/slide/game_5.png">
                    </div>
                    <div class="carousel-item">
                        <img src="static/images/slide/game_4.png" class="d-block w-100"
                             alt="static/images/slide/game_4.png">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!-- Sản phẩm-->
            <div class="container">
                <!-- Miễn phí -->
                <div class="row mb-5">
                    <div class="col-12 col-sm-12 col-md-12 col-xs-12" style="text-align: center;">
                        <h1>GAME MIỄN PHÍ</h1>
                    </div>
                    <c:forEach items="${listGameFree}" var="free">
                        <div class="col-md-3 mt-3">
                            <div class="prod">
                                <a href="web?action=detail&productId=${free.id}"><img src="static/${free.imageUrl}" class="card-img-top" alt="..."></a>
                                <div class="prod-body">
                                    <a href="web?action=detail&productId=${free.id}">
                                        <h5 class="card-title" style="text-align: center;">${free.name}</h5>
                                    </a>
                                    <p class="card-text">
                                        Thể loại: <a href="web?action=filter&subCategoryId=${free.subCategoryId}">${free.getSubCategory(free.subCategoryId).getSubCategoryName()}</a>
                                    </p>
                                    <a href="web?action=detail&productId=${free.id}" class="btn btn-outline-secondary">Thông tin sản phẩm</a>
                                    <a href="web?action=filter&categoryId=1" style="float: right; padding-top: 2%;padding-right: 5%;text-decoration: none;">Free</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-12 mt-3" style="text-align: center;">
                        <a href="web?action=filter&categoryId=1">
                            <button type="button" class="btn btn-warning">Xem thêm</button>
                        </a>
                    </div>
                </div>

                <!-- Trả phí -->
                <div class="row mb-5">
                    <div class="col-12 col-sm-12 col-md12" style="text-align: center;">
                        <h1>GAME TRẢ PHÍ</h1>
                    </div>
                    <c:forEach items="${listGamePay}" var="pay">
                        <div class="col-md-3 mt-3">
                            <div class="prod">
                                <a href="web?action=detail&productId=${pay.id}"><img src="static/${pay.imageUrl}" class="card-img-top" alt="..."></a>
                                <div class="prod-body">
                                    <a href="web?action=detail&productId=${pay.id}">
                                        <h5 class="card-title" style="text-align: center;">${pay.name}</h5>
                                    </a>
                                    <p class="card-text">
                                        Thể loại: <a href="web?action=filter&subCategoryId=${pay.subCategoryId}">${pay.getSubCategory(pay.subCategoryId).getSubCategoryName()}</a>
                                    </p>
                                    <a href="web?action=detail&productId=${pay.id}" class="btn btn-outline-secondary">Thông tin sản phẩm
                                    </a>
                                    <a href="web?action=filter&categoryId=2" style="float: right; padding-top: 2%;padding-right: 5%;text-decoration: none;">Còn hàng</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-12 mt-3" style="text-align: center;">
                        <a href="web?action=filter&categoryId=2">
                            <button type="button" class="btn btn-warning">Xem thêm</button>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Slide 2 -->
            <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel" data-interval="3010"
                 style="margin-bottom: 0.5rem;">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
                    <li data-target="#carouselExampleIndicators2" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="static/images/slide/game_11.png" class="d-block w-100"
                             alt="static/images/slide/game_6.png">
                    </div>
                    <div class="carousel-item">
                        <img src="static/images/slide/game_8.jpg" class="d-block w-100"
                             alt="static/images/slide/game_2.png">
                    </div>
                    <div class="carousel-item">
                        <img src="static/images/slide/game_1.jpg" class="d-block w-100"
                             alt="static/images/slide/game_5.png">
                    </div>
                    <div class="carousel-item">
                        <img src="static/images/slide/game_9.png" class="d-block w-100"
                             alt="static/images/slide/game_4.png">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!-- Sản phẩm 2 -->
            <div class="container">
                <!-- Việt hóa -->
                <div class="row mb-5">
                    <div class="col-12 col-sm-12 col-md-12 col-xs-12" style="text-align: center;">
                        <h1>GAME VIỆT HÓA</h1>
                    </div>
                    <c:forEach items="${listGameVietHoa}" var="viethoa">
                        <div class="col-md-3 mt-3">
                            <div class="prod">
                                <a href="web?action=detail&productId=${viethoa.id}"><img src="static/${viethoa.imageUrl}" class="card-img-top" alt="..."></a>
                                <div class="prod-body">
                                    <a href="web?action=detail&productId=${viethoa.id}">
                                        <h5 class="card-title" style="text-align: center;">${viethoa.name}</h5>
                                    </a>
                                    <p class="card-text">
                                        Thể loại: <a href="web?action=filter&subCategoryId=${viethoa.subCategoryId}">${viethoa.getSubCategory(viethoa.subCategoryId).getSubCategoryName()}</a>
                                    </p>
                                    <a href="web?action=detail&productId=${viethoa.id}" class="btn btn-outline-secondary">Thông tin sản phẩm
                                    </a>
                                    <a href="web?action=filter&categoryId=3" style="float: right; padding-top: 2%;padding-right: 5%;text-decoration: none;">Việt hóa</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-12 mt-3" style="text-align: center;">
                        <a href="web?action=filter&categoryId=3">
                            <button type="button" class="btn btn-warning">Xem thêm</button>
                        </a>
                    </div>
                </div>

                <!-- Ứng dụng free -->
                <div class="row mb-5">
                    <div class="col-12 col-sm-12 col-md12" style="text-align: center;">
                        <h1>ỨNG DỤNG KHÁC</h1>
                    </div>
                    <c:forEach items="${listApp}" var="app">
                            <div class="col-md-3 mt-3">
                                <div class="prod">
                                    <a href="web?action=detail&productId=${app.id}"><img src="static/${app.imageUrl}" class="card-img-top" alt="..."></a>
                                    <div class="prod-body">
                                        <a href="web?action=detail&productId=${app.id}">
                                            <h5 class="card-title" style="text-align: center;">${app.name}</h5>
                                        </a>
                                        <p class="card-text">
                                            Phần mềm: <a href="web?action=filter&subCategoryId=${app.subCategoryId}">${app.getSubCategory(app.subCategoryId).getSubCategoryName()}</a>
                                        </p>
                                        <a href="web?action=detail&productId=${app.id}" class="btn btn-outline-secondary">Thông tin sản phẩm
                                        </a>
                                        <a href="web?action=filter&categoryId=4" style="float: right; padding-top: 2%;padding-right: 5%;text-decoration: none;">App</a>
                                    </div>
                                </div>
                            </div>
                    </c:forEach>
                    <div class="col-12 mt-3" style="text-align: center;">
                        <a href="web?action=filter&categoryId=4">
                            <button type="button" class="btn btn-warning">Xem thêm</button>
                        </a>
                    </div>
                </div>
            </div>

            <div class="container-fluid">
                <img src="static/images/poster/post.jpg" width="100%">
            </div>
        </div>

        <!-- Footer -->
        <%@include file="../components/footer.jsp" %>
    </body>

</html>
