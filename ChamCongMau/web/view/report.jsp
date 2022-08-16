<%-- 
    Document   : report
    Created on : Aug 16, 2022, 9:46:36 AM
    Author     : Ngo Tung Son
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1px">
            <tr>
                <td></td>
                <c:forEach items="${requestScope.dates}" var="d">
                    <td
                        <c:if test="${d.dow eq 1 or d.dow eq 7}">
                            style="background-color: yellow" 
                        </c:if>
                        >
                        <fmt:formatDate pattern = "dd" 
                                        value = "${d.value}" /> <br/>
                        <fmt:formatDate pattern = "EEE" 
                                        value = "${d.value}" />
                    </td>
                </c:forEach>
                <td>Hours</td>
                <td>Days</td>
            </tr>
            <c:forEach items="${requestScope.emps}" var="e">
                <tr>
                    <td>${e.name}</td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td 
                            <c:if test="${d.dow eq 1 or d.dow eq 7}">
                                style="background-color: yellow" 
                            </c:if>
                            >
                            <c:forEach items="${e.timesheets}" var="t">
                                <c:if test="${d.value eq t.cidate}">
                                    ${t.getWorkingHours()}
                                </c:if>
                            </c:forEach>
                        </td>
                    </c:forEach>
                    <td>${e.getWorkingHours()}</td>
                    <td>${e.getWorkingDays()}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
