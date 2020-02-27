<?php
$user="root";
$server="localhost";
$password="";
$database="uasprogram";

$rumah=mysqli_connect($server,$user,$password);
if($rumah){
	echo 'Database Berhasil Terhubung'.",&nbsp";
}else{
	echo 'Cek Lagi !!';
}
$db=mysqli_select_db($rumah,$database);
if($db){
	echo 'DB Berhasil Terhubung'.",&nbsp";
}else{
	echo 'Cek Lagi !!';
	
}


?>