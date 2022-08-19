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
        <link rel="stylesheet" href="static/css/styles.css">
        <title>Check connection DB</title>
    </head>
    <body>
        <jsp:useBean id="conn" class="dal.DBContext"></jsp:useBean>
        <%
        boolean checkconn = conn.CheckConnect();
        String url = conn.getURL();
        String IP = conn.urlHost("173.243.120.230");
        %>
        <p><%=checkconn%></p>
        <p><%=url%></p>
        <p><%=IP%></p>
        <br>
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

    </body>
</html>
