<?php
   session_start();

   include "../object/database.php";

   $Login = new Login("localhost","user","password","finalproject");

   $userID = isset($_SESSION["userID"]) ? $_SESSION["userID"] : "";

   $user=$Login->getUserDetail($userID);
?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- site icon -->
      <link rel="icon" href="../User/images/logo/logo_white  - Copy.jpeg" type="image/png" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css" />
      <!-- site css -->
      <link rel="stylesheet" href="style.css" />
      <!-- responsive css -->
      <link rel="stylesheet" href="css/responsive.css" />
      <!-- color css -->
      <link rel="stylesheet" href="css/colors.css" />
      <!-- select bootstrap -->
      <link rel="stylesheet" href="css/bootstrap-select.css" />
      <!-- scrollbar css -->
      <link rel="stylesheet" href="css/perfect-scrollbar.css" />
      

   </head>
   <body class="inner_page contact_page">
      <div class="full_container">
         <div class="inner_container">
            <!-- Sidebar  -->
            <nav id="sidebar">
               <div class="sidebar_blog_1">
                  <div class="sidebar-header">
                     <div class="logo_section">
                        <a href="profile.php"><img class="logo_icon img-responsive" src="../User/images/logo/logo_black.jpeg" alt="#" /></a>
                     </div>
                  </div>
                  <div class="sidebar_user_info">
                     <div class="icon_setting"></div>
                     <div class="user_profle_side">
                        <div class="user_img"><img class="img-responsive" src="../Admin/image/user/<?php echo $user["Image"]?>" alt="#" /></div>
                        <div class="user_info">
                           <h6><?php echo $user["Name"]; ?><?php echo " ";?></h6>
                           <p><span class="online_animation"></span> Online</p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="sidebar_blog_2">
                  <h4>General</h4>
                  <ul class="list-unstyled components">
                     <li><a href="../shoppers-gh-pages/index.php"><i class="fa fa-home red_color"></i> <span>Home</span></a></li>
                     <li><a href="profile.php"><i class="fa fa-diamond purple_color"></i> <span>My Profile</span></a></li>
                     <li><a href="checkTicket.php"><i class="fa fa-dashboard yellow_color"></i> <span>My Purchase</span></a></li>
                     <li><a href="contact.php"><i class="fa fa-phone orange_color"></i> <span>Contact Us</span></a></li>
                     <li><a href="../Logout/logout.php"><i class="fa fa-sign-out" style='color:rgb(40, 140, 228)'></i> <span>Log Out</span></a></li>
                  </ul>
               </div>
            </nav>
            <!-- end sidebar -->
            <!-- right content -->
            <div id="content">
               <!-- topbar -->
               <div class="topbar">
                  <nav class="navbar navbar-expand-lg navbar-light">
                     <div class="full">
                        <button type="button" id="sidebarCollapse" class="sidebar_toggle"><i class="fa fa-bars"></i></button>
                        <div class="right_topbar">
                           <div class="icon_info">
                           <ul class="user_profile_dd">
                                 <li>
                                    <a class="dropdown-toggle" data-toggle="dropdown"><img class="img-responsive rounded-circle" src="../Admin/image/user/<?php echo $user["Image"]?>" alt="#" /><span class="name_user"><?php echo $user["Name"]; ?><?php echo " ";?></span></a>
                                    <div class="dropdown-menu">
                                       <form action="profile.php" method="post">
                                          <a class="dropdown-item" href="../shoppers-gh-pages//index-2.php">Home <i class="fa fa-home red_color"></i></a>
                                          <a class="dropdown-item" href="profile.php">My Profile <i class="fa fa-diamond purple_color"></i></a>
                                          <a class="dropdown-item" href="forgot/forgot.php">Change Password <i class="fa fa-lock green_color"></i></a>
                                          <a class="dropdown-item" href="../Logout/logout.php">Log Out <i class="fa fa-sign-out" style='color:rgb(40, 140, 228)'></i></a>
                                       </form>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </nav>
               </div>
               <!-- end topbar -->
               <!-- dashboard inner -->
               <div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <h2>Contact Us</h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">

                        <!-- table section -->
                        <div class="col-md-6">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 margin_0">
                                    <h2>AZZSTORNISH Sdh Bhd</h2>
                                 </div>
                              </div>
                              <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
                                 <table class="table">
                                    <thead>
                                       <tr>
                                       <h4><i class="fa fa-phone"></i><span style="margin-left:10px">+6011-33333333</span></h4>
                                       </tr>
                                       <tr>
                                          <h4><i class="fa fa-map-marker"></i><span style="margin-left:10px">7 Jalan Covid, Jalan sentoa 61D/KU1</span></h4>
                                       </tr>
                                       <tr>
                                          <h4><i class="fa fa-envelope"></i><span style="margin-left:10px">contact@azzstornish.com</span></h4>
                                       </tr>
                                       <tr>
                                          <h4><i class="fa fa-globe"></i><span style="margin-left:10px">www.azzstornish.com</span></h4>
                                       </tr>
                                       <tr>
                                          <h4><i class="fa fa-clock"></i><span style="margin-left:10px">Mon-Fri: 9 AM - 6 PM</span></h4>
                                       </tr>
                                    </thead>
                                    
                                 </table>
                                 </div>
                              </div>
                           </div>
                        </div>                       
                        <!-- end row -->
                     </div>
                     <!-- footer -->
                     <div class="container-fluid">
                        <div class="footer">
                           <p>Copyright © 2023. All rights reserved.<br><br>
                           </p>
                        </div>
                     </div>
                  </div>
                  <!-- end dashboard inner -->
               </div>
            </div>
         </div>
      </div>
      <!-- jQuery -->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <!-- wow animation -->
      <script src="js/animate.js"></script>
      <!-- select country -->
      <script src="js/bootstrap-select.js"></script>
      <!-- owl carousel -->
      <script src="js/owl.carousel.js"></script> 
      <!-- nice scrollbar -->
      <script src="js/perfect-scrollbar.min.js"></script>
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="js/custom.js"></script>
   </body>
</html>