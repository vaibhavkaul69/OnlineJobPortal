<!--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
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
<title>New User Registration</title>

</head>
<body id="register-page-bg"  >
<jsp:include page="header.jsp"/>
 <!--Bootstrap Navbar Adds Up Here-->
 <nav class="navbar navbar-expand  ">
    <a class="navbar-brand " href="index.jsp"><img src="images/navbar-logo.png" class="navbar-logo" alt="Logo For The Website"/></a>
    <div class="collapse navbar-collapse d-flex justify-content-end " id="navbarNav">
            <button class="btn nav-item text-center btn-outline-success my-2 display-5 my-sm-0" data-toggle="modal" data-target="#exampleModalLogin" id="nav-login" type="submit"><i class="fas fa-sign-in-alt mr-2"></i>Login</button>
     </div>
  </nav>

   <!-- Modal box for login-->
<div class="modal fade" id="exampleModalLogin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form name="form1" method="post" id="form-submit" action="loginaction.jsp">
                <h3 class="text-dark text-center display-4">Login Here</h3>
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12  text-center">
                        <input type="radio" class="form-control" name="usertype" value="Job-Seeker" /><span class="ml-2 font-weight-bold text-dark display-5">Job-Seeker</span>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 text-center">
                       <input type="radio" class="form-control" name="usertype" value="Recruiter" required="required" /><span class=" font-weight-bold ml-2 text-dark display-5">Recruiter</span>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 text-center">
                       <input type="radio" name="usertype" class="form-control" value="Admin" /><span class="font-weight-bold ml-2 text-dark display-5">Admin</span>
                    </div>
                </div>
                <hr class="bg-dark mx-auto mt-5 w-50"/>
                <!--Username-->
                <label class="text-dark " for="username"><i style="color:#00b09b;" class="fas fa-user mr-2"></i>Username</label>
                <input type="text" class="form-control" name="username" required placeholder="Enter Username"/>
                <!--Password-->
                <label class="text-dark mt-3" for="password"><i style="color:#00b09b;"class="fas fa-key mr-2"></i>Password</label>
                <input type="password" class="form-control" name="password" required placeholder="Enter Password"/>
                <!--Login Button-->
                <input type="submit" class="btn btn-outline-success mt-3 form-control mb-3" name="submit" value="Login"/>
                <a href="registration.jsp" target="_self" class="btn btn-outline-success d-block" title="Register Here">Register Here</a>
            </form>
        </div>
      </div>
    </div>
  </div>
  
  <!--Registeration form-->
<div class="container mx-auto p-xl-5 p-lg-5 p-md-5" id="register-form">
    <form name="myForm" method="POST" onsubmit="return checkPasswordMatch()" id="form-submit" action="registrationaction.jsp">
        <h3 class="text-white text-center mt-2 display-4">Register Here</h3>
        <div class="row ">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6  text-center">
                <input type="radio" class="form-control" name="usertype" value="Job-Seeker" required /><span class=" font-weight-bold mt-3 text-white display-5">Job-Seeker</span>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 text-center">
               <input type="radio" class="form-control" name="usertype" value="Recruiter" required="required" /><span class=" font-weight-bold  mt-3 text-white display-5">Recruiter</span>
            </div>
        </div>
        <hr class="bg-light mx-auto  w-50"/>
        <!--Username-->
        <label class="text-white mt-2 " for="username"><i style="color:#00b09b;" class="fas fa-user mr-2"></i>Username</label>
        <input type="text" class="form-control" name="username" required placeholder="Enter Username"/>
        <!--Password-->
        <label class="text-white mt-2" for="password"><i style="color:#00b09b;"class="fas fa-key mr-2"></i>Password</label>
        <input type="password" class="form-control" id="reg-password" name="password" required placeholder="Enter Password"/>
        <!--Confirm Password-->
        <label class="text-white mt-2"  for="conf-password"><i style="color:#00b09b;"class="fas fa-key mr-2"></i>Confirm Password</label>
        <input type="password" class="form-control" name="conf-password" required placeholder="Enter Password"/>
        <h4  class="ml-3 mt-2  text-danger bg-white text-center  font-weight-bold" id="divCheckPasswordMatch"></h4>
        <!--Login Button-->
        <input type="submit" class="btn btn-outline-success mt-2 form-control mb-3"  name="submit"  value="Register"/>
    </form>
</div>
<jsp:include page="footer.jsp"/>
</body>

<script type="text/javascript">
    function checkPasswordMatch()
    {
        var password = document.getElementById('reg-password').value;
        var confirmPassword = document.querySelector('input[name="conf-password"]').value;
    
        if (password != confirmPassword){
            document.getElementById('divCheckPasswordMatch').innerHTML='<i class="fas mr-3  fa-exclamation-triangle text-danger"></i>Password Do Not Match<i class="fas ml-3 fa-exclamation-triangle  text-danger"></i>';
            
                return false;
        }
            else{
               return true;
            }
            
    }
    </script>
    <!--Bootstrap JS File-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>