<?php 

    include "zzz-dbConnect.php";
    session_start();

    if( isset($_GET['distName']) && isset($_GET['distID']) ){
        $distName = $_GET['distName'];
        $distID = $_GET['distID'];
    }
    // Checking URL
    $sql = "SELECT Name FROM district WHERE ID = ".$distID;
    $result = mysqli_query($link, $sql);
    $row = mysqli_fetch_array($result);
    if( $row['Name'] != $distName ) {
      echo 'Url is not correct';
      die();
    }

    $sql = "SELECT * FROM district WHERE ID = ". $distID;
    $result = mysqli_query($link, $sql);
    $row = mysqli_fetch_array($result);
    $count = mysqli_num_rows($result);
    $coverImgPath = '';
    
    if($count > 0)$coverImgPath = $row['Image'];
    else $coverImgPath = 'images/hero_bg_2.jpg';
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
      <div class="site-blocks-cover inner-page-cover" style="background-image: url(<?php echo $coverImgPath?>);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
              <h1 class="text-white font-weight-light"><?php echo $distName;?></h1>
              <div>
                <a href="index">Home</a> <span class="mx-2 text-white">&bullet;</span> <span class="text-white">Places</span>
              </div>
            </div>
          </div>
        </div>
      </div>  

      <div class="site-section">
        <div class="container">
          <div class="row mb-3 align-items-stretch">
            <?php
              $sql = "SELECT * FROM district WHERE ID = ". $distID;
              $result = mysqli_query($link, $sql);
              $count = mysqli_num_rows($result);
              $row = mysqli_fetch_array($result);
              
              if($count > 0){
            ?>
                <div class="h-entry">
                  <?php echo $row['Description']?>
                </div>
            <?php
              }?>
            <?php
              $sql = "SELECT * FROM place WHERE DistrictID = ". $distID." ORDER BY place.Name ASC";
              $result = mysqli_query($link, $sql);
              $count = mysqli_num_rows($result);

              if($count > 0){
            ?>
                <div class="col-12 text-center">
                  <div class='h-entry'>
                    <h2 class="font-size-regular">Find spots in <?php echo $distName;?></h2><br>
                  </div>
                </div>
              
            <?php
                while($row = mysqli_fetch_array($result)) { ?>
                  
                  <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                    <div class="h-entry">
                      <a href="place?placeID=<?php echo $row['ID']?>&placeName=<?php echo $row['Name']?>"><img src="<?php echo $row['Image']?>" alt="Image" class="img-fluid"></a>
                      <h2 class="font-size-regular"><a href="place?placeID=<?php echo $row['ID']?>&placeName=<?php echo $row['Name']?>"><?php echo $row['Name']?></a></h2>
                      <p><?php echo $row['Location']?></p>
                    </div> 
                  </div>
            
              <?php    
                }
              }
              ?>
          </div>
          
          <div class="row">
            <div class="col-12 text-center">
              <!-- <a href="#" class="btn btn-outline-primary border-2 py-3 px-5">Load More Posts...</a> -->
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