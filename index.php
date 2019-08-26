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

      <!-- slider -->
      <div class="slide-one-item home-slider owl-carousel">
        <div class="site-blocks-cover overlay" style="background-image: url(images/index_cover_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
          <div class="container">
            <div class="row align-items-center justify-content-center text-center">
              <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                <h1 class="text-white font-weight-light">Never Stop Exploring</h1>
                <p class="mb-5">TRAVEL DOESN'T BECOME ADVENTURE UNTIL YOU LEAVE YOURSELF BEHIND</p>
              </div>
            </div>
          </div>
        </div>

        <div class="site-blocks-cover overlay" style="background-image: url(images/index_cover_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
          <div class="container">
            <div class="row align-items-center justify-content-center text-center">
              <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                <h1 class="text-white font-weight-light">Love The Places</h1>
                <p class="mb-5">CLIMB THE MOUNTAIN SO YOU CAN SEE THE WORLD, NOT SO THE WORLD CAN SEE YOU</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 3 Card -->
      <div class="site-section">
        <div class="container overlap-section">
          <div class="row">
            
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
              <a href="experience" class="unit-1 text-center">
                <img src="images/img_2.jpg" alt="Image" class="img-fluid">
                <div class="unit-1-text">
                  <h3 class="unit-1-heading">Write Down Your Experience</h3>
                </div>
              </a>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
              <a href="destination" class="unit-1 text-center">
                <img src="images/img_1.jpg" alt="Image" class="img-fluid">
                <div class="unit-1-text">
                  <h3 class="unit-1-heading">Explore Bangladesh</h3>
                </div>
              </a>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
              <a href="#" class="unit-1 text-center">
                <img src="images/img_3.jpg" alt="Image" class="img-fluid">
                <div class="unit-1-text">
                  <h3 class="unit-1-heading">Guide to Visit Places</h3>
                </div>
              </a>
            </div>

          </div>
        </div>
      </div>
      <!-- Testimonials -->
      <div class="site-section block-13 bg-light">
        <div class="container">

          <div class="row justify-content-center mb-5">
            <div class="col-md-7">
              <h2 class="font-weight-light text-black text-center">Testimonials</h2>
            </div>
          </div>

          <div class="nonloop-block-13 owl-carousel">
            <div class="item">
              <div class="container">
                <div class="row">
                  <div class="col-lg-6 mb-5">
                    <img src="images/img_1.jpg" alt="Image" class="img-md-fluid">
                  </div>
                  <div class="overlap-left col-lg-6 bg-white p-md-5 align-self-center">
                    <p class="text-black lead">&ldquo;I would rather own a little and see the world than own the world and see a little of it&rdquo;</p>
                    <p class="">&mdash; <em>Alexander Sattler</em></p>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="container">
                <div class="row">
                  <div class="col-lg-6 mb-5">
                    <img src="images/img_2.jpg" alt="Image" class="img-md-fluid">
                  </div>
                  <div class="overlap-left col-lg-6 bg-white p-md-5 align-self-center">
                    <p class="text-black lead">&ldquo;It is better to see something once than to hear about it a thousand times&rdquo;</p>
                    <p class="">&mdash; <em>Asian Proverb</em></p>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="container">
                <div class="row">
                  <div class="col-lg-6 mb-5">
                    <img src="images/img_4.jpg" alt="Image" class="img-md-fluid">
                  </div>
                  <div class="overlap-left col-lg-6 bg-white p-md-5 align-self-center">
                    <p class="text-black lead">&ldquo;The real voyage of discovery consists not in seeking new landscapes, but having new eyes&rdquo;</p>
                    <p class="">&mdash; <em>Marcel Proust</em></p>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>

      <!-- Our Destinations -->
      <div class="site-section">
        <div class="container">

          <div class="row justify-content-center mb-5">
            <div class="col-md-7 text-center">
              <h2 class="font-weight-light text-black">Our Destinations</h2>
              <p class="color-black-opacity-5">Choose Your Next Destination</p>
            </div>
          </div>

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

      <!-- Experience -->
      <div class="site-section">
        <div class="container">
          
          <div class="row justify-content-center mb-5">
            <div class="col-md-7 text-center">
              <h2 class="font-weight-light text-black">Popular Districts in Bangladesh</h2>
            </div>
          </div>
          <div class="row">
            <?php
              $sql = "SELECT * FROM district LIMIT 6";
              $result = mysqli_query($link, $sql);
              $count = mysqli_num_rows($result);

              if($count > 0){
            ?>              
            <?php
                while($row = mysqli_fetch_array($result)) { ?>
                  
                  <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                    <div class="h-entry">
                      <a href="placeList?distID=<?php echo $row['ID']?>&distName=<?php echo $row['Name']?>"><img src="<?php echo $row['Image']?>" alt="Image" class="img-fluid"></a>
                      <h2 class="font-size-regular text-center"><a href="placeList?distID=<?php echo $row['ID']?>&distName=<?php echo $row['Name']?>"><?php echo $row['Name']?></a></h2>
                    </div> 
                  </div>
            
              <?php    
                }
              }?>
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