<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	$sql = "SELECT * FROM banner_trang_chu_phu WHERE id = $id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$state = $row['state'];
	$soluong = $row['soluong'];
	if ($state == 0) {
		$banner_trang_chu_id = $row['banner_trang_chu_id'];
		$sql = "SELECT * FROM banner_trang_chu WHERE id = $banner_trang_chu_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		$now = gmdate('Y-m-d');
		$end = $row['date_end_b1'];

		if ($now > $end) {
			$ngay_start = $now;
			$so_ngan = 15 * $soluong;
			$ngay_end = gmdate('Y-m-d', strtotime("+$so_ngan days"));

			$sql = "UPDATE banner_trang_chu SET date_start_b1 = '$ngay_start', date_end_b1 = '$ngay_end' WHERE id = $banner_trang_chu_id";
			$result = mysqli_query($conn_vn, $sql);
		} else {
			$so_ngan = 15 * $soluong;
			$date = strtotime("+$so_ngan days", strtotime($end));
			$ngay_end = date("Y-m-d", $date);

			$sql = "UPDATE banner_trang_chu SET date_end_b1 = '$ngay_end' WHERE id = $banner_trang_chu_id";
			$result = mysqli_query($conn_vn, $sql);
		}

		$sql = "UPDATE banner_trang_chu_phu SET state = 1 WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
	}
?>