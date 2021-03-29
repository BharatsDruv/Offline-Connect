<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Offline Connect - SignIn</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    	<link rel="icon" href="favicon.png" type="image/png">
    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>


  <div class="topnav">
    <a href="#" class="logo">Offline Connect</a>
    <a  href="index.jsp" class="item">SignIn</a>
    <a href="signup.jsp" class="item">SignUp</a>
    <a href="#contact" class="item">Contact</a>
    <a href="#about" class="item">About</a>
  </div>


        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="signin-image.jpg" alt="sing up image"></figure>
                        <a href="signup.jsp" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign In</h2>
                        <form action="loginLogic.jsp" method="POST" class="register-form" id="login-form">

                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="your_pass" id="your_pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>



    <div class="footer">
    <p>
        <center>&copy; 2021 All rights reserved.<br>
        Offline Connect</center>
    </p>
    </div>
    <!-- JS -->
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
