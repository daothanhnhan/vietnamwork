<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM banner WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=banner');
?>