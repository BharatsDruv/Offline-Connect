<%@ page import = "java.io.*,java.util.*,java.sql.*, javax.swing.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String name= request.getParameter("name");
		String password = request.getParameter("pass");
	
		
		    
		if( name.isEmpty() || password.isEmpty())
		{
			%>
			<script>
			if(confirm("Name and password can't be empty."));
				window.location.href = "dashboard1.jsp"
			</script>
			<%
			 
		}
		else
		{
			//try{
           // JDBC code
           	String DB_URL = "jdbc:mysql://localhost:3306/Offline_Connect";
			
			   //  Database credentials
			  String USER = "root";
			  String PASS = "Ayushi119*";
        
   			 
	          
   			  Class.forName("com.mysql.jdbc.Driver");
		      System.out.println("Connecting to database...");
		      Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
		
		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      Statement stmt = conn.createStatement();
		
        	   ResultSet rs=stmt.executeQuery("select * from Organisation where Org_name='"+name+"' and hashcode='"+password+"';");
        	   rs.next();
        	   
	        	if(rs.getRow() == 0)
        	   {
	        		%>
	    			<script>
	    			if(confirm("No such organisation exists"));
	    				window.location.href = "dashboard1.jsp"
	    			</script>
	    			<%
        	   }
        	   else
        	   {
	       			  String sql;

	       			String email = (String)session.getAttribute("email");
	  	  		      sql = "INSERT INTO user_org VALUES('"+email+"','"+password+"');";
	  	  		      System.out.println(stmt.executeUpdate(sql));
	  	  		      System.out.println("okay");
	  	             response.sendRedirect("dashboard2.jsp");
		        }		
    		
           }
			      
			
        
        
            %>
    </body>
</html>


