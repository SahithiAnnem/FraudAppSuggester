<%@include file="DBConn.jsp" %>
<%
String appid=request.getParameter("appid");
int rating =Integer.parseInt(request.getParameter("rating"));
String review=request.getParameter("review");
String comments=request.getParameter("comments");
String username=request.getParameter("username");
int review1;
if(review.equals("yes"))
   review1=1;
else
   review1=0;
PreparedStatement pst=con.prepareStatement("insert into appratings values(?,?,?,?,?,?)");
pst.setString(1,appid);
pst.setInt(2,rating);
pst.setInt(3,review1);
pst.setString(4,comments);
pst.setInt(5,0);
pst.setString(6,username);
int i=pst.executeUpdate();
%>
<script>
alert("Rating added")
window.location="userhome.jsp";
</script>


   