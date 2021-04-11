<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/style.css">
  <link rel="icon" href="favicon.png" type="image/png">
  <title>
    Offline Connect - Inbox
  </title>
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
        ResultSet rs=st.executeQuery("select * from mails where receiver_email='"+email+"' and hashcode='"+ request.getParameter("hashcode")+"';");
		session.setAttribute("hashcode",request.getParameter("hashcode"));
    %>

<div class="topnav">
  <a href="#" class="logo">Inbox</a>
   <a href=<%= "\"sentmail.jsp?hashcode=" + request.getParameter("hashcode") + "\"" %> class="logo" >Sent Mail</a>
   <a href=<%= "\"compose.jsp?hashcode=" + request.getParameter("hashcode") + "\"" %> class="logo">Compose Mail</a>
  

  <a  href="index.jsp" class="item">LogOut</a>
<a  href="dashboard2.jsp" class="item">My Organizations</a>

</div>

<%while(rs.next())
        {%>
        
       
        
            </div>
			  <div class="card">
			    <div class="card-body">
	
	
                 <a href=<%= "\"mail_viewer.jsp?sender="+ rs.getString("sender_email") +"&receiver="+email+"&subject=" + rs.getString("subject") + "\"" %> ><h4>  <b><%=rs.getString("subject") %></b></a>
             </h4> From: <%=rs.getString("sender_email") %>
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






</body>
</html>
