<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	$sql = "SELECT * FROM nha_tuyen_hot WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$state = $row['state'];
	if ($state == 1) {
		$state = 0;
	} else {
		$state = 1;
	}

	$sql = "UPDATE nha_tuyen_hot SET state = $state WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
?>