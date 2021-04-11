<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String hashcode = request.getParameter("hashcode");
		String email = session.getAttribute("Email").toString();
		
       
		if( hashcode.isEmpty()  )
		{
			 response.sendRedirect("dashboard1.jsp");
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
		      String sql;
		      
		      sql = "SELECT * from organisation where hashcode='"+hashcode+"';";
		      ResultSet rs=stmt.executeQuery(sql);
		      
		      if (rs.next() != false) {
		          System.out.println("ResultSet in empty in Java");
		          sql = "INSERT INTO user_org VALUES('"+email+"','"+hashcode+"');";
			      System.out.println(stmt.executeUpdate(sql));
	           
			   
			      System.out.println("okay");
			      session.setAttribute("Email", email);
	           	  response.sendRedirect("dashboard2.jsp");
		        }else
		        {
		        	%>
	    			<script>
	    			if(confirm("Not exist"));
	    				window.location.href = "dashboard1.jsp"
	    			</script>
	    			<%
		        }
		      
		     
			//}catch(Exception e)
			{
				//System.out.println(e);
			}
        }
        
            %>
    </body>
</html>


