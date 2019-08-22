<?php 
    include "zzz-dbConnect.php"; 
    
	session_start();

	$phoneEmail = '';
	$phone = '';
    $email = '';
    $password = '';
    $error = '';

	if(isset($_POST["login"])){
        
        $phoneEmail = trim($_POST["phoneEmail"]);

        if(preg_match('/^[0-9]*$/', $phoneEmail))
            $phone = $phoneEmail;
        elseif(filter_var($phoneEmail, FILTER_VALIDATE_EMAIL))
            $email = $phoneEmail;
            
		$password = trim($_POST["password"]);

        if((!$phone=='' || !$email=='') && !$password==''){

            $sql = 'select * from user where email="'.$email.'" or phone="'.$phone.'"';
            $result = mysqli_query($link, $sql);
            $noOfData = mysqli_num_rows($result);
            
            if($noOfData<1){
                $error = "User not exist";
            }
            else{
                $sql = 'select * from user where (phone="'.$phone.'" or email="'.$email.'") and password="'.$password.'"';
                $result = mysqli_query($link, $sql);
                $noOfData = mysqli_num_rows($result);
                
                if($noOfData<1){
                    $error = "Password wrong";
                }
                else{
                    $row =  mysqli_fetch_array($result);
                    $_SESSION['ID'] = $row['ID'];
                    $_SESSION['firstname'] = $row['FirstName'];
                    $_SESSION['lastname'] = $row['LastName'];
                    $_SESSION['phone'] = $row['Phone'];
                    $_SESSION['email'] = $row['Email'];
                    $_SESSION['password'] = $row['Password'];
                    $_SESSION['point'] = $row['Point'];
                    $_SESSION['Type'] = $row['Type'];
                }
            }
        }else{
            $error = 'Fill all fields';
        }
        if($error=='')
            header('Location: index');
        else{
            echo "<script type='text/javascript'>alert('$error');</script>";
        }
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
        <div class="site-blocks-cover inner-page-cover" style="background-image: url(images/hero_bg_3.jpg);"
            data-aos="fade" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row align-items-center justify-content-center text-center">
                    <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                        <h1 class="text-white font-weight-light">Sign In</h1>
                        <div>
                            <a href="index">Home</a> <span class="mx-2 text-white">&bullet;</span> <span
                                class="text-white">Sign In</span>
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
                            <!-- phone or email -->
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <label class="text-black" for="phone">Phone / Email</label>
                                    <input type="text" name="phoneEmail" id="phone" class="form-control" required>
                                </div>
                            </div>
                            <!-- Password -->
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <label class="text-black" for="password">Password</label>
                                    <input type="password" name="password" id="password" class="form-control" required>
                                </div>
                            </div>
                            <!-- Button -->
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <input type="submit" name="login" value="Log In"
                                        class="btn btn-primary py-2 px-4 text-white">
                                </div>
                            </div>
                            <!-- Create an account -->
                            <p class="lost-password form-group">
                                <a href="signup" rel="nofollow" style="padding-top=90px;">Create an account</a>
                            </p> 
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