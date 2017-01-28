<%@ page language="java" import="java.sql.*"  import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<link rel="stylesheet" type="text/css" href="style.css" />

	<div id="header">
			
				<div id="logo">
					<h1> 
						HRMS Details.
					</h1>
				</div>	
		</div>
			<div id="banner">
			
		<img src="images/banner.jpg" alt="" />
								
			
			</div>
			
			<div id="nav">
					<ul>
						<li class="first">
                                                    
                                                <li>
                                                    <a href="empdetail.jsp">Employee Details.</a>
                                                </li>
                                                <li>
							<a href="modemp.jsp">Modify Employee Detail</a>
						</li>
                                                <li>
                                                    <a href="addemp1.jsp">Add Employee</a>
						</li>
						<li>
							<a href="removemp.jsp">Remove Employee</a>
						</li>
                                                <li>
                                                    <a href="hradminstration.jsp">Home</a>
                                                </li>
					</ul><br class="clear" />
                                        
				</div>

<%
      Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "MANGESH", "2580");

        PreparedStatement ps = con.prepareStatement("select * from hr");
        
        ResultSet rs = ps.executeQuery();     
   
        
       // out.println("<center><h1>Employee List </h1></center>");
        
        %>
        <center><center><caption><h2><b>List of Employees</b></h2></caption></center>
<TABLE cellpadding="15" border="1" style="background-color: #ccffff;">
    
    <tr>
        <td width="119"><b>Staff_ID</td>
        <td width="119"><b>Name</td>
        <td width="119"><b>Address</td>
        <td width="119"><b>Salary</td>
         <td width="119"><b>Joining Date</td>
</tr>
<%
while (rs.next()) {
%>


<TR> 
        
    <TD><%=rs.getInt(8)%></TD>
    <TD><%=rs.getString(3)%></TD>
    <TD><%=rs.getString(4)%></TD>
     <TD><%=rs.getInt(6)%></TD>
     <TD><%=rs.getDate(7)%></TD>
    
</TR>
<% } %>
       
          
         <div id="main">

    <form method="post" action="slogoutprocess.jsp">
        <table> <tr><td>      </td><td><input type="submit" value="Log Out"></td></tr></table>
    </form>
</body>
<jsp:include page="footer.jsp"></jsp:include>

</div>
</html>




