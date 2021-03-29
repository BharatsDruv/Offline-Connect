<%@ page import = "java.io.*,java.util.*,java.sql.*, javax.swing.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String email= request.getParameter("email");
		String password = request.getParameter("your_pass");
		
		
		    
		if( email.isEmpty() || password.isEmpty())
		{
			%>
			<script>
			if(confirm("Email and password can't be empty."));
				window.location.href = "index.jsp"
			</script>
			<%
			 
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
		
           if(email.equals("Admin@gmail.com") && password.equals("1234"))
           {
        	   System.out.println("admin");
        	   
               response.sendRedirect("AdminDashboard.jsp");
           }
           else
           {
        	   ResultSet rs=stmt.executeQuery("select * from users where email='"+email+"' and password='"+password+"';");
        	   rs.next();
        	   
	        	if(rs.getRow() == 0)
        	   {
	        		%>
	    			<script>
	    			if(confirm("Email or password is incorrect."));
	    				window.location.href = "index.jsp"
	    			</script>
	    			<%
        	   }
        	   else
        	   {
	        		   %>
	       			<script>
	       			if(confirm("Successfully logged in."));
	       				window.location.href = "dashboard2.jsp"
	       			</script>
	       				<%
		        		   //response.sendRedirect("dashboard2.jsp");
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


