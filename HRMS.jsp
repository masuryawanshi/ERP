<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HRMS</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <div id="main">
<div id="box">

<form method="post" action="hrloginprocess.jsp" >
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
