<%-- 
    Document   : login
    Created on : 22-Aug-2022, 14:19:08
    Author     : buidu_8h8ybgq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/component/css.jsp"%>
        <title>Login</title>
    </head>
    <body>

        <div class="page-wrap d-flex flex-row align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-6 col-sm-6 col-md-4 text-center">
                        <form  action="login" method="POST">

                            <span class="row align-items-center" style="font-size: 80px; color: #31708f;">
                                <i class="bi bi-calendar2-week"></i> 
                            </span>
                            <c:if test="${not empty mess}">
                                <span class="p-2" style="font-size: 15px; color: #b02a37;">
                                    <i class="bi bi-x-circle"><c:out value="${mess}"/></i>
                                </span>
                            </c:if>
                            <!-- Email input -->
                            <div class="form-outline">
                                <input type="text" id="form2Example1" name="username" class="form-control" />
                                <label class="form-label" for="form2Example1">Tên đăng nhập</label>
                            </div>

                            <!-- Password input -->
                            <div class="form-outline sm-4">
                                <input type="password" id="form2Example2" name="password" class="form-control" />
                                <label class="form-label" for="form2Example2">Mật khẩu</label>
                            </div>

                            <!-- 2 column grid layout for inline styling -->
                            <div class="row mb-4">

                                <div class="col">
                                    <!-- Simple link -->
                                    <a href="forgot">Quên mật khẩu?</a>
                                </div>
                            </div>

                            <!-- Submit button -->
                            <button type="submit" class="btn btn-primary btn-block mb-4">Đăng nhập</button>
                        </form>
                    </div>
                </div>
            </div>
        </div> 

    </body>


</html>

