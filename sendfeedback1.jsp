<%@include file="DBConn.jsp" %>
<%
String feedback=request.getParameter("feedback");
String username=request.getParameter("username");
PreparedStatement pst=con.prepareStatement("insert into feedback values(?,?)");
pst.setString(2,feedback);
pst.setString(1,username);
int i=pst.executeUpdate();
%>
<script>
alert("Feedback sent ")
window.location="userhome.jsp"
</script>