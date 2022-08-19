<%-- 
    Document   : login
    Created on : Nov 1, 2021, 4:14:01 PM
    Author     : phant
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="static/images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="static/vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="static/vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="static/css/util.css">
        <link rel="stylesheet" type="text/css" href="static/css/main1.css">
        <!--===============================================================================================-->
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100 p-t-85 p-b-20">
                    <form class="login100-form validate-form" action="changenewpass?username=${user}" method="POST">
                        <span class="login100-form-avatar">
                            <img src="static/images/poster/icon.png" alt="AVATAR">
                        </span>
                        <span class="login100-form-title p-b-70">
                            Đổi mật khẩu
                        </span>
                        <div style="text-align: center;" >
                            <c:if test="${warning!=null}">
                                <span style="color: #e02d1b; font-size: 14px;" class="mt-1"><i class="fa fa-registered"></i> ${warning}</span>
                            </c:if>
                        </div>

                        <div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate = "Nhập tên đăng nhập">
                            <span>Tên tài khoản</span>
                            <input readonly class="input100 form-control-plaintext" type="text" name="username" value="${user}">
                        </div>
                        <div class="wrap-input100 validate-input m-b-50" data-validate="Nhập mật khẩu">
                            <span>Mật khẩu</span>
                            <input class="input100" type="password" name="password" value="${password}">
                        </div>

                        <div class="wrap-input100 validate-input m-b-50" data-validate="Nhập lại mật khẩu">
                            <span>Nhập lại mật khẩu</span>
                            <input class="input100" type="password" name="password1" value="${retypePass}">
                        </div>

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" type="submit">
                                Thay đổi mật khẩu
                            </button>
                        </div>

                        <ul class="login-more p-t-190">
                            <li class="m-b-8">
                                <span class="txt1">
                                    Quay về 
                                </span>

                                <a href="login" class="txt2">
                                    Đăng nhập
                                </a>
                            </li>

                            <li>
                                <span class="txt1">
                                    Chưa có tài khoản?
                                </span>

                                <a href="register" class="txt2">
                                    Đăng ký
                                </a>
                            </li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>


        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="static/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendor/bootstrap/js/popper.js"></script>
        <script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendor/daterangepicker/moment.min.js"></script>
        <script src="static/vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="static/vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="static/js/main.js"></script>

    </body>
</html>
