<?php 
  include "zzz-dbConnect.php";
  session_start();
?>

<!DOCTYPE html>
<html lang="en">

  <head>
    <title>Travalers &mdash; Colorlib Website Template</title>
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
        <div class="site-blocks-cover overlay" style="background-image: url(images/hero_bg_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
          <div class="container">
            <div class="row align-items-center justify-content-center text-center">
              <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                <h1 class="text-white font-weight-light">Never Stop Exploring</h1>
                <p class="mb-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga est inventore ducimus repudiandae.</p>
                <p><a href="#" class="btn btn-primary py-3 px-5 text-white">Book Now!</a></p>
              </div>
            </div>
          </div>
        </div>

        <div class="site-blocks-cover overlay" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
          <div class="container">
            <div class="row align-items-center justify-content-center text-center">
              <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                <h1 class="text-white font-weight-light">Love The Places</h1>
                <p class="mb-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga est inventore ducimus
                  repudiandae.</p>
                <p><a href="#" class="btn btn-primary py-3 px-5 text-white">Book Now!</a></p>
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
              <a href="#" class="unit-1 text-center">
                <img src="images/img_2.jpg" alt="Image" class="img-fluid">
                <div class="unit-1-text">
                  <h3 class="unit-1-heading">Write Down Your Experience</h3>
                </div>
              </a>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
              <a href="#" class="unit-1 text-center">
                <img src="images/img_1.jpg" alt="Image" class="img-fluid">
                <div class="unit-1-text">
                  <h3 class="unit-1-heading">Explore Asian Mountains</h3>
                </div>
              </a>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
              <a href="#" class="unit-1 text-center">
                <img src="images/img_3.jpg" alt="Image" class="img-fluid">
                <div class="unit-1-text">
                  <h3 class="unit-1-heading">Safe Trip With Airasia</h3>
                </div>
              </a>
            </div>

          </div>
        </div>
      </div>

      <!-- Packege -->
      <div class="site-section">
        <div class="container">
          <div class="row align-items-stretch">
            
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
              <div class="unit-4 d-flex">
                <div class="unit-4-icon mr-4">
                  <span class="text-primary flaticon-airplane"></span>
                </div>
                <div>
                  <h3>Air Ticketing</h3>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi
                    at.</p>
                  <p><a href="#">Learn More</a></p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
              <div class="unit-4 d-flex">
                <div class="unit-4-icon mr-4">
                  <span class="text-primary flaticon-ship"></span>
                </div>
                <div>
                  <h3>Cruises</h3>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                  <p><a href="#">Learn More</a></p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
              <div class="unit-4 d-flex">
                <div class="unit-4-icon mr-4"><span class="text-primary flaticon-route"></span></div>
                <div>
                  <h3>Tour Packages</h3>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi
                    at.</p>
                  <p><a href="#">Learn More</a></p>
                </div>
              </div>
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
                    <p class="text-black lead">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique
                      dolorem quisquam laudantium, incidunt id laborum, tempora aliquid labore minus. Nemo maxime, veniam!
                      Fugiat odio nam eveniet ipsam atque, corrupti porro&rdquo;</p>
                    <p class="">&mdash; <em>James Martin</em>, <a href="#">Traveler</a></p>
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
                    <p class="text-black lead">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique
                      dolorem quisquam laudantium, incidunt id laborum, tempora aliquid labore minus. Nemo maxime, veniam!
                      Fugiat odio nam eveniet ipsam atque, corrupti porro&rdquo;</p>
                    <p class="">&mdash; <em>Clair Augustin</em>, <a href="#">Traveler</a></p>
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
                    <p class="text-black lead">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique
                      dolorem quisquam laudantium, incidunt id laborum, tempora aliquid labore minus. Nemo maxime, veniam!
                      Fugiat odio nam eveniet ipsam atque, corrupti porro&rdquo;</p>
                    <p class="">&mdash; <em>James Martin</em>, <a href="#">Traveler</a></p>
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

      <!-- Video -->
      <div class="site-blocks-cover overlay inner-page-cover" style="background-image: url(images/hero_bg_2.jpg); background-attachment: fixed;">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-7" data-aos="fade-up" data-aos-delay="400">
              <a href="https://vimeo.com/channels/staffpicks/93951774" class="play-single-big mb-4 d-inline-block popup-vimeo"><span class="icon-play"></span></a>
              <h2 class="text-white font-weight-light mb-5 h1">Experience Our Outstanding Services</h2>
            </div>

          </div>
        </div>
      </div>

      <!-- Our services -->
      <div class="site-section bg-light">
        <div class="container">
          
          <div class="row justify-content-center mb-5">
            <div class="col-md-7 text-center">
              <h2 class="font-weight-light text-black">Our Services</h2>
              <p class="color-black-opacity-5">We Offer The Following Services</p>
            </div>
          </div>
          
          <div class="row align-items-stretch">
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
              <div class="unit-4 d-flex">
                <div class="unit-4-icon mr-4"><span class="text-primary flaticon-airplane"></span></div>
                <div>
                  <h3>Air Ticketing</h3>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi
                    at.</p>
                  <p><a href="#">Learn More</a></p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
              <div class="unit-4 d-flex">
                <div class="unit-4-icon mr-4"><span class="text-primary flaticon-ship"></span></div>
                <div>
                  <h3>Cruises</h3>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi
                    at.</p>
                  <p><a href="#">Learn More</a></p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
              <div class="unit-4 d-flex">
                <div class="unit-4-icon mr-4"><span class="text-primary flaticon-route"></span></div>
                <div>
                  <h3>Tour Packages</h3>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi
                    at.</p>
                  <p><a href="#">Learn More</a></p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
              <div class="unit-4 d-flex">
                <div class="unit-4-icon mr-4"><span class="text-primary flaticon-hotel"></span></div>
                <div>
                  <h3>Hotel Accomodations</h3>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi
                    at.</p>
                  <p><a href="#">Learn More</a></p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
              <div class="unit-4 d-flex">
                <div class="unit-4-icon mr-4"><span class="text-primary flaticon-sailboat"></span></div>
                <div>
                  <h3>Sea Explorations</h3>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi
                    at.</p>
                  <p><a href="#">Learn More</a></p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
              <div class="unit-4 d-flex">
                <div class="unit-4-icon mr-4"><span class="text-primary flaticon-ski"></span></div>
                <div>
                  <h3>Ski Experiences</h3>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi
                    at.</p>
                  <p><a href="#">Learn More</a></p>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>

      <!-- Experience -->
      <div class="site-section">
        <div class="container">
          
          <div class="row justify-content-center mb-5">
            <div class="col-md-7 text-center">
              <h2 class="font-weight-light text-black">Our Blog</h2>
              <p class="color-black-opacity-5">See Our Daily News &amp; Updates</p>
            </div>
          </div>
          
          <div class="row mb-3 align-items-stretch">
            <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
              <div class="h-entry">
                <img src="images/hero_bg_1.jpg" alt="Image" class="img-fluid">
                <h2 class="font-size-regular"><a href="#">How to Plan Your Vacation</a></h2>
                <div class="meta mb-4">by Theresa Winston <span class="mx-2">&bullet;</span> Jan 18, 2019 at 2:00 pm <span
                    class="mx-2">&bullet;</span> <a href="#">News</a></div>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente
                  veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
              </div>
            </div>
            <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
              <div class="h-entry">
                <img src="images/hero_bg_2.jpg" alt="Image" class="img-fluid">
                <h2 class="font-size-regular"><a href="#">How to Plan Your Vacation</a></h2>
                <div class="meta mb-4">by Theresa Winston <span class="mx-2">&bullet;</span> Jan 18, 2019 at 2:00 pm <span
                    class="mx-2">&bullet;</span> <a href="#">News</a></div>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente
                  veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12 text-center">
              <a href="#" class="btn btn-outline-primary border-2 py-3 px-5">View All Blog Posts</a>
            </div>
          </div>
        </div>
      </div>

      <!-- Book/Contact option -->
      <div class="site-section border-top">
        <div class="container">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="mb-5 text-black">Want To Travel With Us?</h2>
              <p class="mb-0"><a href="booking" class="btn btn-primary py-3 px-5 text-white">Book Now</a></p>
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