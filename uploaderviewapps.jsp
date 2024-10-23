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
    <a class="nav-link" href="uploaderviewfeedback.jsp">Feedback</a>
              </li> 

			  <li class="nav-item">
    <a class="nav-link" href="uploaderviewapps.jsp">View Apps</a>
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
<h3 style="color:white;font-size:40px;">App Details</h3>
<table align="center" style="font-size:20px;color:white;" width=80% border=3>
<tr><th colspan=8 align="center"></th></tr>
<tr><th>App ID</th><th>Uploader Name</th><Th>App Name</th><th>Version</th><th>Category</th><th>FileSize (MB)</th><th>Last Updated On</th><th>Descripion</th><th>Operation</th></tr>
			
<%
String user=(String)session.getAttribute("username");
PreparedStatement pst=con.prepareStatement("select * from appdetails where uploadername=?");
pst.setString(1,user);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
	%>
<tr>
<Th><%= rs.getString(1) %></th>
  <th><%= rs.getString(2) %></th>
  <th><%= rs.getString(3) %></th>
  <th><%= rs.getString(4) %></th>
  <th><%= rs.getString(5) %></th>
  <th><%= rs.getString(6) %></th>
  <th><%= rs.getString(7) %></th>
  <th><%= rs.getString(8) %></th>
  <th><a href="viewappratings.jsp?appid=<%= rs.getString(1) %>">View Rank|</a>
  <a href="deleteapp1.jsp?appid=<%= rs.getString(1) %>"> Delete</a></th>

</tr>
<%}
%>

</table><br>
<button><a href="uploaderhome.jsp" style="color:black;">Back</a></button>



			
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
