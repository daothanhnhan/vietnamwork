<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	$sql = "SELECT * FROM uu_tien_nganh_nghe_phu WHERE id = $id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$state = $row['state'];
	$soluong = $row['soluong'];
	if ($state == 0) {
		$uu_tien_nganh_nghe_id = $row['uu_tien_nganh_nghe_id'];
		$sql = "SELECT * FROM uu_tien_nganh_nghe WHERE id = $uu_tien_nganh_nghe_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		$now = gmdate('Y-m-d');
		$end = $row['date_end_ut'];

		if ($now > $end) {
			$ngay_start = $now;
			$so_ngan = 15 * $soluong;
			$ngay_end = gmdate('Y-m-d', strtotime("+$so_ngan days"));

			$sql = "UPDATE uu_tien_nganh_nghe SET date_start_ut = '$ngay_start', date_end_ut = '$ngay_end' WHERE id = $uu_tien_nganh_nghe_id";
			$result = mysqli_query($conn_vn, $sql);
		} else {
			$so_ngan = 15 * $soluong;
			$date = strtotime("+$so_ngan days", strtotime($end));
			$ngay_end = date("Y-m-d", $date);

			$sql = "UPDATE uu_tien_nganh_nghe SET date_end_ut = '$ngay_end' WHERE id = $uu_tien_nganh_nghe_id";
			$result = mysqli_query($conn_vn, $sql);
		}

		$sql = "UPDATE uu_tien_nganh_nghe_phu SET state = 1 WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
	}
?>