<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"  import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
    <link rel="stylesheet" type="text/css" href="style.css" />

    <div id="header">

        <div id="logo">
            <h1> 
                HR Management System
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
    <form action="addemp.jsp" name="myform" id="hello" method="post">
                              <center>	<table>
					<tr><td style="color:navy;"><B> Employee Details </B></td></tr>
					<tr><td><br></td></tr>
                                        <tr><td>Staff_ID:</td><td><input type="number" name="staff_id" placeholder="id"/></td></tr>	
							
                                        <tr><td>Name:</td><td><input type="text" name="name" placeholder="name"/></td></tr>
							
                                        <tr><td>Address:</td><td><input type="text" name="address" placeholder="address"/></td></tr>	
							
                                        <tr><td>Designation:</td><td><input type="text" name="designation" placeholder="designation"/></td></tr>	
							
                                        <tr><td>Salary:</td><td><input type="number" name="salary" placeholder="salary"/></td></tr>	
							
                                        <tr><td>Contact:</td><td><input type="number" name="contact" placeholder="contact"/></td></tr>	
							
                                         <tr><td>Userid:</td><td><input type="text" name="userid" placeholder="userid"/></td></tr>	
							
                                        <tr><td>Password:</td><td><input type="text" name="password" placeholder="password"/></td></tr>	
					
                                        <tr><td>Joining_date:</td><td><input type="text" name="joining_date" placeholder="Date of Joining"/></td></tr>	
					<tr><td>      </td><td><input type="submit" value="ADD"></td>
					    <td>          <input type="reset" value="reset" ></td>
                                        </tr>         
                                   </table></center>
    </form>
    
     <form method="post" action="slogoutprocess.jsp">
        <table> <tr><td><input type="submit" value="Log Out"></td></tr></table>
    </form>
                                    
    <jsp:include page="footer.jsp"></jsp:include>  
</html>
