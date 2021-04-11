<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Offline Connect - My Organisations</title>

  <!-- Font Icon -->
  <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="icon" href="favicon.png" type="image/png">
  <!-- Main css -->
  <link rel="stylesheet" href="css/style.css">
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

<body>

<%String email = session.getAttribute("Email").toString(); %>

	<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/Offline_Connect","root","1234");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select org_name, organisation.hashcode from user_org, organisation where email='"+email+"' and user_org.hashcode=organisation.hashcode;");
    %>

  <div class="topnav">
    <a href="#" class="logo">My Organizations</a>
    <a href="dashboard1.jsp" class="logo">Add/Create Organizations</a>
    
    <a  href="index.jsp" class="item">LogOut</a>



		<%while(rs.next())
        {%>
        
       
        
            </div>
			  <div class="card">
			    <div class="card-body">
	
	
                 <a href=<%= "\"inbox.jsp?hashcode=" + rs.getString("hashcode") + "\"" %> ><h4>  <b><%=rs.getString("org_name") %></b></a>
             </h4> Mails
		    </div>
		  </div>
            <%}%>

 


    <% }
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    finally{
      
    }
    %>



<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/popper.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js'></script>

</body>

</html>
