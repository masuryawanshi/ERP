<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<link rel="stylesheet" type="text/css" href="style.css" />

	<div id="header">
			
				<div id="logo">
					<h1> 
						Administration. 
					</h1>
				</div>	
		</div>
			<div id="banner">
			
		<img src="images/banner.jpg" alt="" />
								
			
			</div>
			
			<div id="nav">
					<ul>
						<li class="first">
                                                    <a href="hrmsdetail.jsp">HRMS Details</a>
                                                </li>
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
					</ul><br class="clear" />
                                        
				</div>
<form method="post" action="slogoutprocess.jsp">
        <table> <tr><td>      </td><td><input type="submit" value="Log Out"></td></tr></table>
    </form>
                        <jsp:include page="footer.jsp"></jsp:include>			
				</html>