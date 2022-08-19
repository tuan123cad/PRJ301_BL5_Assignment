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
        <div style="margin-top: 6rem;">
            <div class="container" style=" background-color: wheat; padding-bottom: 10px;">
                <h1 style="text-align: center;font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;color: teal;">
                    <strong>LIÊN HỆ VÀ HỢP TÁC</strong>
                </h1>
                <div class="gioithieu">
                    <h3 style="color: teal;">
                        <strong>GIỚI THIỆU VỀ SHOP</strong>
                    </h3>
                    <span style="font-size: 14pt;">
                        <p>Shop thành lập nhằm mục đích cung cấp và phân phối game tới tay người tiêu dùng.
                            Với tiêu chí rẻ, chất lượng, uy tín; chúng tôi cam đoan mang tới cho người dùng những trải
                            nghiệm tuyệt vời nhất khi các bạn đặt niềm tin nơi chúng tôi.
                        </p>
                    </span>
                </div>

                <div class="quangcao">
                    <h3 style="color: teal;">
                        <strong>Liên hệ quảng cáo</strong>
                    </h3>
                    <span style="font-size: 14pt;">
                        <ul>
                            <li>
                                Sản phẩm mang thương hiệu của các bạn có thể đến tay người tiêu dùng thông qua những cách
                                nhanh nhất.
                            </li>
                            <li>
                                Tăng số lượng khách hàng và giúp cho các bạn có khách hàng thân thiết trong thời gian ngắn
                                nhất.
                            </li>
                            <li>
                                Được tư vấn bởi đội ngũ chuyên nghiệp, không lo về chi phí, giá cả và được định hướng quảng
                                cáo phù hợp, hiệu quả cho doanh nghiệp.
                            </li>
                        </ul>
                    </span>
                </div>

                <div class="lienhe">
                    <h3 style="color: teal;">
                        <strong>Thông tin liên hệ hợp tác & quảng cáo</strong>
                    </h3>
                    <span style="font-size: 14pt;">
                        <ul>
                            <li>
                                <p>
                                    Liên hệ qua facebook cá nhân: <a href="https://www.facebook.com/phan.tsuki.1/">Phan Tuấn Việt</a>
                                </p>
                            </li>
                            <li>
                                <p>
                                    Gửi thông tin qua email: <a href="mailto:vietpthe150767@fpt.edu.vn">Việt</a>
                                </p>
                            </li>
                            <li>
                                <p>
                                    Yêu cầu đặt hàng qua số điện thoại: <a href="tel:0971516201">SĐT</a>
                                </p>
                            </li>
                        </ul>
                    </span>
                </div>

                <div class="thongtin">
                    <h3 style="color: teal;">
                        <strong>Thông tin liên hệ của bạn</strong>
                    </h3>
                    <span style="font-size: 14pt;">
                        <form method="post">
                            <ul>
                                <li>
                                    <label>Email của bạn</label><br />
                                    <span><input type="text" name="email" style="width: 95%;" value="" aria-required="true"
                                                 aria-invalid="false" /></span><br />
                                </li>
                                <li>
                                    <label>SĐT của bạn</label><br />
                                    <span><input type="text" name="phone" style="width: 95%;" value="" aria-required="true"
                                                 aria-invalid="false" /></span><br />
                                </li>
                                <li>
                                    <label>Tên của bạn</label><br />
                                    <span><input type="text" name="phone" style="width: 95%;" value="" aria-required="true"
                                                 aria-invalid="false" /></span><br />
                                </li>
                                <li>
                                    <label>Link facebook của bạn</label><br />
                                    <span><input type="text" name="phone" style="width: 95%;" value="" aria-required="true"
                                                 aria-invalid="false" /></span><br />
                                </li>
                                <li>
                                    <label>Nội dung hợp tác</label><br />
                                    <span><textarea rows="5%" name="info" value="" aria-invalid="false" style="width: 95%;"></textarea></span>
                                </li>
                                <li style="list-style: none;text-align: center;">
                                    <span><input type="submit" value="submit" name="submit"  style="border-radius: 20px"/></span>
                                </li>
                            </ul>

                        </form>


                    </span>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <%@include file="../components/footer.jsp" %>
    </body>

</html>
