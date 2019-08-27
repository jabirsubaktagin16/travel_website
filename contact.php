<?php 
  include "zzz-dbConnect.php";
  session_start();

  if(isset($_POST['submit'])){

    $sql = "INSERT INTO contact (FirstName, Lastname, Email, Subject, Message) VALUES ('".$_POST['fn']."', '".$_POST['ln'] ."', '".$_POST['email']."', '".$_POST['subject']."', '".$_POST['description']."')";
    mysqli_query($link, $sql);

  }

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Vromon BD</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">

    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/style.css">
  </head>

  <body>
  
    <div class="site-wrap">

      <!-- Including header module -->
      <?php include'zzz-header.php';?>

      <!-- cover/banner -->
      <div class="site-blocks-cover inner-page-cover" style="background-image: url(images/contact.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
              <h1 class="text-white font-weight-light">Get In Touch</h1>
              <div>
                <a href="index">Home</a> <span class="mx-2 text-white">&bullet;</span> <span class="text-white">Contact</span>
              </div>
            </div>
          </div>
        </div>
      </div>  

      <!-- Form & our contact info -->
      <div class="site-section bg-light">
        <div class="container">
          <div class="row">
            <div class="col-md-7 mb-5">

              <!-- Form -->
              <form method="POST" class="p-5 bg-white">
                <!-- name -->
                <div class="row form-group">
                  <div class="col-md-6 mb-3 mb-md-0">
                    <label class="text-black" for="fname">First Name</label>
                    <input type="text" id="fname" name="fn" class="form-control">
                  </div>
                  <div class="col-md-6">
                    <label class="text-black" for="lname">Last Name</label>
                    <input type="text" id="lname" name="ln" class="form-control">
                  </div>
                </div>
                <!-- email -->
                <div class="row form-group">
                  <div class="col-md-12">
                    <label class="text-black" for="email">Email</label> 
                    <input type="email" id="email" name="email" class="form-control">
                  </div>
                </div>
                <!-- Subject -->
                <div class="row form-group">
                  <div class="col-md-12">
                    <label class="text-black" for="subject">Subject</label> 
                    <input type="subject" id="subject" name="subject" class="form-control">
                  </div>
                </div>
                <!-- Message -->
                <div class="row form-group">
                  <div class="col-md-12">
                    <label class="text-black" for="message">Message</label> 
                    <textarea id="message" name="description" cols="30" rows="7" class="form-control" placeholder="Write your notes or questions here..."></textarea>
                  </div>
                </div>
                <!-- Button -->
                <div class="row form-group">
                  <div class="col-md-12">
                    <input type="submit" value="Send Message" name="submit" class="btn btn-primary py-2 px-4 text-white">
                  </div>
                </div>
              </form>
            </div>
            
            <!-- Our contact -->
            <div class="col-md-5">
              
              <div class="p-4 mb-3 bg-white">
                <p class="mb-0 font-weight-bold">Address</p>
                <p class="mb-4">56 Sabujbag, Dhaka, Bangladesh</p>

                <p class="mb-0 font-weight-bold">Phone</p>
                <p class="mb-4"><a href="#">+8801996846517</a></p>

                <p class="mb-0 font-weight-bold">Email Address</p>
                <p class="mb-0"><a href="#">arif.ishan05@gmail.com</a></p>
              </div>
              
              <div class="p-4 mb-3 bg-white">
                <img src="images/hero_bg_1.jpg" alt="Image" class="img-fluid mb-4 rounded">
                <h3 class="h5 text-black mb-3">More Info</h3>
                <p>For More Info You can contact us <br> <a href="mailto:subaktagin.jabir16@gmail.com">Ahmad Subaktagin Jabir</a> <br> <a href="mailto:farzanamayisha11@gmail.com">Mayisha Farzana</a></p>
                <p><a href="#" class="btn btn-primary px-4 py-2 text-white">Learn More</a></p>
              </div>

            </div>
          </div>
        </div>
      </div>

      <!-- Footer area -->
      <?php include "zzz-footer.php";?>
      
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/aos.js"></script>

    <script src="js/main.js"></script>
    
  </body>
</html>