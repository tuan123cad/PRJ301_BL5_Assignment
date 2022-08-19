<%-- 
    Document   : footer
    Created on : Oct 26, 2021, 7:20:08 PM
    Author     : phant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<footer style="font-family: sans-serif; background-color: #404040; color: cornsilk; opacity: 0.9;
        margin-top: 5rem; clear: both;">
    <div class="container" style="margin-top: 2rem;">
        <div class="row text-center text-xs-center text-sm-left text-md-left">
            <div class="col-xs-12 col-sm-4 col-md-4" style="text-align: center;">
                <h3>My QR Code</h3>
                <ul class="list-unstyled quick-links">
                    <img src="static/images/icon/qrcode_3737093_.png" alt="QR code" style="height: 200px">
                </ul>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4" style="padding-left: 100px;">
                <h3>Về Website</h3>
                <ul class="list-unstyled quick-links">
                    <li><a href="web"><i class="fa fa-angle-double-right"></i>Trang chủ</a></li>
                    <li><a href="web?action=contact"><i class="fa fa-angle-double-right"></i>Thông tin</a></li>
                    <li><a href="web?action=product"><i class="fa fa-angle-double-right"></i>Sản phẩm</a></li>
                    <c:if test="${sessionScope.account==null}">
                        <li><a href="login"><i class="fa fa-angle-double-right"></i>Đăng nhập</a></li>
                    </c:if>
                    <c:if test="${sessionScope.account!=null}">
                        <li><a href="myprofile"><i class="fa fa-angle-double-right"></i>Thông tin người dùng</a></li>
                        <li><a href="logout"><i class="fa fa-angle-double-right"></i>Đăng xuất</a></li>
                    </c:if>
                </ul>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4" style="text-align: center;">
                <h3>CONTACT US</h3>
                <ul class="list-unstyled quick-links">
                    <li>
                        <a style="margin-right: 10px;"><i class="fas fa-phone-volume"
                                                          style="margin-right: 3px;"></i>0987654321</a>
                        <a><i class="fas fa-envelope" style="margin-right: 3px;"></i>vietpthe1xxxxx@fpt.edu.vn</a>
                    </li>
                    <li>
                        <a href="#">
                            Khương Trung, Thanh Xuân, Hà Nội
                        </a>
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7449.760453660485!2d105.81719307316523!3d20.997437744061134!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac8f6a38960b%3A0x20a87616ab8b2866!2sKhuong%20Trung%2C%20Thanh%20Xu%C3%A2n%2C%20Hanoi%2C%20Vietnam!5e0!3m2!1sen!2s!4v1634808973953!5m2!1sen!2s"
                            width="100%" height="125%" style="border: 5px solid black;" allowfullscreen=""
                            loading="lazy">
                        </iframe>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" style="text-align: center; margin: auto;">
                <a href="https://www.facebook.com/phan.tsuki.1/" style="margin-right:20px;">
                    <img src="static/images/icon/fb.png"
                         style="border: 3px solid black; padding: 2px; background-color: #0F91F3;" alt="" width="5%">
                </a>
                <a href="https://www.instagram.com/smoke_m416/">
                    <img src="static/images/icon/ins.png"
                         style="border: 3px solid black; padding: 2px; background-color: #DC5C65;" alt="" width="5%">
                </a>
                <a href="https://www.tiktok.com/@userk0p2uxer2m?" style="margin-left:20px;">
                    <img src="static/images/icon/tiktok.png"
                         style="border: 3px solid black; padding: 2px; background-color: #ffffff;" alt="" width="5%">
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12" style="text-align: center; margin: 20px;">
                <p>@copyright by <a>ゲーム Shop</a>. Please don't re-up in any case</p>
            </div>
        </div>
    </div>



</footer>

<!-- Link nhúng js -->
<script src="static/js/javascript.js" type="text/javascript"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
crossorigin="anonymous"></script>
