<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css"/>
<title> Admin - Home </title>
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
<jsp:include page="footer.jsp"/>
</body>
</html>