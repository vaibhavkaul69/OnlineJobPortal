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
<title> JobSeeker � Job Details </title>
</head>
<body>
<jsp:include page="header.jsp"/>
<p style="text-align:right; margin:20px;"> Welcome <%=username %><a class="btn btn-outline-danger ml-3" href="logout.jsp"> Logout </a></p>
<h1 class="text-center mt-5 display-2 adminjobseekprofile-heading-top text-primary">Job Seeker <i class="fas fa-user-tie"></i></h1>
<% 
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="jobseeker") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<jsp:include page="jobseekermenu.jsp"/>
<center>
<fieldset>
	<h4 class="text-center text-danger  adminjobseekprofile-subheading-top mb-5 f-size-two">Feedback Form</h4>
<% 
String jobid=request.getParameter("jobid");

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/ojp";

con=DriverManager.getConnection(url,"root","");
stmt=con.createStatement();

rs=stmt.executeQuery("select * from job where jobid='"+jobid+"'");

while(rs.next())
{
%>

<div class="jobdetails">
<table style="overflow-x: scroll;" class="container mt-5 table-bordered">
<tr>
<td height="50px" align="center"><b><%=rs.getString("title") %></b></td>
<td height="50px" align="center">Posted on <%=rs.getString("dateofposting") %></td>
</tr>
<tr>
<td height="50px" class="text-primary font-weight-bold"  align="center"><%=rs.getString("experience") %>&nbsp;Years</td>
<td  height="50px"align="center">Posted by <%=rs.getString("recruiter") %></td>
</tr>
<tr>
<td height="50px" class="text-primary font-weight-bold"  align="center"><%=rs.getString("location") %></td>
</tr>
<tr>
<td height="50px" class="text-primary font-weight-bold"  align="center"><%=rs.getString("salary") %> p.a.</td>
</tr>
<tr>
<td height="50px" class="text-primary font-weight-bold"  align="center">Vacancy-<%=rs.getString("vacancy") %></td>
</tr>
</table>
<hr class="bg-secondary mx-auto my-5 w-25"/>
<table style="overflow-x: scroll;" class="container table-bordered">
<tr>
<td height="50px" align="center"><%=rs.getString("description") %></td>
</tr>
</table>
<hr class="bg-secondary mx-auto my-5 w-25"/>
<table style="overflow-x: scroll;" class="container table-bordered">
<tr>
<td height="50px" class="text-primary font-weight-bold" align="center">Functional Area &nbsp; </td>
<td height="50px" align="center"><%=rs.getString("functionalarea") %></td>
</tr>
<tr>
<td height="50px" class="text-primary font-weight-bold"  align="center">Role &nbsp;</td>
<td align="center"><%=rs.getString("role") %></td>
</tr>
<tr>
<td height="50px" class="text-primary font-weight-bold"  align="center">Key Skills  &nbsp;</td>
<td align="center"><%=rs.getString("keyskills") %></td>
</tr>
<tr>
<td height="50px" class="text-primary font-weight-bold"  align="center">Interview Date  &nbsp;</td>
<td height="50px" align="center"><%=rs.getString("interviewdate") %></td>
</tr>
<tr>
<td height="50px" class="text-primary font-weight-bold"  align="center">Interview Time  &nbsp;</td>
<td height="50px" align="center"><%=rs.getString("interviewtime") %></td>
</tr>
<tr>
<td height="50px" class="text-primary font-weight-bold"  align="center">Interview Place  &nbsp;</td>
<td height="50px" align="center"><%=rs.getString("interviewplace") %></td>
</tr>
</table>
</div>
<br>
<a href="jobseekersendmessageaction.jsp?user=<%=rs.getString('recruiter') %>&jobid=<%=jobid %>">Apply for this Job</a>
<%	
}
 rs.close();
 stmt.close();
 con.close();
 %>
</fieldset>
</center>
<jsp:include page="footer.jsp"/>
</body>
</html>