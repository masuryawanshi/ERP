<%@ page language="java" import="java.sql.*"%>
<link rel="stylesheet" type="text/css" href="style.css" />

<%

    String name = request.getParameter("name");

    //String pass = request.getParameter("userpass");

        Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "MANGESH", "2580");

        PreparedStatement ps = con.prepareStatement("select * from hr where name like '%"+name+"%'");
        

       // ps.setString(1, name);

        //ps.setString(2, pass);

        ResultSet rs = ps.executeQuery();

       
        <%}

 

    } catch (Exception ex) {

        out.println(ex);

    } 

%>