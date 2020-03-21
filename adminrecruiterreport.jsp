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
<title> Admin � Recruiter Report </title>
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
	<h4 class="text-center text-danger  adminjobseekprofile-subheading-top mb-5 f-size-two">List Of Registered Recruiters</h4>
<div class="adminlist">
<table style="overflow-x: scroll;" class="container table-bordered">
<b><tr>
<td height="50px" align="center"class="font-weight-bold" width=10%>S.No.</td>
<td height="50px"align="center"class="font-weight-bold"width=50%>Username</td>
<td height="50px" align="center"class="font-weight-bold"width=20%>View Profile</td>
<td height="50px"align="center" class="font-weight-bold"width=20%>Remove Profile</td>
</tr></b>
</table>
<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
int count=1;
 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/ojp";

 con=DriverManager.getConnection(url,"root","");
 stmt=con.createStatement();
 
 rs=stmt.executeQuery("select * from recruiterprofile");
 while(rs.next())
 {
%>
<table style="overflow-x: scroll;" class="container table-bordered">
<tr>
<td class="font-weight-bold"align="center" height="50px" width=10%><%=count%>.</td>
<td class="font-weight-bold" align="center"height="50px" width=50%><%=rs.getString("username") %></td>
<td height="50px"align="center" width=20%><a class="text-success font-weight-bold" href="adminrecruiterprofile.jsp?user=<%=rs.getString('username') %>">View</a></td>
<td height="50px"align="center" width=20%><a class="text-dange font-weight-bold" href="adminremoveaction.jsp?user=<%=rs.getString('username')%>&type=recruiter">Remove</a></td>
</table>
</div>
<%
count++;
} 
 rs.close();
 stmt.close();
 con.close();
%>
</fieldset>
<jsp:include page="footer.jsp"/>
</body>
</html>