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
                <a href="index" class="text-black h2 mb-0"><img src="images\vromonBD.png" width="200px" height="60px"></a>
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
                        <li><a href="about">About</a></li>
                        <li><a href="contact">Contact</a></li>
                        <!-- <li><a href="booking.html">Book Online</a></li> -->
                    </ul>
                </nav>
            </div>

            <div class="col-6 col-xl-2 text-right">
                <div class="d-none d-xl-inline-block">
                    <ul class="site-menu js-clone-nav ml-auto list-unstyled d-flex text-right mb-0" data-class="social">
                        <li>
                            <?php if(!isset($_SESSION['ID'])) {?>
                                <a href="login" class="pl-0 pr-3 text-black">Login / SignUp <span class="icon-user"></span></a>
                            <?php } else {?>
                                <a href="logout" class="pl-0 pr-3 text-black">Logout <span class="icon-user"></span></a>
                            <?php } ?>
                        </li>
                    </ul>
                </div>

                <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

            </div>

        </div>
    </div>
    
</header>