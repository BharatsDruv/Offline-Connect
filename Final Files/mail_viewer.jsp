<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/style.css">

  <title>
    Offline Connect - Show Mail
  </title>
  <link rel="icon" href="images/favicon.png" type="image/png">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>


</head>
<body>
<%String email = session.getAttribute("Email").toString(); %>

<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/Offline_Connect","root","1234");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from mails where sender_email='"+request.getParameter("sender")+"' and  receiver_email='"+request.getParameter("receiver")+"' and subject='"+request.getParameter("subject")+"' and hashcode='"+ session.getAttribute("hashcode")+"';");
		rs.next();
    %>



<div class="topnav">
  <a href=<%= "\"inbox.jsp?hashcode=" + session.getAttribute("hashcode") + "\"" %> class="logo" >Inbox</a>
	


  <a  href="index.jsp" class="item">LogOut</a>
<a  href="dashboard2.jsp" class="item">My Organizations</a>

</div>


<br>

<div class="container">


           <h6>From: <p><%=rs.getString("sender_email") %></p> </h6>
          <h6>To: <p><%=rs.getString("receiver_email") %></p> </h6>
         <h6>Subject: <p> <%=rs.getString("subject") %></p></h6>
<br>           <h6>Body:  </h6><p><%=rs.getString("body") %></p>



  <% }
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    finally{
      
    }
    %>


	<!-- - --> 
</div>


</body>
</html>
