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
  <a class="nav-link" href="approveuploader.jsp">Add Apps
                  
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
           <%@include file="DBConn.jsp" %>
		   <%
		   String user=(String)session.getAttribute("username");
		PreparedStatement pst=con.prepareStatement("select * from uploaderdetails where username=?");
		pst.setString(1,user);
		ResultSet rs=pst.executeQuery();
		rs.next();
%>
	<table align="center" width=35% >
		<form action="updateprofile1.jsp" method="post" style="font-size:22px;">
<tr><th style="color:white;font-size:25px;">Update Profile<br></th></tr>
<tr><th style="color:white;">LoginID</th><th><input type="text" name="loginid" value="<%= rs.getString(1) %>" required /></th></tr>

<tr><th style="color:white;"> Password</th><th><input type="password" name="pwd" value="<%= rs.getString(2) %>" required/></th></tr>

<tr><th style="color:white;">EmailId</th><th><input type="email" name="email" value="<%= rs.getString(7) %>" required /></th></tr>

<tr><th style="color:white;">MobileNumber</th><th><input type="text" name="mobile" value="<%= rs.getString(3) %>" required /></th></tr>

<tr><th style="color:white;">Address</th><th><textarea name="address" required rows=5 cols=20>
	<%= rs.getString(4) %>
</textarea></th></tr>

<tr><th style="color:white;">Company Name</th><th><input type="text" name="cname" value="<%= rs.getString(5) %>" required /></th></tr>

<tr><th style="color:white;">Licence Number</th><th><input type="text" name="lno" value="<%= rs.getString(6) %>" required /></th></tr>
<tr>
<th><input type="submit" value="update" /></th>
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
