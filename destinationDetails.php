<?php 

    include "zzz-dbConnect.php";

    if( isset($_GET['destName']) && isset($_GET['destID']) ){
        $destName = $_GET['destName'];
        $destID = $_GET['destID'];
    }

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
   

    <div class="site-blocks-cover inner-page-cover" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row align-items-center justify-content-center text-center">

                <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                    <h1 class="text-white font-weight-light">Districts of <?php echo $destName;?></h1>
                    <div>
                        <a href="index">Home</a> <span class="mx-2 text-white">&bullet;</span> <span class="text-white">Districts</span>
                    </div>
                
                </div>
            </div>
        </div>
    </div>  

    <div class="site-section">
        <div class="container">
        
        <div class="row mb-3 align-items-stretch">
          
          <?php
            $sql = "SELECT * FROM district WHERE DestinationID = ". $destID;
            $result = mysqli_query($link, $sql);
            $count = mysqli_num_rows($result);

            if($count > 0){
          ?>
              <div class="col-12 text-center">
                <div class='h-entry'>
                  <h2 class="font-size-regular">Explore the Districts & Find Places</h2><br>
                </div>
              </div>
            
          <?php
              while($row = mysqli_fetch_array($result)) { ?>
                
                <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                  <div class="h-entry">
                    <a href="placeList?distID=<?php echo $row['ID']?>&distName=<?php echo $row['Name']?>"><img src="<?php echo $row['Image']?>" alt="Image" class="img-fluid"></a>
                    <h2 class="font-size-regular"><a href="placeList?distID=<?php echo $row['ID']?>&distName=<?php echo $row['Name']?>"><?php echo $row['Name']?></a></h2>
                    <p><?php echo $row['Title']?></p>
                  </div> 
                </div>
          
            <?php    
              }
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