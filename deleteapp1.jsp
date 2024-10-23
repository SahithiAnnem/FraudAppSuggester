<%@include file="DBConn.jsp" %>
<%
String appid=request.getParameter("appid");
PreparedStatement pst=con.prepareStatement("delete from appdetails where appid=?");
pst.setString(1,appid);
int i=pst.executeUpdate();
%>
<script>
alert("App Deleted");
window.location="uploaderhome.jsp"
</script>