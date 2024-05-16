          
<?php
include'connection.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>

<title>Admin Login Page</title>

<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="css/jcarousel.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />
 
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<style type="text/css">
#username,#password{
width:250px;
}
</style>
</head>
<body>
<div id="wrapper">
	<!-- start header -->
	<header>
       <?php include 'manu.php'; ?>
	</header>
	<!-- end header -->
	<section id="featured">
	 
	<!-- Slider -->
      <?php include 'banner.php'; ?>
	<!-- end slider -->

	
	</section>
  <section class="callaction">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
           <center>
          
            <div>
			
								<form method="post" action="AdminLoginCode.php" style="border-bottom: 4px solid #495786;">
                                <h3 style="background-color:#2A1F00;"><strong style="color:#FFFBF0;">Admin Log-in</strong></h3><br />
									<div class="row uniform">
                                        
										<div>
									           <label>User Name :</label> <input type="text" name="username" id="username" value="" placeholder="User Name" />
										</div>
                                        <br><div>
											  <label>Password  :&nbsp;&nbsp;&nbsp;</label> <input type="password" name="password" id="password" value="" placeholder="Password" />
										</div>
                                        <br><div>
										<input type="submit" value="Log-in" onClick="return valid()"/>&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="button" onClick="window.location.href='AdminLogin.php'" value="Cancel" class="alt"/>
										</div>
                                        <div>
                                        <span id="nameerror" style="color: Red; display: none">* Enter Your User Name</span>
                                        <span id="pwderror" style="color: Red; display: none">* Enter Your Password </span>
          <?php
	   	if(isset($_SESSION['successmessage']) && $_SESSION['successmessage']!=""){
	   ?>
       <h3 align="center" style="color:green;"><?php echo $_SESSION['successmessage']; unset($_SESSION['successmessage']);?></h3>
       <?php } ?>
        <?php
	   	if(isset($_SESSION['errormessage']) && $_SESSION['errormessage']!=""){
	   ?>
       <h4 align="center" style="color:red;"><?php echo $_SESSION['errormessage']; unset($_SESSION['errormessage']);?></h4>
       <?php } ?>
                                          
                                         </div>
									</div>
								</form>
                                
                                </div>
 </center>
	
		</div>
	</div>
	</section>
	<footer>
	<?php include 'footer.php'; ?>	
  </footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script> 
<script src="js/portfolio/jquery.quicksand.js"></script>
<script src="js/portfolio/setting.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
<script src="js/owl-carousel/owl.carousel.js"></script>
 <script type="text/javascript">                     // validation code start
        
        function valid() {
		var res=document.getElementById('username').value;
		 if (res == "")
		 {
		document.getElementById("nameerror").style.display = res ? "none" : "inline";
		document.getElementById("pwderror").style.display = "none";
		return false;
		}
		var res=document.getElementById('password').value;
		 if (res == "")
		 {
		document.getElementById("pwderror").style.display = res ? "none" : "inline";
		document.getElementById("nameerror").style.display = "none";
		return false;
		}
		}
		</script>
</body>
</html>
 