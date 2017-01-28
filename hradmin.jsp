<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>



<link rel="stylesheet" type="text/css" href="style.css" />
<body>
	<div id="header">
			
				<div id="logo">
					<h1> 
					Administration 	 
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
                                                     <a href="hrhome.jsp">Home</a>
                                                </li>
					</ul><br class="clear" />
                                        
				</div>

<div id="main">
<div id="box">

<form method="post" action="hradminloginprocess.jsp" >
                              <center>	<table>
					<tr><td style="color:navy;"><B> Administrator Login</B></td></tr>
					<tr><td><br></td></tr>
					<tr><td>User Name:</td><td><input type="text" name="username"/></td></tr>
								<tr><td><br></td></tr>
					<tr><td>Password:</td><td><input type="password" name="userpass"/></td></tr>	
							<tr><td><br></td></tr>
					<tr><td>      </td><td><input type="submit" value="Log In"></td></tr>
					
                                  </table></center>
					</form>		

<br>
<form method="post" action="forgetpass.jsp">
        <table> <tr><td>      </td><td><input type="submit" value="Forget Password"></td></tr></table>
    </form>
</div>    

    
<div id="header">
					<h4>
						Copyright 2016 All rights reserved.
					</h4>
			</div>

</div>

</html>
