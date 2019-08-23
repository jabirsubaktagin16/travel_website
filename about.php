<?php
  include "zzz-dbConnect.php";
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

      <!-- cover -->
      <div class="site-blocks-cover inner-page-cover" style="background-image: url(images/about.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
              <h1 class="text-white font-weight-light">About Vromon Bangladesh</h1>
              <div>
                <a href="index">Home</a> <span class="mx-2 text-white">&bullet;</span> <span class="text-white">About</span>
              </div>
            </div>
          </div>
        </div>
      </div>  

      <!-- About Company -->
      <!--<div class="site-section" data-aos="fade-up">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 mb-5 mb-md-0">
              <img src="images/hero_bg_2.jpg" alt="Image" class="img-fluid rounded">
            </div>
            <div class="col-md-6 pl-md-5">
              <h2 class="font-weight-light text-black mb-4">About Company</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae cumque eius modi expedita accusamus alias error totam ab magnam a mollitia magni, distinctio temporibus optio illo sapiente, odio unde natus.</p>

              <ul class="list-unstyled">
                <li class="d-flex align-items-center"><span class="icon-check2 text-primary h3 mr-2"></span><span>Vitae cumque eius modi expedita</span></li>
                <li class="d-flex align-items-center"><span class="icon-check2 text-primary h3 mr-2"></span><span>Totam at maxime Accusantium</span></li>
                <li class="d-flex align-items-center"><span class="icon-check2 text-primary h3 mr-2"></span><span>Distinctio temporibus</span></li>

              </ul>
            </div>
          </div>
        </div>
      </div>-->

      <!-- Our team details -->
      <div class="site-section">
        <div class="container">
          <div class="row justify-content-center mb-5" data-aos="fade-up">
            <div class="col-md-7">
              <h2 class="font-weight-light text-black text-center">Our Team</h2>
            </div>
          </div>
          
          <div class="row">
            <div class="col-md-6 col-lg-4 text-center mb-5" data-aos="fade-up">
              <img src="images/ourTeam/person_1.jpg" alt="Image" class="img-fluid w-50 rounded-circle mb-4">
              <h2 class="text-black font-weight-light mb-4">Mir Arif Hasan</h2>
              <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ab quas facilis obcaecati non ea, est odit repellat distinctio incidunt, quia aliquam eveniet quod deleniti impedit sapiente atque tenetur porro?</p>
              <p>
                <a href="https://github.com/mirarifhasan" class="pl-0 pr-3"><span class="icon-github"></span></a>
                <a href="https://www.linkedin.com/in/mirarifhasan/" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                <a href="https://www.facebook.com/mirarifhasan" class="pl-3 pr-3"><span class="icon-facebook"></span></a>
              </p>
            </div>
            <div class="col-md-6 col-lg-4 text-center mb-5" data-aos="fade-up">
              <img src="images/ourTeam/person_2.jpg" alt="Image" class="img-fluid w-50 rounded-circle mb-4">
              <h2 class="text-black font-weight-light mb-4">Ahmad Subaktagin Jabir</h2>
              <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ab quas facilis obcaecati non ea, est odit repellat distinctio incidunt, quia aliquam eveniet quod deleniti impedit sapiente atque tenetur porro?</p>
              <p>
                <a href="https://github.com/jabirsubaktagin16" class="pl-0 pr-3"><span class="icon-github"></span></a>
                <a href="https://www.instagram.com/jabirsubaktagin/?hl=en" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="https://www.facebook.com/subaktagin.jabir16" class="pl-3 pr-3"><span class="icon-facebook"></span></a>
              </p>
            </div>
            <div class="col-md-6 col-lg-4 text-center mb-5" data-aos="fade-up">
              <img src="images/ourTeam/person_4.jpg" alt="Image" class="img-fluid w-50 rounded-circle mb-4">
              <h2 class="text-black font-weight-light mb-4">Mayisha Farjana</h2>
              <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ab quas facilis obcaecati non ea, est odit repellat distinctio incidunt, quia aliquam eveniet quod deleniti impedit sapiente atque tenetur porro?</p>
              <p>
                <a href="#" class="pl-0 pr-3"><span class="icon-github"></span></a>
                <a href="https://www.instagram.com/kennedia_01/?hl=en" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="https://www.facebook.com/kennedia.kennedia" class="pl-3 pr-3"><span class="icon-facebook"></span></a>
              </p>
            </div>
          </div>
        </div>
      </div>

      <div class="site-section block-13 bg-light">
        <div class="container" data-aos="fade">
          
          <div class="row justify-content-center mb-5">
            <div class="col-md-7">
              <h2 class="font-weight-light text-black text-center">What People Says</h2>
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
                    <p class="text-black lead">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique dolorem quisquam laudantium, incidunt id laborum, tempora aliquid labore minus. Nemo maxime, veniam! Fugiat odio nam eveniet ipsam atque, corrupti porro&rdquo;</p>
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
                    <p class="text-black lead">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique dolorem quisquam laudantium, incidunt id laborum, tempora aliquid labore minus. Nemo maxime, veniam! Fugiat odio nam eveniet ipsam atque, corrupti porro&rdquo;</p>
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
                    <p class="text-black lead">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique dolorem quisquam laudantium, incidunt id laborum, tempora aliquid labore minus. Nemo maxime, veniam! Fugiat odio nam eveniet ipsam atque, corrupti porro&rdquo;</p>
                    <p class="">&mdash; <em>James Martin</em>, <a href="#">Traveler</a></p>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>

      <!-- booking Section 
      <div class="site-section border-top">
        <div class="container">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="mb-5 text-black">Want To Travel With Us?</h2>
              <p class="mb-0"><a href="booking" class="btn btn-primary py-3 px-5 text-white">Book Now</a></p>
            </div>
          </div>
        </div>
      </div> -->
      
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