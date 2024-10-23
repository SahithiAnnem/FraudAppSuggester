<%@include file="DBConn.jsp" %>
<%

String loginid=request.getParameter("loginid");
String pwd=request.getParameter("pwd");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");

PreparedStatement p=con.prepareStatement("insert into userdetails(username,pwd,pno,address,emailid) values(?,?,?,?,?)");
p.setString(1,loginid);
p.setString(2,pwd);p.setString(3,mobile);p.setString(4,address);
p.setString(5,email);
int i=p.executeUpdate();

%>
<script>
alert("registered successfully, please login to continue")
window.location="index.html";
</script>
