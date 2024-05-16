          
<?php
include'connection.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>

<title>About Doctor Page</title>

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
<style>
hr {
height: 1px;
color: #123455;
background-color: #123455;
border: none;
}
div{
margin-top:-10px;
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
            <div class="11u$" style="background-color:white; border-left:2px solid Black; border-right:2px solid Black; border-bottom:2px solid Black;">
				<div style="background-color:black;"><h2><strong style="color:#FFFBF0;"> Doctor Details</strong></h2></div>

						   <div style="margin:15px; font-size:smaller;">
           <?php  $query2="select * from tbl_doctor_details where DoctorId='".$_GET['id']."'";
              foreach($con->query($query2) as $vb1) {
              $img=$vb1['Image']; ?>
          <div class="row uniform" style="color:#000000;">
              <div style="text-align:left; float:left; margin-left:15px; margin-top:10px;">
              <div class="10u$" style="float:left;"><img src="doctor/<?php echo "$img" ?>" width="120px" height="90px" alt="Image not found" /></div>
              </div>
              <div style="text-align:left; float:left; margin-left:15px;">
              <div class="10u$" style="margin-top:10px;"><label style="color:#00DF55;"> Dr. <?php echo $vb1['DoctorName']?></label> </div>
               				  
				<?php $query3="select * from tbl_speciality_details where SpecialistId='".$vb1['SpecialistId']."'";
				foreach($con->query($query3) as $a) { ?>
              <div class="10u$"><label> <?php echo $a['Specialist']?></label></div>
              <?php } ?>
              <div class="10u$"><label><?php echo $vb1['Experience']?> </label></div>
                            
           <?php /*?>   <?php $query4="select * from tbl_city_details where CityId='".$vb1['CityId']."' ";
				foreach($con->query($query4) as $a1) { ?>
              <div class="10u$">City Name : <label><?php echo $a1['CityName']?></label></div>
             <?php } ?><?php */?>
             
              <?php /*?><?php $query5="select * from tbl_location_details where LocationId='".$vb1['LocationId']."' ";
				foreach($con->query($query5) as $a2) { ?>
              <div class="10u$">Location Name :<label><?php echo $a2['LocationName']?></label></div>
             <?php } ?><?php */?>
             <?php /*?><div class="10u$">Contact Number : <label><?php echo $vb1['ContactNo']?></label></div> <?php */?> 
             <div class="10u$"><label><?php echo $vb1['Practice']?></label></div>   
             <div class="10u$"><label><?php echo $vb1['Qualification']?></label></div>
               </div>     
              <div  style="text-align:left; float:right; margin-right:15px;">
       <?php /*?>       <div class="6u 12u$(xsmall)" style="margin-top:10px;"><label><?php echo $vb1['Address']?></label></div>
              <div class="6u 12u$(xsmall)">INR:<label><?php echo $vb1['ConsultingCharge']?></label></div>
               <?php  $query3="select * from tbl_doctor_consulting_details where DoctorId='".$vb1['DoctorId']."'";
              foreach($con->query($query3) as $vb)
              {
			  if($vb['FromTime']!="") {
			  if($vb['FromTime']!="close") {
			   ?>
              <div class="6u 12u$(xsmall)"> <label><?php echo $vb['ConsultingDay']?>
              &nbsp;<?php echo $vb['FromTime']?>&nbsp; -
             <?php echo $vb['ToTime']?> </label></div>
              <?php } } }?>  <?php */?>     
        </div>
          </div>
          <div><hr></div>
     <div><a href="AboutDoctor.php?id=<?php echo $vb1['DoctorId']?>" style="color:#009F55; font-size:16px;">About</a>&nbsp;&nbsp;&nbsp;<a href="DoctorGallery.php?id=<?php echo $vb1['DoctorId']?>">Image Gallery</a></div>
      <div><?php echo $vb1['About']?></div>
          <?php } ?>
           <div style="margin:auto; width:130px; float:right;">
           <br>
           <input type="button" onClick="window.location.href='SearchDoctor.php'" value="Back" style="text-align:center; width:130px; height:30px; margin-top:10px;"/></div>
                        
             </div></div>
			</div>
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

</body>
</html>
 
			
                                
