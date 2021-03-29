<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String name = request.getParameter("name");
		String email= request.getParameter("email");
		String password = request.getParameter("pass");
		String passwordRe = request.getParameter("re_pass");
		String org = request.getParameter("org");
       
		if(name.isEmpty() || email.isEmpty() || password.isEmpty() || 
				passwordRe.isEmpty() || org.isEmpty() )
		{
			 response.sendRedirect("signup.jsp");
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
		      sql = "INSERT INTO users VALUES('"+name+"','"+email+"','"+password+"','"+org+"');";
		      System.out.println(stmt.executeUpdate(sql));
           
		      System.out.println("okay");
           response.sendRedirect("dashboard1.jsp");
			//}catch(Exception e)
			{
				//System.out.println(e);
			}
        }
        
            %>
    </body>
</html>


