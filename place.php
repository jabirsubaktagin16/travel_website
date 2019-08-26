<?php 

    include "zzz-dbConnect.php";
    session_start();

    if( isset($_GET['placeName']) && isset($_GET['placeID']) ){
        $placeName = $_GET['placeName'];
        $placeID = $_GET['placeID'];
    }
    // Checking URL
    $sql = "SELECT Name FROM place WHERE ID = ".$placeID;
    $result = mysqli_query($link, $sql);
    $row = mysqli_fetch_array($result);
    if( $row['Name'] != $placeName ) {
      echo 'Url is not correct';
      die();
    }

    // Taking image path from database for cover
    $sql = "SELECT * FROM place WHERE ID = ". $placeID;
    $result = mysqli_query($link, $sql);
    $count = mysqli_num_rows($result);
    $row = mysqli_fetch_array($result);

    if($count > 0)$coverImgPath = $row['Image'];
    else $coverImgPath = 'images/hero_bg_2.jpg';

    //Taking Comment
    if(isset($_POST['commentButton'])){
      if(isset($_SESSION['ID'])){
        date_default_timezone_set('Asia/Dhaka');
        $sql = "INSERT INTO comment (UserID, Text, DateTime) VALUES ('".$_SESSION['ID'] ."', '".trim($_POST["comment"])."', '".date("M d, Y")." at ".date("h:i a")."')";
        mysqli_query($link, $sql);

      }
      else {
        echo "<script>
                if (confirm('Please login first. Do you want to login?')) {
                  window.location = 'login';
                }
              </script>";
      }
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
    
      <!-- cover -->
      <div class="site-blocks-cover inner-page-cover" style="background-image: url(<?php echo $coverImgPath?>);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
              <h1 class="text-white font-weight-light">About <?php echo $placeName;?></h1>
              <div>
                <a href="index">Home</a> <span class="mx-2 text-white">&bullet;</span> <span class="text-white">Place</span>
              </div>
            </div>
          </div>
        </div>
      </div>  

      
      <div class="site-section">
        <div class="container">

          <!-- About the place start-->
          <div class="row mb-3 align-items-stretch">
            <?php
              $sql = "SELECT * FROM place WHERE ID = ". $placeID;
              $result = mysqli_query($link, $sql);
              $count = mysqli_num_rows($result);
              $row = mysqli_fetch_array($result);
              
              if($count > 0){
            ?>
                <div class="h-entry">
                  <p style="text-align: justify;"><?php echo $row['Description']?></p>
                </div>
            <?php
              } else {
                echo '
                <div class="col-12 text-center">
                  <div class="h-entry">
                    <h2 class="font-size-regular">Oh! No result found</h2><br>
                  </div>
                </div>';
              }
            ?>
          </div>
          <!-- About the place end-->
          
          <!-- peoples experience -->
          <div class="site-section">
            <div class="container">
              <?php
                $sql = "SELECT * FROM blogs WHERE PlaceName=\"".$placeName."\"";
                $res = mysqli_query($link, $sql);
                $noOfData = mysqli_num_rows($res);

                if($noOfData > 0){
              ?>
                  <h3 style="text-align:center; margin-bottom:50px; ">Related Stories</h3>
                  <div class="row mb-3 align-items-stretch">
                    <?php
                      while($run = mysqli_fetch_array($res)){
                    ?>
                        <div class="col-md-6 col-lg-6 mb-4 mb-lg-4" style="padding-bottom:40px;">
                          <div class="h-entry">
                            <!-- <img src="images/hero_bg_1.jpg" alt="Image" class="img-fluid"> -->
                            <h2 class="font-size-regular"><a href="post?eid=<?php echo $run['ID']?>"><?php echo $run['Title']?></a></h2>
                            <div class="meta mb-4"><?php echo $run['DateTime']?> <span class="mx-2">&bullet;</span> <a href="post?eid=<?php echo $row['ID']?>">View Details</a></div>
                            <p><?php echo $run['Description']?></p>
                          </div> 
                        </div>
                    <?php
                      }
                    ?>
                  </div>
              <?php 
                }
              ?>
            </div>
          </div>
          
          <!-- Comment section -->
          <div class="col-md-12">
            <p>Comments about the place</p>

            <form method="POST">
              <div style="display:flex;">
                <div class="row form-group col-md-11">
                  <input class="form-control" type="text" name="comment" placeholder="Your comments" />
                </div>
                <div class="form-group col-md-1">
                  <button class="btn btn-default" name="commentButton" style="padding:8px; width:100%;">Add</button>
                </div>
              </div>
            </form>

            <div class="actionBox">
              <?php 
                $sql = 'SELECT * from comment WHERE PlaceID = '.$_GET['placeID'];
                $result = mysqli_query($link, $sql);

              while($row = mysqli_fetch_array($result)){
              ?>
                  <ul>
                    <li>
                      <div class="commenterImage">
                        <span class="icon-user"></span>
                      </div>
                      <div class="commentText">
                        <p class=""><?php echo $row['Text']?></p> <span class="date sub-text"><?php echo $row['DateTime']?></span>
                      </div>
                    </li>
                  </ul>
              <?php 
                }?>
            </div>
          </div>

          <!-- Booking button -->
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