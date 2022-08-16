<%-- 
    Document   : list
    Created on : Aug 11, 2022, 12:04:46 PM
    Author     : Ngo Tung Son
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="greeting.jsp"/>
        <c:forEach items="${requestScope.requests}" var="r">
            <div> ${r.id} <br/>
                    ${r.content} <br/>
                    ${r.from} <br/>
                    ${r.to} <br/>
                    ${r.createdby.username}
            </div>
        </c:forEach>
    </body>
</html>
