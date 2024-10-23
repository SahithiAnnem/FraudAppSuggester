<%@include file="DBConn.jsp" %>
<%
String appid="ID"+(int)(Math.random()*100000);
String appname=request.getParameter("appname");
String uploadername=request.getParameter("uploadername");
String appversion=request.getParameter("appversion");
String category=request.getParameter("category");
int filesize=Integer.parseInt(request.getParameter("filesize"));
String desc=request.getParameter("desc");
java.util.Date d=new java.util.Date();
String date=""+d;
PreparedStatement pst=con.prepareStatement("insert into appdetails values(?,?,?,?,?,?,?,?)");
pst.setString(1,appid);
pst.setString(2,uploadername);
pst.setString(3,appname);
pst.setString(4,appversion);
pst.setString(5,category);
pst.setInt(6,filesize);
pst.setString(7,date);
pst.setString(8,desc);
int i=pst.executeUpdate();
session.setAttribute("ID",appid);
response.sendRedirect("Imageupload.jsp");
%>
