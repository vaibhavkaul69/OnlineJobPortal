<!DOCTYPE html>
<html>
<?php include 'header.php';?>
<head>
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
  <title>Login</title>
  </head>
  
<body>
    <!--Bootstrap Navbar Adds Up Here-->
    <nav class="navbar navbar-expand-lg sticky-top  navbar-light bg-light">
        <a class="navbar-brand mr-5" href="images/navbar-logo.png"><img src="images/navbar-logo.png" class="navbar-logo" alt="Logo For The Website"/></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse  " id="navbarNav">
          <ul class="navbar-nav text-center d-flex justify-content-between w-100">
            <li class="nav-item text-center  ">
              <a class="nav-link " href="#">Home </a>
            </li>
            <li class="nav-item  text-center  ">
              <a class="nav-link " href="#">Practice Test Categories</a>
            </li>
            <li class="nav-item  text-center  ">
              <a class="nav-link " href="#partners">Our Partners</a>
            </li>
            <li class="nav-item  text-center  ">
                <a class="nav-link " href="#about">About Us</a>
              </li>
            <li class="nav-item text-center  ">
              <a class="nav-link " href="#">Contact Us</a>
            </li>
            <li class="nav-item text-center  ">
                <button class="btn  my-2 display-5 my-sm-0" data-toggle="modal" data-target="#exampleModalLogin" id="nav-login" type="submit"><i class="fas fa-sign-in-alt mr-2"></i>Login</button>
            </li>
           
          </ul>
        </div>
      </nav>
    <!--Website Background hero image-->
    <div class="bg-image jumbotron"></div>
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

    <div class="about-website" id="about">
        <div class="container-fluid">
            <h4 class="display-3  heading-text text-center">About Find Naukri</h4>
            <div class="row">
                <div class="col-xl-6 col-lg-6 ">
                    <img src="images/navbar-logo.png" style="width: 100%;"  alt="Logo Of Website"/>
                </div>
                <div class="col-xl-6 col-lg-6 ">
                    <p class="description py-5 px-md-5"><mark>Find Naukri</mark> entices students from various corners of the nation to take admission in any
                        reputed institution for engineering lets say in our case. But reaching to the remote location is not
                        always compatible and feasible for the companies, but why should both students and companies
                        should suffer the disadvantage of geography?
                        Employed_India an Online recruitment portal is the solution to the above problem, where both
                        the job seekers and recruiters can get their work done by sitting at their respective locations.</p>
                </div>
            </div>
        </div>
    </div>
  <div class="site-partners" id="partners">
     <div class="container-fluid">
          <h4 class="display-3 text-center mt-5 mb-5">Our Partners</h4>
          <div class="row d-flex justify-content-center">
              <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="card py-3 " style="width:100%;" >
                    <img class="card-img-top   mx-auto" src="images/wipro.png" alt="Card image cap">
                    <div class="card-body border-top">
                        <h5 class="card-title font-weight-bold">Wipro</h5>
                      <p class="card-text">Wipro Limited is a leading global information technology, consulting and business process services company.We have over 175,000 dedicated employees serving clients across six continents. </p>
                      <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                  </div>
              </div>
              <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="card py-3" style="width:100%;" >
                    <img class="card-img-top " src="images/larsen-turbo.jpg" alt="Card image cap">
                    <div class="card-body border-top">
                        <h5 class="card-title font-weight-bold">Larsen & Tourbo</h5>
                      <p class="card-text">L&T leads in nearly every sphere of business it operates in. Serving customers in more than 30 countries, across various industries. Explore our offerings by Industry or by Business.</p>
                      <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                  </div>
              </div>
              <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="card py-3" style="width:100%;" >
                    <img class="card-img-top  " src="images/fidelity.png" alt="Fidelity image cap">
                    <div class="card-body border-top">
                        <h5 class="card-title font-weight-bold">Fidelity International</h5>
                      <p class="card-text">Fidelity International offers investment solutions and retirement expertise to institutions, individuals and their advisers around the world.As a private company we think generationally and invest for the long term.</p>  
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
              </div>
          </div>
      </div>
  </div>
  

</body>

<!--Bootstrap JS File-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>

