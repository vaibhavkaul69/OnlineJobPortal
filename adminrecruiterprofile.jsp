<!--
<%@ page import="java.sql.*" %>
-->
<html>
<head>
	<meta charset="UTF-8"/>
	<link rel="icon" href="images/navbar-logo.png" />
	<!--Meta tag for responsiveness-->
	<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
	<!--Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Raleway&display=swap" rel="stylesheet">
	<!--Font Awesome library-->
	<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" data-auto-replace-svg="nest"></script>
	
	<!--Bootstrap CSS File-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="style.css" type="text/css"/>
<title> Admin � Recruiter Profile</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<p style="text-align:right; margin:20px;"> Welcome <%=username %><a class="btn btn-outline-danger ml-3" href="logout.jsp"> Logout </a></p>
<h1 class="text-center mt-5 display-2 adminjobseekprofile-heading-top text-primary">Administrator <i class="fas fa-user-shield"></i></h1>
<% 
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="admin") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<jsp:include page="adminmenu.jsp"/>
<fieldset>
	<h4 class="text-center text-danger  adminjobseekprofile-subheading-top mb-5 f-size-two">Profile Details</h4>
	
<%
String user=request.getParameter("user");

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/ojp";

 con=DriverManager.getConnection(url,"root","");
 stmt=con.createStatement();
 
 rs=stmt.executeQuery("select * from recruiterprofile where username='"+user+"'");
 while(rs.next())
 {
%>

<table style="overflow-x: scroll;" class="container table-bordered">
<tr>
<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">Name</td>
<td align="center"><%=rs.getString("FNAME") %> <%=rs.getString("LNAME") %></td>
</tr>

<tr>
<td height="50px" width="50px" align="center"class="text-primary font-weight-bold">Company Name</td>
<td align="center"><%=rs.getString("COMPANY") %></td>
</tr>

<tr>
<td height="50px" width="50px" align="center"class="text-primary font-weight-bold">Designation</td>
<td align="center"><%=rs.getString("DESIGNATION")%></td>
</tr>

<tr>
<td height="50px" width="80px" align="center"class="text-primary font-weight-bold">Location</td>
<td align="center"><%=rs.getString("LOCATION") %></td>
</tr>

<tr>
<td height="50px" width="80px" align="center"class="text-primary font-weight-bold">Email</td>
<td align="center"><%=rs.getString("EMAIL") %></td>
</tr>

<tr>
<td height="50px" width="80px" align="center"class="text-primary font-weight-bold">Mobile</td>
<td align="center"><%=rs.getString("MOBILE") %></td>
</tr>

<tr>
<td height="50px" width="50px" align="center"class="text-primary font-weight-bold">Gender</td>
<td align="center" ><%=rs.getString("GENDER") %></td>
</tr>
</table>

<%
}
 rs.close();
 stmt.close();
 con.close();
 %>

</fieldset>
<jsp:include page="footer.jsp"/>
</body>
</html>