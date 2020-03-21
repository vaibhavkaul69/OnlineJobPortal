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
<title> JobSeeker - Home </title>
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
<jsp:include page="footer.jsp"/>
</body>
</html>