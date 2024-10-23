<%@include file="DBConn.jsp" %>
<%@ page  import="java.io.FileInputStream" %>
<%@ page  import="java.io.BufferedInputStream"  %>
<%@ page  import="java.io.File"  %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.FileReader"%>
<%@ page import="java.io.BufferedReader"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
<%
   // you  can get your base and parent from the database
   
   String appid=request.getParameter("appid");
   String filename=request.getParameter("fn");
// you can  write http://localhost
   String filepath="C://xampp//tomcat//webapps//FraudApps//images";
BufferedInputStream buf=null;
   ServletOutputStream myOut=null;

try{
     myOut = response.getOutputStream( );
     File myfile = new File(filepath+"//"+filename);
     response.setContentType("APPLICATION/OCTET-STREAM");
     response.addHeader("Content-Disposition","attachment; filename="+filename );

     response.setContentLength( (int) myfile.length( ) );
     
     FileInputStream input = new FileInputStream(myfile);
     buf = new BufferedInputStream(input);
     int readBytes = 0;

     //read from the file; write to the ServletOutputStream
     while((readBytes = buf.read( )) != -1)
       myOut.write(readBytes);

} catch (IOException ioe){
     
       System.out.println(ioe);
         
     } finally {
         
     //close the input/output streams
         if (myOut != null)
             myOut.close( );
          if (buf != null)
          buf.close( );
         
     }
	 
%>

    </body>
</html>
