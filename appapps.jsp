<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Finding Fraud Apps</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--

TemplateMo 546 Sixteen Clothing

https://templatemo.com/tm-546-sixteen-clothing

-->

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-sixteen.css">
    <link rel="stylesheet" href="assets/css/owl.css">

  </head>

  <body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand" href="index.html"><h2><em>Finding Fraud Apps</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="updateprofile.jsp">Update Profile
                  
                </a>
              </li> 

			  <li class="nav-item">
  <a class="nav-link" href="appapps.jsp">Add Apps
                  
                </a>
              </li> 

			  <li class="nav-item">
    <a class="nav-link" href="viewfeedback.jsp">Feedback</a>
              </li> 

			  <li class="nav-item">
    <a class="nav-link" href="viewfeedback.jsp">View Apps</a>
              </li>

			  <li class="nav-item">
    <a class="nav-link" href="reports.jsp">Reports</a>
              </li> 
  

			  <li class="nav-item">
                <a class="nav-link" href="index.html">Logout</a>
              </li>
             </ul>
			
			 </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <div class="banner header-text">
      <div class="owl-banner owl-carousel">
        <div class="banner-item-01">
          <div class="text-content">
           <table align="center" width=35% >
<form action="addapps1.jsp" method="post" style="font-size:22px;">
<tr><th style="color:white;font-size:26px;" colspan=2 align="center">Enter App Details</th></tr>
<tr><th style="color:white;">AppName</th><th><input type="text" name="appname" required /></th></tr>

<tr><th style="color:white;"> UploaderName</th><th><input type="text" name="uploadername" value="<%= session.getAttribute("username") %>" required/></th></tr>

<tr><th style="color:white;">App Version</th><th><input type="text" name="appversion" required /></th></tr>

<tr><th style="color:white;">Category</th><th>
<select name="category" >

   <option value="Sports">Sports
   <option value="Science">Science
   <option value="Friction">Friction
   <option value="Education">Education
   <option value="Others">Others
   </select>
</th></tr>

<tr><th style="color:white;">File Size(in MB)</th><th><input type="text" name="filesize" required /></th></tr>

<tr><th style="color:white;">Description</th><th>
<textarea name="desc" rows=5 cols=20>
</textarea>

<tr>
<th><input type="submit" value="Upload" /></th>
<Th><input type="reset" value="Reset" /></th></tr>
		</form>


			</table>
       

		
			
          </div>
        </div>
      </div>
    </div>
    <!-- Banner Ends Here -->

    
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="inner-content">
              <p>Copyright &copy; 2021 .
            
            </p>
            </div>
          </div>
        </div>
      </div>
    </footer>


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/isotope.js"></script>
    <script src="assets/js/accordions.js"></script>


    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>


  </body>

</html>
