<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

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
						      <a href="hradmin.jsp">Administration Login</a>
						</li>						
                                                <li>
                                                    <a href="main.jsp">Home</a>
                                                </li>
					</ul><br class="clear" />
				</div>
         
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


    <form method="post" action="forgetpass.jsp">
        <table> <tr><td>      </td><td><input type="submit" value="Forget Password"></td></tr></table>
    </form>
</div> 
</body>
<jsp:include page="footer.jsp"></jsp:include>

</div>

</html>