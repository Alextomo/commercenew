<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="application/x-www-form-urlencoded; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<%
    String userQueryInput = request.getParameter("w");
    String msg = "";

    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost/progin";
    String user = "root";
    String password = "";

    String myQuery = "SELECT * FROM abjad WHERE a REGEXP '" + userQueryInput + "'";
    Class.forName(driver);
    Connection con = DriverManager.getConnection(url, user, password);
    Statement statement = con.createStatement();

    ResultSet resultSet = statement.executeQuery(myQuery);

    while (resultSet.next()) {
        msg += resultSet.getString(2) + "\n";
    }

    con.close();
%>


<!--Returned value-->
<%=msg%>