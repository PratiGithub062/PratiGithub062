<?php
include 'connection.php';

$cnt=0;
$query12="select count(*) as cnt from tbl_admin where Name='".$_POST['username']."' and Password='".$_POST['password']."'";
foreach($con->query($query12) as $vb)
         {
           $cnt=$vb['cnt'];
          }
		  
	if($cnt>0)	
	{  
$aid=0;

$query="select UserId from tbl_admin where Name='".$_POST['username']."' and Password='".$_POST['password']."'";
foreach($con->query($query) as $var){
	
	$aid=$var['UserId'];
	$_SESSION['aid']=$aid;
	//print_r($_SESSION['aid']);
//exit;
}

if($aid >0){
	            
	            header('Location:admin1/AdminHome.php');
               
}
}
else{
            $_SESSION['errormessage']="Incorrect User Name or Password.";
	             session_write_close();
				 header('Location:AdminLogin.php');
				 exit;
}
?>