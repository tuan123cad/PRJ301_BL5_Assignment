<%-- 
    Document   : connectDB
    Created on : 19-Aug-2022, 20:43:19
    Author     : buidu_8h8ybgq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.net.InetAddress"%>
<%@page import= "java.net.UnknownHostException"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/component/css.jsp"%>
        <title>Check connection DB</title>
    </head>
    <body>
        <%
boolean checkconn = conn.CheckConnect();
String url = conn.getURL();
String IP = conn.urlHost("173.243.120.230");
        %>
        <div class="row">
            <div class="col-md-2 col-md-offset-5">
                <c:choose>
                    <c:when test="${checkstatus==true}">
                        <span style="font-size: 3em; color: #006652;">
                            <i class="bi bi-check-circle"> Connected</i>
                        </span>
                        <span style="font-size: 2em; color: #06357a;">
                            <p><%=url%></p>
                            <p><%=IP%></p>
                            <br>
                        </span>

                    </c:when>
                    <c:otherwise>
                        <span style="font-size: 3em; color: #b02a37;">
                            <i class="bi bi-x-circle"> Failed</i>
                            <br>
                        </span>
                        <span style="font-size: 2em; color: #842029;">
                            <p><%=url%></p>
                            <p><%=IP%></p>
                            <br>
                        </span>

                    </c:otherwise>
                </c:choose>


                <c:choose>
                    <c:when test="${checkstatus==true}">
                        <c:set var="x" value="${requestScope.counttb}"/>
                        <a href="#" class="addr-style">This is <c:out value="${x}"/></a>
                        <table class="styled-table">
                            <thead>
                                <tr>
                                    <th>CATA</th>
                                    <th>NAME</th>
                                    <th>SCHE</th>
                                    <th>TYPE</th>
                                <tr/> 
                            </thead>
                            <tbody>
                                <c:forEach items="${requestScope.dbtable}" var="t">
                                    <tr>
                                        <td>${t.catalog}</td>
                                        <td>${t.name}</td>
                                        <td>${t.schema}</td>
                                        <td>${t.type}</td>
                                    <tr/>
                                </c:forEach>
                            </tbody>

                        </table>
                    </c:when><c:otherwise>
                        <span style="font-size: 2em; color: #842029;">
                            <i class="fa-solid fa-handshake-simple-slash"> CANT LOAD DB</i>
                            <br>
                        </span>

                    </c:otherwise>
                </c:choose>
            </div>
        </div>

    </body>
</html>
