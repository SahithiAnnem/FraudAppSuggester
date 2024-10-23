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
                <a class="nav-link" href="userviewapps.jsp">View Apps
                  
                </a>
              </li> 

			  

			  <li class="nav-item">
    <a class="nav-link" href="viewfeedback.jsp">Send Feedback</a>
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
		String appid=request.getParameter("appid");
		  %>
<h3 style="color:white;font-size:40px;"><br>App Ratings</h3>
<table align="center" style="font-size:20px;color:white;" width=80% border=3>
<tr><th>User Name</th><th>User Rating</th><th>Comment</th></tr>			
<%

PreparedStatement pst=con.prepareStatement("select * from appratings where appid=?");
pst.setString(1,appid);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	int ratings=0,reviews=0,count=0;
	String rank="";
	PreparedStatement pst1=con.prepareStatement("select * from appratings where appid=?");
	pst1.setString(1,appid);
	ResultSet rs1=pst1.executeQuery();
	while(rs1.next())
	{
		ratings = ratings+ rs1.getInt(2);
		reviews = reviews+rs1.getInt(3);
		count++;
		%>
	    <tr>
		<th><%= rs1.getString(6) %></th>
		<th><%= rs1.getInt(2) %></th>
		<th><%= rs1.getString(4) %></th>
		</tr>
	<%}
    
	%>
<tr><th colspan=3>Total Downloads:<%= count %></th></tr>
<tr><th colspan=3>Average Rating:<%= (int)(ratings/count) %></th></tr>
<tr><th colspan=3>Average Review:<%= (int)(reviews/count) %></th></tr>
<%
		 double arating = (double)ratings/count;
		 double areview = ((double)reviews/count)*100;
		 if(arating >= 4.9 && areview>=95)
			 rank = "Fraud App";
	     else if(arating >= 4 && areview>=80)
			 rank = "Good App";
		 else if(arating >= 3 && areview>=60)
			 rank = "Average ";
		 else
			 rank ="App performace is Poor";
%>
<tr><th colspan=3>App Rank:<%= rank %></th></tr>

<%}
else
{%>
   <tr><th>No ratings are available</th></tr>	
<%}
%>
</table><br>
<button><a href="userhome.jsp" style="color:black;">Back</a></button>

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
