<%-- 
    Document   : denied
    Created on : 22-Aug-2022, 21:11:18
    Author     : buidu_8h8ybgq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/component/css.jsp"%>
        <script>
            var count = 8;
            function counting()
            {
                var span = document.getElementById("timer");
                count--;
                span.innerHTML = count;
                if (count <= 0)
                {
                    window.location.href = "login";
                }
            }
            setInterval(counting, 1000);
        </script>

        <title>Từ chối truy cập</title>
    </head>
    <body>
        <div class="page-wrap d-flex flex-row align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center">
                        <span class="display-1 d-block" style="font-size: 30px; color: #b02a37;">
                            <i class="bi bi-x-circle">TỪ CHỐI TRUY CẬP</i>
                        </span>
                        <div class="mb-4 lead">Bạn không có quyền hạn truy cập đường dẫn này</div>
                        <a href="login">Tự quay lại sau <span id="timer">8</span> giây</a>


                        <div>Xin chào ${sessionScope.acc_ses.username} | ${sessionScope.acc_ses.teaId}</div>
                        <div>${sessionScope.acc_ses.roles}<div>
                                <%String url = request.getServletPath();
                                out.print(url);
                                %>
                                
                                <div>${requestScope.statusLog} <---</div>
                                <div>${requestScope.curURL} <---</div>
                                <div>${requestScope.ownFeature} <---</div>
                                <div>${requestScope.ownRole} <---</div>
                            </div>
                        </div>
                    </div>
                </div>   
                </body>
                </html>
