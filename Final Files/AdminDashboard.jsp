<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registered Users</title>
<!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    	<link rel="icon" href="favicon.png" type="image/png">
    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body bgcolor=white>


  <div class="topnav">
    <a href="#" class="logo">Offline Connect</a>
    <a  href="index.jsp" class="item">SignIn</a>
    <a href="signup.jsp" class="item">SignUp</a>
    <a href="#contact" class="item">Contact</a>
    <a href="#about" class="item">About</a>
  </div>

<h2>Registered Users</h2>
    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/Offline_Connect","root","1234");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from users;");
    %>
    <table border=1 align=center style="text-align:center">
      <thead>
          <tr>
             <th>Name</th>
             <th>Email</th>
             <th>Password</th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("name") %></td>
                <td><%=rs.getString("email") %></td>
                <td><%=rs.getString("password") %></td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    finally{
      
    }
    %>
</body>
</html>
