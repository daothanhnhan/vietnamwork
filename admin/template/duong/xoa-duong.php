<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM street WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: /admin/index.php?page=duong');
?>