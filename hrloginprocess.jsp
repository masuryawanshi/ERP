<%@ page language="java" import="java.sql.*"%>
<link rel="stylesheet" type="text/css" href="style.css" />
<%

    String name = request.getParameter("userid");

    String pass = request.getParameter("password");

    try {

        Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "MANGESH", "2580");

        PreparedStatement ps = con.prepareStatement("select * from hr where userid=? and password=?");

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

    out.println("<center><h1>Welcome: " + name + "</h1>");

    out.println("<br/><b>You are successfully login........ ");

} else {

    out.println("<center>" + "<b>Either You Enter Wrong UserName or Password</b>");

%>
<jsp:include page="hrhome.jsp"></jsp:include>
<%}

 

    } catch (Exception ex) {

        out.println(ex);

    } 

%>