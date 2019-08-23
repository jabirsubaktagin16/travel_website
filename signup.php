<?php 
    include "zzz-dbConnect.php"; 
    
	session_start();

	$_SESSION["t_fname"] = '';
	$_SESSION['t_lname'] = '';
	$_SESSION["t_email"] = '';
	$_SESSION['t_phone'] = '';
	$_SESSION["t_password"] = '';
    $error = '';
    
    if(isset($_POST["signup"])){
		$_SESSION['t_fname'] = trim($_POST["fname"]);
		$_SESSION['t_lname'] = trim($_POST["lname"]);
        $_SESSION['t_password'] = trim($_POST["password"]);
		$_SESSION['t_phone'] = trim($_POST["phone"]);
		$_SESSION['t_email'] = trim($_POST["email"]);
		
		$sql = "SELECT * FROM user WHERE Phone='".$_SESSION['t_phone']."'";
		$result = mysqli_query($link, $sql);
		$noOfData = mysqli_num_rows($result);
		
		if($noOfData > 0){
			$error = 'This phone number already exist';
			echo "<script type='text/javascript'>alert('$error');</script>";
		}
// 		elseif(!preg_match('/^[0][1][1-9]*$/', trim($_POST['phone']))){
// 			$error = 'Follow the given pattern on phone field';
// 			echo "<script type='text/javascript'>alert('$error');</script>";
// 		}
		elseif($error=='' && ($_SESSION['t_password'] == trim($_POST["cpassword"]))){
			$sql = "INSERT INTO user (FirstName, Lastname, Email, Phone, Password) VALUES ('".$_SESSION['t_fname']."', '".$_SESSION['t_lname'] ."', '".$_SESSION['t_email']."', '".$_SESSION['t_phone']."', '".$_SESSION['t_password']."')";
			mysqli_query($link, $sql);
			
			$sql = "SELECT * FROM user WHERE Phone='".$_SESSION['t_phone']."'";
			$result = mysqli_query($link, $sql);
			$row = mysqli_fetch_assoc($result);

			$_SESSION['ID'] = $row['ID'];
			$_SESSION['firstname'] = $_SESSION["t_fname"];
			$_SESSION['lastname'] = $_SESSION['t_lname'];
			$_SESSION['phone'] = $_SESSION['t_phone'];
			$_SESSION['email'] = $_SESSION["t_email"];
			$_SESSION['password'] = $_SESSION["t_password"];

			unset($_SESSION["t_fname"]);
			unset($_SESSION['t_lname']);
			unset($_SESSION["t_email"]);
			unset($_SESSION['t_phone']);
			unset($_SESSION["t_password"]);

			header('Location: index');
		}
		else{
			$error = 'Password not match.';
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
        <div class="site-blocks-cover inner-page-cover" style="background-image: url(images/sign_up.jpg);"
            data-aos="fade" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row align-items-center justify-content-center text-center">
                    <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                        <h1 class="text-white font-weight-light">Sign Up</h1>
                        <div>
                            <a href="index">Home</a> <span class="mx-2 text-white">&bullet;</span> <span
                                class="text-white">Sign Up</span>
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
                            <!-- name -->
                            <div class="row form-group">
                                <div class="col-md-6 mb-3 mb-md-0">
                                    <label class="text-black" for="fname">First Name</label>
                                    <input type="text" name="fname" id="fname" value="<?php echo $_SESSION['t_fname'];?>" class="form-control" required>
                                </div>
                                <div class="col-md-6">
                                    <label class="text-black" for="lname">Last Name</label>
                                    <input type="text" name="lname" id="lname" value="<?php echo $_SESSION['t_lname'];?>" class="form-control" required>
                                </div>
                            </div>
                            <!-- phone email -->
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <label class="text-black" for="phone">Phone</label>
                                    <input type="number" name="phone" id="phone" value="<?php echo $_SESSION['t_phone'];?>" class="form-control" required>
                                </div>
                                <div class="col-md-6">
                                    <label class="text-black" for="email">Email</label>
                                    <input type="email" name="email" id="email" value="<?php echo $_SESSION['t_email'];?>" class="form-control" required>
                                </div>
                            </div>
                            <!-- Password ConfirmPassword-->
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <label class="text-black" for="password">Password</label>
                                    <input type="password" name="password" id="password" class="form-control" required>
                                </div>
                                <div class="col-md-6">
                                    <label class="text-black" for="cpassword">Confirm Password</label>
                                    <input type="password" name="cpassword" id="cpassword" class="form-control" required>
                                </div>
                            </div>
                            <!-- Button -->
                            <div class="row form-group">
                                <div class="col-md-12" style="text-align:center; margin-top:20px;">
                                    <input type="submit" name="signup" value="Sign Up"
                                        class="btn btn-primary py-2 px-4 text-white">
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