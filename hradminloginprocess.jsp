<%@ page language="java" import="java.sql.*"%>
<link rel="stylesheet" type="text/css" href="style.css" />
<html>
        

    
    
    <%

    String name = request.getParameter("username");

    String pass = request.getParameter("userpass");

    try {

        Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "MANGESH", "2580");

        PreparedStatement ps = con.prepareStatement("select * from hradmin where username=? and userpass=?");

        ps.setString(1, name);

        ps.setString(2, pass);

        ResultSet rs = ps.executeQuery();

        int x = 0;

        while (rs.next()) {

            if (rs.getString(1).equals(name) && rs.getString(2).equals(pass)) {

                x = 1;

            } else {

                x = 2;

            }

        }

        if (x == 1) {

 

%>
<%                HttpSession s = request.getSession();

    //out.println("<center>"+"<b><h1>Welcome: " + name + "</h1>");   
    %>

    <jsp:include page="hradminstration.jsp"></jsp:include>    

    <%
} else {

    out.println("<center>" + "<b>Either You Enter Wrong UserName or Password</b>");

%>
<jsp:include page="hradmin.jsp"></jsp:include>
<%}

 

    } catch (Exception ex) {

        out.println(ex);

    } 

%>





</html>