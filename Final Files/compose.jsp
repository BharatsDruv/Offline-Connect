<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>
    Offline Connect - Compose Mail
  </title>
  
  <link rel="stylesheet" href="css/style.css">
  <link rel="icon" href="images/favicon.png" type="image/png">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>


<div class="topnav">

 <a href=<%= "\"compose.jsp?hashcode=" + session.getAttribute("hashcode") + "\"" %> class="logo">Compose Mail</a>
  <a href=<%= "\"inbox.jsp?hashcode=" + session.getAttribute("hashcode") + "\"" %> class="logo" >Inbox</a>
	<a href=<%= "\"sentmail.jsp?hashcode=" + session.getAttribute("hashcode") + "\"" %> class="logo" >Sent Mail</a>
  
 

  <a  href="index.jsp" class="item">LogOut</a>
<a  href="dashboard2.jsp" class="item">My Organizations</a>

</div>


<br>
<%String email = session.getAttribute("Email").toString(); %>
<%session.setAttribute("hashcode",request.getParameter("hashcode")); %>

<div class="container">
  <form action="composeLogic.jsp"  method="POST">
    <input type="text" id="to" name="to" placeholder="To: abc@gmail.." required >

    <input type="text" id="subject" name="subject" placeholder="Subject: For Request.." required >



    <textarea id="body" name="body" placeholder="Write something.." style="height:200px" required ></textarea>

    <input type="submit" value="Send">
  </form>
</div>


</body>
</html>
