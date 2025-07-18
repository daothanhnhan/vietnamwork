<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	$sql = "SELECT * FROM tu_dong_lam_moi_hang_ngay_phu WHERE id = $id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$state = $row['state'];
	$soluong = $row['soluong'];
	if ($state == 0) {
		$tu_dong_lam_moi_hang_ngay_id = $row['tu_dong_lam_moi_hang_ngay_id'];
		$sql = "SELECT * FROM tu_dong_lam_moi_hang_ngay WHERE id = $tu_dong_lam_moi_hang_ngay_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		$now = gmdate('Y-m-d');
		$end = $row['date_end_hn'];

		if ($now > $end) {
			$ngay_start = $now;
			$so_ngan = 7 * $soluong;
			$ngay_end = gmdate('Y-m-d', strtotime("+$so_ngan days"));

			$sql = "UPDATE tu_dong_lam_moi_hang_ngay SET date_start_hn = '$ngay_start', date_end_hn = '$ngay_end' WHERE id = $tu_dong_lam_moi_hang_ngay_id";
			$result = mysqli_query($conn_vn, $sql);
		} else {
			$so_ngan = 7 * $soluong;
			$date = strtotime("+$so_ngan days", strtotime($end));
			$ngay_end = date("Y-m-d", $date);

			$sql = "UPDATE tu_dong_lam_moi_hang_ngay SET date_end_hn = '$ngay_end' WHERE id = $tu_dong_lam_moi_hang_ngay_id";
			$result = mysqli_query($conn_vn, $sql);
		}

		$sql = "UPDATE tu_dong_lam_moi_hang_ngay_phu SET state = 1 WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
	}
?>