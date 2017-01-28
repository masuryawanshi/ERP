<%@ page language="java" import="java.sql.*"  import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<link rel="stylesheet" type="text/css" href="style.css" />

	<div id="header">
			
				<div id="logo">
					<h1> 
						Employee Details.
					</h1>
				</div>	
		</div>
			<div id="banner">
			
		<img src="images/banner.jpg" alt="" />
					</div>
<form method="post" action="display.jsp">
      <center><table>
              <tr> <td><select name="select">
              <option>Name</option>
              <option>Staff_id</option>
          </select></td><td><input type="text" name="name" placeholder="Name"</td></tr>
              <tr><td><input type="submit" value="Display"></td></tr></table>
         
          </table></center>
    
    
    
    
</form>

 <div id="main">

    <form method="post" action="slogoutprocess.jsp">
        <table> <tr><td>      </td><td><input type="submit" value="Log Out"></td></tr></table>
    </form>
</body>
<jsp:include page="footer.jsp"></jsp:include>

</div>
</html>
