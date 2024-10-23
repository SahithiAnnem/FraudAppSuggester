<%@include file="DBConn.jsp" %>
<%
String user=request.getParameter("user");
PreparedStatement pst=con.prepareStatement("update uploaderdetails set status=1 where username=?");
pst.setString(1,user);
int i=pst.executeUpdate();
%>
<script>
alert("App Uploader request is accepted")
window.location="adminhome.jsp";
</script>