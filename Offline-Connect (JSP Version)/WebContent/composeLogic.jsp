
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>

 <%
        //String hashcode="abcdef"; 
        //String senderemail="abcsen@gmail.com";
        String receiveremail = request.getParameter("to");
		String subject= request.getParameter("subject");
		String description = request.getParameter("description");
		
		if(receiveremail.isEmpty() || subject.isEmpty() || description.isEmpty())
		{
			 response.sendRedirect("compose.jsp");
		}else
		{
			//try{
           // JDBC code
           
			  String DB_URL = "jdbc:mysql://localhost:3306/offline_connect";
			
			   //  Database credentials
			  String USER = "root";
			  String PASS = "";
        
   			 
	          

               Class.forName("com.mysql.jdbc.Driver");
		      System.out.println("Connecting to database...");
		      Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);   
		      System.out.println("Creating statement...");
		      Statement stmt2 = conn.createStatement();
		      String mailid=(String)session.getAttribute("mail");
	
		      String sql2;
		      sql2 = "INSERT INTO mails(senderemail,receiveremail,subject,body) VALUES('"+mailid+"','"+receiveremail+"','"+subject+"','"+description+"');";
		      stmt2.executeUpdate(sql2);
           
		      System.out.println("okay");
		      response.sendRedirect("inbox.jsp");
        
			
        }
        
            %>
