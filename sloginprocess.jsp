<%@ page language="java" import="java.sql.*"%>
<link rel="stylesheet" type="text/css" href="style.css" />
<%

    String name = request.getParameter("username");

    String pass = request.getParameter("userpass");

    try {

        Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "MANGESH", "2580");

        PreparedStatement ps = con.prepareStatement("select * from semp where username=? and userpass=?");

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

<jsp:include page="Log Out.jsp"/>

<%                HttpSession s = request.getSession();

    out.println("<center><h1>Welcome: " + name + "</h1>");

    out.println("<br/><b>You are successfully login........ ");

} else {

    out.println("<center>" + "<b>Either You Enter Wrong UserName or Password</b>");

%>

<jsp:include page="sales.jsp"/>

<%}

 

    } catch (Exception ex) {

        out.println(ex);

    } 

%>