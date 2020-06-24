<?php 
  session_start();
  require_once('functions/alert.php');
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up
    </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"> 
    <!-- custom css -->
    <link rel="stylesheet" href="SignUp.css">
  </head>
  <body class="bg" style="background-color: #016477; ">

    <!-- Main Container -->
    <div class="container  mt-5 mb-5" style="min-width: 360px;">
      <div class="row justify-content-center pt-5 ml-2 mr-2">

        <!-- Left Sided Image -->
        <div class="col-lg-6 col-md-6 pt-4 pb-5 bg2" style="min-height: 350px;" >
          <img src="images/logo.png" style="width: 300px; height: 75px;" class="align-left" alt="">
        </div>

        <!-- Form Section -->
        <div class="col-lg-6 col-md-6 justify-content-center pl-lg-5 pr-lg-5 pt-4" style="border: 1px solid white; background-color: white;">
          <form method="POST" action="checkuser.php">
          <form method="POST" action="checklogin.php">
            <p class="text-center">Register / Sign Up</p>
        
            <div>
              <?php display_alert(); ?>
            </div>

            <div class="form-group">
                <input type="name" name="name" value="<?php if(isset($_SESSION['name']))
               $_SESSION['name']; else '';?>" class="form-control" id="formGroupExampleInput" placeholder="Name" required>
            </div>
            
            <div class="form-group">
              <input type="email" name="email" value="<?php if(isset($_SESSION['email']))
               $_SESSION['email']; else '';?>" class="form-control" id="formGroupExampleInput" placeholder="Email" required>
            </div>
            
            <div class="form-group">
              <input type="password" name="password" class="form-control" id="formGroupExampleInput2" placeholder="Password" required>
            </div>
            
            <div class="form-group">
                <input type="Password" name="Password" class="form-control" id="formGroupExampleInput2" placeholder="Confirm Password" required>
            </div>
            <br/>  
            <div class="d-flex justify-content-center">
                <button type="submit" name="register" class="btn btn-secondary ">Register Now
                </button>
            </div>
            
          </form>
          <br/>
          <p class="text-center"> Already have an Account? 
            <a href="index.php">
              <span>Login here
              </span> 
            </a>
          </p>
        </div>
      </div>
    </div>
    <!-- Will be used for implentation of JavaScript -->
    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous">
    </script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
            integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
            crossorigin="anonymous">
    </script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
            integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
            crossorigin="anonymous">
    </script>
    <!-- font Awesome Alone -->
    <!-- <script src="https://kit.fontawesome.com/5b1acaa091.js" crossorigin="anonymous"></script> -->
  </body>
</html>