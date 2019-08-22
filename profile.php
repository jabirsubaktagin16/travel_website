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
        <div class="site-blocks-cover inner-page-cover" style="background-image: url(images/profile.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
          <div class="container">
            <div class="row align-items-center justify-content-center text-center">
              <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                <h1 class="text-white font-weight-light"><?php
                    if( isset($_SESSION['ID'])) {
                      echo $_SESSION['firstname'].' '.$_SESSION['lastname'];
                      }
                    else{
                      echo "Please Login To View Your Profile";
                    }
                 ?></h1>
                <div>
                  <a href="index">Home</a> <span class="mx-2 text-white">&bullet;</span> <a href="edit_profile">Edit</a>
                </div>
              </div>
            </div>
          </div>
        </div>  
   
        <!-- Post/Experience start -->
        <div class="site-section">
          <div class="container">
            
            <div class="row mb-3 align-items-stretch">
              <?php
              $sql="SELECT * FROM blogs WHERE UserID = ". $_SESSION['ID'];
              $result= mysqli_query($link, $sql);
              $count = mysqli_num_rows($result);
              if($count>0){
                ?>
                <div class="col-12 text-center">
                  <div class='h-entry'>
                    <h2 class="font-size-regular">Posts By <?php echo $_SESSION['firstname'].' '.$_SESSION['lastname'];?></h2><br>
                  </div>
                </div>
                <?php
                while ($row = mysqli_fetch_array($result)) {?>
                  <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <a href="blogs?postID=<?php echo $row['ID']?>&postName=<?php echo $row['Title']?>"></a>
                  <h2 class="font-size-regular"><a href="blog?postID=<?php echo $row['ID']?>&postName=<?php echo $row['Title']?>"><?php echo $row['Title']?></a></h2>
                  <div class="meta mb-4">by <?php echo $_SESSION['firstname'].' '.$_SESSION['lastname']?> <span class="mx-2">&bullet;</span> <?php echo $row['Date_Time'];?> <span class="mx-2">&bullet;</span> <a href="#"><?php echo $row['Tag'];?></a></div>
                  <p><?php echo $row['Description']?></p>
                  </div> 
              </div>
              <?php
                }
              } else{
                echo '
                <div class="col-12 text-center">
                  <div class="h-entry">
                    <h2 class="font-size-regular">Oh! No result found</h2><br>
                  </div>
                </div>';
              }
              ?>  
            </div>
            <!--<div class="row">
              <div class="col-12 text-center">
                <a href="#" class="btn btn-outline-primary border-2 py-3 px-5">Load More Posts...</a>
              </div>
            </div>-->
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