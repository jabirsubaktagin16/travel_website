<?php 
  include "zzz-dbConnect.php"; 
  session_start();
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
      <div class="site-blocks-cover inner-page-cover" style="background-image: url(images/destination_cover.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
              <h1 class="text-white font-weight-light">Destinations</h1>
              <div>
                <a href="index">Home</a> <span class="mx-2 text-white">&bullet;</span> <span class="text-white">Destinations</span>
              </div>
            </div>
          </div>
        </div>
      </div>  

      <div class="site-section">
        <div class="container">
          <div class="row">
            
            <?php
              $sql = "SELECT Name, Image, ID FROM destination";
              $result = mysqli_query($link, $sql);

              while($row = mysqli_fetch_array($result)) {
            ?>
                <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                  <a href="destinationDetails?destID=<?php echo $row['ID'];?>&destName=<?php echo $row['Name'];?>" class="unit-1 text-center">
                    <img src="<?php echo $row['Image'];?>" alt="Image" class="img-fluid">
                    <div class="unit-1-text">
                      <!-- <strong class="text-primary mb-2 d-block">$390</strong> -->
                      <h3 class="unit-1-heading"><?php echo $row['Name']?></h3>
                    </div>
                  </a>
                </div>
            <?php  
              }
            ?>
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