<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "offline_connect";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>

 <style>
body {
  background-image: url('inboxbg5.jpg');
}
</style> 

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}
</style>



</head>
<body>

<ul>
  <li><a class="active" href="inbox.jsp">INBOX
       </a></li>

  <li><a href="sentmail.jsp">Sent Mail</a></li>
  <li><a href="compose.jsp">Compose mail</a></li>
 
</ul>


<table border="1">

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String mailid=(String)session.getAttribute("mail");
String sql ="select * from mails  where senderemail='" +mailid+ "'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div class="card">
  <div class="card-body">
  <h4>  <b><%=resultSet.getString("receiveremail")%></b></h4>
  <h5> Subject: <%=resultSet.getString("subject")%> </h5> 
<h6>
<%=resultSet.getString("body") %></h6>
  </div>
</div>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>

</html>
