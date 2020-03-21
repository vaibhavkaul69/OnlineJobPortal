<!--
<%@ page import="java.sql.*" %>
-->
<!DOCTYPE html>
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
	<title> Admin � JobSeeker Profile </title>
	</head>
	



<body >
<jsp:include page="header.jsp"/>
<p style="text-align:right; margin:20px;"> Welcome <%=username %><a class="btn btn-outline-danger ml-3" href="logout.jsp"> Logout </a></p>
<h1 class="text-center mt-5 display-2 adminjobseekprofile-heading-top text-primary">Administrator <i class="fas fa-user-shield"></i></h1>
<!--
<% 
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="admin") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
-->


<hr class="bg-danger text-danger w-25 mx-auto"/>
<jsp:include page="adminmenu.jsp"/>
<h4 class="text-center text-danger  adminjobseekprofile-subheading-top mb-5 f-size-two">Profile Details</h4>
<!--
<%
String user=request.getParameter("user");

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/ojp";

 con=DriverManager.getConnection(url,"root","");
 stmt=con.createStatement();
 
 rs=stmt.executeQuery("select * from jobseekerprofile where username='"+user+"'");
 while(rs.next())
 {
%>
-->

<table style="overflow-x: scroll ;" class=" container table-bordered ">
	<tbody>
<th>
<td height="50px" width="50px" align="center" class="text-success bg-white font-weight-bold">Basic Details <i class="fas fa-info-circle"></i></td>
</th>
<tr>
<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">Name :</td>
<td align="center"><%=rs.getString("FNAME") %> <%=rs.getString("LNAME") %></td>
</tr>
<tr>
<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">Designation :</td>
<td align="center"><%=rs.getString("DESIGNATION") %></td>
</tr>
<tr>
<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">Location :</td>
<td align="center"><%=rs.getString("LOCATION") %></td>
</tr>
<tr>
<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">Experience :</td>
<td align="center"><%=rs.getString("EXPERIENCE") %></td>
</tr>
<tr>
	<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">Date Of Birth :</td>
	<td align="center"><%=rs.getString("DOB") %></td>
	</tr>
	<tr>
	<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">Gender :</td>
	<td align="center"><%=rs.getString("GENDER") %></td>
	</tr>
	<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">Hometown :</td>
	<td align="center"><%=rs.getString("HOMETOWN") %></td>
	</tr>
	<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">PIN :</td>
	<td align="center"><%=rs.getString("PIN") %></td>
	</tr>
	<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">Maritial Status :</td>
	<td align="center"><%=rs.getString("MARITIALSTATUS") %></td>
	</tr>
	<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">Languages Known :</td>
	<td align="center"><%=rs.getString("LANGUAGESKNOWN") %></td>
	</tr>
<th>
<td height="50px" width="50px" align="center" class="text-success bg-white font-weight-bold">Contact Details <i class="fas fa-address-book"></i></td>
</th>
<tr>
<td height="50px" width="50px" align="center" class="text-primary font-weight-bold">Email :</td>
<td align="center"><%=rs.getString("EMAIL") %></td>
</tr>
<tr>
<td height="50px" width="50px" align="center" class="text-primary font-weight-bold" >Mobile :</td>
<td align="center"><%=rs.getString("MOBILE") %></td>
</tr>
<th>
<td height="50px" width="50px" align="center" class="text-danger  font-weight-bold">Key Skills</td>
</th>
<tr align=center>
<td colspan=2 height="50px" width="50px" align="center"><%=rs.getString("KEYSKILLS") %></td>
</tr>
<th>
<td height="50px" width="50px" align="center" class="text-danger font-weight-bold">Projects</td>
</th>
<tr align=center>
<td colspan=2 height="50px" width="50px" align="center"><%=rs.getString("PROJECTS") %></td>
</tr>
<th>
<td height="50px" width="50px" align="center" class="text-danger font-weight-bold">IT Skills</td>
</th>
<tr align=center>
<td colspan=2 height="50px" width="50px" align="center"><%=rs.getString("ITSKILLS") %></td>
</tr>
<th>
<td height="50px" width="50px" align="center" class="text-danger font-weight-bold">Education</td>
</th>
<tr align=center>
<td colspan=2 height="50px" width="50px" align="center"><%=rs.getString("EDUCATION") %></td>
</tr>
<th>
<td height="50px" width="50px" align="center" class="text-danger font-weight-bold">Certifications</td>
</th>
<tr align="center">
<td colspan=2 height="50px" width="50px" align="center"><%=rs.getString("CERTIFICATIONS") %></td>
</tr>
<th>
<td height="50px" width="50px" align="center" class="text-danger font-weight-bold">Work Details</td>
</th>
<tr align=center>
<td colspan=2 height="50px" width="50px" align="center"><%=rs.getString("WORKDETAILS") %></td>
</tr>
</tbody>

<!--<%
 }
 rs.close();
 stmt.close();
 con.close();
 %>
 -->

</table>
<jsp:include page="footer.jsp"/>
</body>
</html>