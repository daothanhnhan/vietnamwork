<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	$career = $_GET['career'];

	$sql = "UPDATE uu_tien_nganh_nghe SET career_id = $career WHERE id = $id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);

	$sql = "SELECT * FROM career WHERE id = $career";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	echo $row['name'];
?>