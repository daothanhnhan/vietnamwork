<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	$sql = "SELECT * FROM lam_moi_tin_phu WHERE id = $id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$state = $row['state'];
	$soluong = $row['soluong'];
	if ($state == 0) {
		$lam_moi_tin_id = $row['lam_moi_tin_id'];
		$sql = "SELECT * FROM lam_moi_tin WHERE id = $lam_moi_tin_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		$now = gmdate('Y-m-d');
		$end = $row['date_end_lmt'];

		if ($now > $end) {
			$ngay_start = $now;
			$so_ngan = (1 * $soluong) + 1;
			$ngay_end = gmdate('Y-m-d', strtotime("+$so_ngan days"));

			$sql = "UPDATE lam_moi_tin SET date_start_lmt = '$ngay_start', date_end_lmt = '$ngay_end' WHERE id = $lam_moi_tin_id";
			$result = mysqli_query($conn_vn, $sql);
		} else {
			$so_ngan = 1 * $soluong;
			$date = strtotime("+$so_ngan days", strtotime($end));
			$ngay_end = date("Y-m-d", $date);

			$sql = "UPDATE lam_moi_tin SET date_end_lmt = '$ngay_end' WHERE id = $lam_moi_tin_id";
			$result = mysqli_query($conn_vn, $sql);
		}

		$sql = "UPDATE lam_moi_tin_phu SET state = 1 WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
	}
?>