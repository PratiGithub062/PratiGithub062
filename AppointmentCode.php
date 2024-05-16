<?php 
include'connection.php';


$con->beginTransaction();
$query="insert into tbl_appointment_details (Pname,Paddress,Pcontact,PEmail,PAdate,PAtime,DoctorName,Remark) values(?,?,?,?,?,?,?,?)";
$res=$con->prepare($query);

$data=array($_POST['name'],$_POST['address'],$_POST['contact'],$_POST['email'],$_POST['appdate'],$_POST['time'],$_POST['doctor'],$_POST['remark']);
//print_r($data);
//exit;
$success=$res->execute($data);

if($success==true)
{
	$con->commit();
	$_SESSION['successmessage']="Appointment fixed successfully.";
	             session_write_close();
				 header ('location:SearchDoctor.php');
				 exit; }
				 else{
	$con->rollback();
	 $_SESSION['errormessage']="Try again .";
	             session_write_close();
				 header ('location:SearchDoctor.php');
				 exit;
	}
	

?>