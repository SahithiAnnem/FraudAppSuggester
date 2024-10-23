<%@include file="DBConn.jsp" %>
<%

String loginid=request.getParameter("loginid");
String pwd=request.getParameter("pwd");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
String cname=request.getParameter("cname");
String lno=request.getParameter("lno");
PreparedStatement p=con.prepareStatement("update uploaderdetails set username=?,pwd=?,mno=?,address=?,cname=?,lno=?,emailid=? where username=?");
p.setString(1,loginid);
p.setString(2,pwd);p.setString(3,mobile);p.setString(4,address);
p.setString(5,cname);p.setString(6,lno);p.setString(7,email);
p.setString(8,loginid);
int i=p.executeUpdate();
%>
<script>
alert("Details Updated successfully");
window.location="uploaderhome.jsp";
</script>
