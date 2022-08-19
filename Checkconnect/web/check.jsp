<%-- 
    Document   : connectDB
    Created on : 19-Aug-2022, 20:43:19
    Author     : buidu_8h8ybgq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.net.InetAddress"%>
<%@page import= "java.net.UnknownHostException"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check connection DB</title>
    </head>
    <body>
        <jsp:useBean id="conn" class="context.DBContext"></jsp:useBean>
        <%
        boolean checkconn = conn.CheckConnect();
        out.print(checkconn);
        %>
        <br>
        <%
        String url = conn.getURL();
        out.print(url);
        %>
        
    <%!     
        public String urlHost(String WebIP) throws UnknownHostException {
        InetAddress localHost = InetAddress.getLocalHost();
        String IP = localHost.getHostAddress();
        return (IP.equals(WebIP)) ? "localhost" : WebIP;

    } 
    %>
    
        <%String IP = urlHost("173.243.120.230");%>
        <p><%=IP%></p>
        
    </body>
</html>
