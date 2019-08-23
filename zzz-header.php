<div class="site-mobile-menu">
    <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
        </div>
    </div>
    <div class="site-mobile-menu-body"></div>
</div>
    
<header class="site-navbar py-1" role="banner">

    <div class="container">
        <div class="row align-items-center">
            
            <div class="col-6 col-xl-2">
                <a href="index" class="text-black h2 mb-0"><img src="images\vromonBD.png" width="200px" height="70px"></a>
            </div>
            <div class="col-10 col-md-8 d-none d-xl-block">
                <nav class="site-navigation position-relative text-right text-lg-center" role="navigation">

                    <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
                        <li>
                            <a href="index">Home</a>
                        </li>
                        <li class="has-children">
                            <a href="destination">Destinations</a>
                            <ul class="dropdown">
                                <?php
                                    $sql= "SELECT ID, Name FROM destination";
                                    $result = mysqli_query($link, $sql);

                                    while($row = mysqli_fetch_array($result)) {
                                        echo '<li><a href="destinationDetails?destID='.$row['ID'].'&destName='.$row['Name'].'">'.$row['Name'].'</a></li>';
                                    }
                                ?>
                            </ul>
                        </li>
                        <!-- <li><a href="discount">Discount</a></li> -->
                        <li><a href="experience">Experience</a></li>
                        <li><a href="contact">Contact</a></li>
                        <!-- <li><a href="booking.html">Book Online</a></li> -->
                    </ul>
                </nav>
            </div>

            <div class="col-6 col-xl-2 text-right">
                <div class="d-none d-xl-inline-block">
                    <nav class="site-navigation position-relative text-right text-lg-center" role="navigation">
                    <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
                        <li class="has-children">
                            <?php if(!isset($_SESSION['ID'])) {?>
                                <a href="login" class="pl-0 pr-3 text-black"><span class="icon-users"></span></a>
                                <ul class="dropdown">
                                    <li><a href="login">Login</a></li>
                                    <li><a href="signup">Sign Up</a></li>
                                </ul>
                            <?php } else {?>
                                <a href="profile" class="pl-0 pr-3 text-black"><span class="icon-users"></span></a>
                                <ul class="dropdown">
                                    <li><a href="profile"><?php echo $_SESSION['firstname'].' '.$_SESSION['lastname'];?></a></li>
                                    <li><a href="logout">Log Out</a></li>
                                </ul>
                            <?php } ?>
                        </li>
                    </ul>
                </div>

                <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>
                </nav>
            </div>

        </div>
    </div>
    
</header>