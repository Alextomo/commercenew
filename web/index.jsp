<%-- 
    Document   : index
    Created on : Nov 9, 2013, 7:48:30 AM
    Author     : elfinositompul
--%>
<script type="text/javascript" src="js/fungsi.js"></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="ConnectDB.jsp" %>
<%-- <%@include file="login.jsp" %> --%>
<html>
    <head>
    <h1>Welcome to The Store</h1>
</head>
<body>
    <p>For test</p>
    <form action="login.jsp" method="post" action="login.jsp">

        User name :<input type="text" name="usr" />
        password :<input type="password" name="pwd" />
        <input type="submit" />

    </form>
    <% String namauser = request.getParameter("usr");
        session.setAttribute("pelanggan", namauser);    
    %>

    <A href="login.jsp">sapa</A>
</body>
</html>

