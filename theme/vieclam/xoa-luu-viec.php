<?php 
	if (isset($_GET['trang'])) {
		$id = $_GET['trang'];
		$sql = "DELETE FROM luu_viec WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
		header('location: /viec-da-luu');
	}
?>