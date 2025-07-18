<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM goi_dich_vu WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=goi-dich-vu');
?>