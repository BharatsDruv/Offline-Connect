<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Offline Connect - Dashboard</title>


  <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
  <link rel="icon" href="favicon.png" type="image/png">

  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=PT+Sans'>
  <link rel="stylesheet" href="css/dashboard1.css">
</head>
<body>
  <div class="row first">
        <a href="#" class="logo">Dashboard</a>
          <a href="#about" class="item">About</a>
          <a href="#contact" class="item">Contact</a>
        <a href="index.jsp" class="item">Logout</a>
  </div>

<div class="row">

      <div class="col">

          <section class="signup">
              <div class="container">
                  <div class="signup-content">
                      <div class="signup-form">
                          <h2 class="form-title">Create </h2>
                          <form method="POST" class="register-form" id="register-form">
                              <div class="form-group">
                                  <label for="name"><i class="zmdi zmdi-globe material-icons-name"></i></label>
                                  <input type="text" name="org" id="org" placeholder="Your Organization"/>
                              </div>
                              <div class="form-group">
                                  <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                  <input type="password" name="pass" id="pass" placeholder="Organisation ID"/>
                              </div>
                              <div class="form-group">
                                  <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                  <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                              </div>
                              <div class="form-group form-button">
                                  <input type="submit" name="create" id="create" class="form-submit" value="Create"/>
                              </div>
                          </form>
                      </div>
                      <div class="signup-image">
                          <figure><img src="createimage.jpeg" alt="sing up image"></figure>
                      </div>
                  </div>
              </div>
          </section>
        </div>


      <div class="col">
        <!-- <div class="centered"> -->
          <section class="signup">
              <div class="container">
                  <div class="signup-content">
                      <div class="signup-form">
                          <h2 class="form-title">Join</h2>
                          <form method="POST" class="register-form" id="register-form">
                              <div class="form-group">
                                  <label for="name"><i class="zmdi zmdi-globe material-icons-name"></i></label>
                                  <input type="text" name="org" id="org" placeholder="Your Organization"/>
                              </div>
                              <div class="form-group">
                                  <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                  <input type="password" name="pass" id="pass" placeholder="Organisation ID"/>
                              </div>
                              <div class="form-group">
                                  <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                  <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                              </div>
                              <div class="form-group form-button">
                                  <input type="submit" name="create" id="create" class="form-submit" value="Join"/>
                              </div>
                          </form>
                      </div>
                      <div class="signup-image">
                          <figure><img src="joinimages.jpeg" alt="sing up image"></figure>
                      </div>
                  </div>
              </div>
          </section>
        </div>
  </div>









<div class="footer">
<p>
    <center>&copy; 2021 All rights reserved.<br>
    Offline Connect</center>
</p>
</div>

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/popper.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js'></script>

</body>

</html>

