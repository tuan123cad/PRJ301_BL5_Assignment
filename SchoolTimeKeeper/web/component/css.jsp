<%-- 
    Document   : css
    Created on : 22-Aug-2022, 14:43:33
    Author     : buidu_8h8ybgq
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="conn" class="dal.DBContext"></jsp:useBean>
<link href="static/css/all.css" rel="stylesheet">
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/font-awesome.min.css" rel="stylesheet">
<link href="static/css/prettyPhoto.css" rel="stylesheet">
<link href="static/css/price-range.css" rel="stylesheet">
<link href="static/css/animate.css" rel="stylesheet">
<link href="static/css/main.css" rel="stylesheet">
<link href="static/css/responsive.css" rel="stylesheet">
<link href="static/css/bootstrap-icons.css" rel="stylesheet">
<link href="static/css/styles.css" rel="stylesheet">


<c:set var="checkstatus" value="${conn.CheckConnect()}"/>
 <c:choose>
            <c:when test="${checkstatus==true}">
                <link href="static/img/imgIcon/open.ico" rel="shortcut icon" >
            </c:when><c:otherwise>
                <link href="static/img/imgIcon/close.ico" rel="shortcut icon" >
            </c:otherwise>
        </c:choose>

