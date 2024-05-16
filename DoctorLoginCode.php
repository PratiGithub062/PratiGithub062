<?php
include 'connection.php';

$cnt=0;
$query12="select count(*) as cnt from tbl_doctor_details where EmailId='".$_POST['username']."' and Password='".$_POST['password']."'";
foreach($con->query($query12) as $vb)
         {
           $cnt=$vb['cnt'];
          }
		  
	if($cnt>0)	
	{  
$did=0;

$query="select DoctorId from tbl_doctor_details where EmailId='".$_POST['username']."' and Password='".$_POST['password']."'";
foreach($con->query($query) as $var){
	
	$did=$var['DoctorId'];
	$_SESSION['did']=$did;
	//print_r($_SESSION['did']);
//exit;
}

if($did >0){
	
	header('Location:doctor/DoctorHome.php');

}
}
else{
           $_SESSION['errormessage']="Incorrect Email Id or Password.";
	             session_write_close();
				 header('Location:DoctorLogin.php');
				 exit;
}
?>