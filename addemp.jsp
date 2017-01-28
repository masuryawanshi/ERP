<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<html>
	<head>
		<title>
			HRHOME
		</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
	</head>
	<body>
	<div id="outer">
	<div id="header">
			
				<div id="logo">
					<h1>
						HRMS
					</h1>
				</div>	
		</div>
			<div id="banner">
				
				<img src="images/banner.jpg" alt="" />
			
			</div>
		<div id="nav">
					<ul>
						<li class="first">								
						 <a href="hradminstration.jsp">Home</a>
                                                </li>
					</ul><br class="clear" />
				</div>
<%try{
System.out.print(request.getParameter("name"));
String userid=request.getParameter("userid");
String password=request.getParameter("password");
String name=request.getParameter("name");
String add=request.getParameter("address");
String contact=request.getParameter("contact");
String designation=request.getParameter("designation");
String salary=request.getParameter("salary");
String dateofjoining=request.getParameter("joining_date");
String staffid=request.getParameter("staff_id");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","mangesh","2580");
PreparedStatement ps=con.prepareStatement("insert into hr values(?,?,?,?,?,?,?,?,?)");

ps.setString(1,userid);
ps.setString(2,password);
ps.setString(3,name);
ps.setString(4,add);
ps.setString(5,contact);
ps.setString(7,salary);
ps.setString(6,dateofjoining);
ps.setString(8,staffid);
ps.setString(9,designation);

int s=ps.executeUpdate();
out.print("Successfully Saved!");
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<form action="addemp1.jsp" name="myform" id="hello" method="post">
    <center><input type="submit" value="Add New" /></center>
</form>
<form method="post" action="slogoutprocess.jsp">
        <table> <tr><td><input type="submit" value="Log Out"></td></tr></table>
    </form>
<jsp:include page="footer.jsp"></jsp:include>
        </div>
        </html>