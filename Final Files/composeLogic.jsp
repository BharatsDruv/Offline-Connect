<%@ page import = "java.io.*,java.util.*,java.sql.*, javax.swing.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compose Logic</title>
    </head>
    <body>
        <%
        String hashcode="",to="",subject="",body="";
    	String email = session.getAttribute("Email").toString();
  
     		hashcode= session.getAttribute("hashcode").toString();
     		System.out.print(email+hashcode);
         	to= request.getParameter("to");
         	subject= request.getParameter("subject");
       		body= request.getParameter("body");
	
       
		if( to.isEmpty() || subject.isEmpty() || body.isEmpty())
		{

  		  System.out.print("incorrect details");
		}else
		{
			//try{
           // JDBC code
           	String DB_URL = "jdbc:mysql://localhost:3306/Offline_Connect";
			
			   //  Database credentials
			  String USER = "root";
			  String PASS = "1234";
        
   			 
	          
   			  Class.forName("com.mysql.jdbc.Driver");
		      System.out.println("Connecting to database...");
		      Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
		
		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      Statement stmt = conn.createStatement();
		
          
           {
        	   try{
        	  stmt.executeUpdate("insert into mails values('"+hashcode+"','"+email+"','"+to+"','"+subject+"','"+body+"');");
        	  %>
  			<script>
  			if(confirm("Mail Sent successfully."));
  				window.location.href = "dashboard2.jsp"
  			</script>
  			<%
        	   }catch(Exception e)
        	   {
        		  System.out.print(e);
        	   }
        	   
        	   
	        		
    		
           }
			      
			//}catch(Exception e)
			{
				//System.out.println(e);
			}
        }
        
            %>
    </body>
</html>


