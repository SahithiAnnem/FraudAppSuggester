<%@include file="DBConn.jsp" %>
<%
String user=request.getParameter("user");
String pwd=request.getParameter("pwd");
PreparedStatement pst=con.prepareStatement("select * from uploaderdetails where username=? and pwd=?");
pst.setString(1,user);
pst.setString(2,pwd);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	int status = rs.getInt(8);
	if(status == 0)
	{%>  
	  <script>
	    alert("request is pending at admin, please wait");
	window.location="index.html";
	  </script>
	<%}
	else if(status == 2)
	{
		%>  
	  <script>
	    alert("request is reject, register with valid details");
	window.location="index.html";
	  </script>
	<%
	}
	else
	{
	session.setAttribute("username",rs.getString(1));
	response.sendRedirect("uploaderhome.jsp");
	}
}
else
{%>
   <script>
     alert("Wrong username/Password, Try again");
	 window.location="appuploader.html";
   </script>
<%}
%>