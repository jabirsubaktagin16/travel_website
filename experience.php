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

      <!-- Slider -->
      <div class="site-blocks-cover inner-page-cover" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
              <h1 class="text-white font-weight-light">Peoples Experience</h1>
              <div>
                <a href="index">Home</a> <span class="mx-2 text-white">&bullet;</span> <span class="text-white">Experience</span>
              </div>
            </div>
          </div>
        </div>
      </div>  

      <!-- Add Experience Section -->
      <div class="site-section border-top" style="margin-bottom:-50px;">
        <div class="container">
          <div class="row text-center">
            <div class="col-md-12" style="display:flex; padding-top:40px; background-color:#FAF9F8;">
              <h5 class="mb-5 text-black" style="margin-right:20px;">Add your travel experience</h5>
              <?php if(isset($_SESSION['ID'])) {?>
                <p style="margin-top:-7px;"><a href="postForm" class="btn btn-primary py-2 px-5 text-white">ADD</a></p>
              <?php } else {?>
                  <p style="margin-top:-7px;"><a href ="login" onclick="alert('Login first!');" class="btn btn-primary py-2 px-5 text-white">ADD</a></p>
              <?php }?>
            </div>
          </div>
        </div>
      </div>

      <!-- Post/Experience start -->
      <div class="site-section">
        <div class="container">
          <h3 style="text-align:center; margin-bottom:50px; ">Explore Experiences</h3>
          <div class="row mb-3 align-items-stretch">
            <?php
              $sql = "select * from blogs";
              $result = mysqli_query($link, $sql);

              while($row = mysqli_fetch_array($result)) {
                $sql = "select FirstName, LastName from user where ID = ".$row['UserID'];
                $result2 = mysqli_query($link, $sql);
                $row2 = mysqli_fetch_array($result2)
            ?>
                <div class="col-md-6 col-lg-6 mb-4 mb-lg-4" style="padding-bottom:40px;">
                  <div class="h-entry">
                    <!-- <img src="images/hero_bg_1.jpg" alt="Image" class="img-fluid"> -->
                    <h2 class="font-size-regular"><a href="post?eid=<?php echo $row['ID']?>"><?php echo $row['Title']?></a></h2>
                    <div class="meta mb-4">by <?php echo $row2['FirstName']." ".$row2['LastName'] ?> <span class="mx-2">&bullet;</span> <?php echo $row['DateTime']?> <span class="mx-2">&bullet;</span> <a href="post?eid=<?php echo $row['ID']?>">View Details</a></div>
                    <p><?php echo $row['Description']?></p>
                  </div> 
                </div>
            <?php
              }
            ?>
          </div>

          <!-- <div class="row">
            <div class="col-12 text-center">
              <a href="#" class="btn btn-outline-primary border-2 py-3 px-5">Load More Posts...</a>
            </div>
          </div> -->
        </div>
      </div>
      <!-- Post/Experience end -->

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