<?php 
    include "zzz-dbConnect.php"; 
    
	session_start();
    
    if(isset($_POST["post"])){
		

	}    
    
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Vromon BD</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700">
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
        <div class="site-blocks-cover inner-page-cover" style="background-image: url(images/hero_bg_2.jpg);"
            data-aos="fade" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row align-items-center justify-content-center text-center">
                    <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                        <h1 class="text-white font-weight-light">Share Your Story</h1>
                        <div>
                            <a href="index">Home</a> <span class="mx-2 text-white">&bullet;</span> <span
                                class="text-white">Story</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Form & our contact info -->
        <div class="site-section bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 mb-12">

                        <!-- Form -->
                        <form class="p-5 bg-white" method="POST">
                            <!-- tile -->
                            <div class="row form-group">
                                <div class="col-md-12 mb-3 mb-md-0">
                                    <label class="text-black" for="title">Title</label>
                                    <input type="text" name="title" id="title" class="form-control" required>
                                </div>
                            </div>
                            <!-- place location -->
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <label class="text-black" for="place">Place</label> <br>
                                    <select class="select" name="place" id="place" required>
                                        <option value="" disabled selected>Select Status</option>
                                        
                                        <?php
                                            $sql = "SELECT ID, Name FROM place";
                                            $result = mysqli_query($link, $sql);

                                            while($row = mysqli_fetch_array($result)) {
                                                echo '<option value="new" >'.$row['Name'].'</option>';
                                            }
                                        ?>

                                    </select>
                                </div>
                            </div>
                            <!-- description -->
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="description">Description</label>
                                    <textarea rows="8" cols="50" name="description" id="description" class="form-control" placeholder="Tell us about your story of journey..." required></textarea>
                                </div>
                            </div>
                            <!-- tags -->
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="tag">Tags</label>
                                    <input type="text" name="tag" id="tag" class="form-control" placeholder="Waterfall, Hill, etc." required>
                                </div>
                            </div>
                            <!-- Button -->
                            <div class="row form-group">
                                <div class="col-md-12" style="text-align:center; margin-top:20px;">
                                    <input type="submit" name="post" value="Post" class="btn btn-primary py-2 px-4 text-white">
                                </div>
                            </div>
                        </form>
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