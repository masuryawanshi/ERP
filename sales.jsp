<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales Terminal</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <div id="outer">
	<div id="header">
			
				<div id="logo">
					<h1>
						SALES.
					</h1>
				</div>	
		</div>
			<div id="banner">
				
				<img src="images/banner.jpg" alt="" />
			
			</div>
            <div id="nav">
            
            <ul>
                <li><a href="managerlogin.jsp">Sales Manager</li>
                <li><a href="main.jsp">Home</a></li>
             </ul><br class="clear" />
            </div>
            
        <div id="main">
<div id="box">

<form method="post" action="sloginprocess.jsp" >
                              <center>	<table>
					<tr><td style="color:navy;"><B> User Login</B></td></tr>
					<tr><td><br></td></tr>
					<tr><td>User Name:</td><td><input type="text" name="username"/></td></tr>
								<tr><td><br></td></tr>
					<tr><td>Password:</td><td><input type="password" name="userpass"/></td></tr>	
							<tr><td><br></td></tr>
					<tr><td>      </td><td><input type="submit" value="Log In"></td></tr>
					
                                  </table></center>
					</form>		

<br>

</div>

</div>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
