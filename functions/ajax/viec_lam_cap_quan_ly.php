<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	$sql = "SELECT * FROM viec_lam_cap_quan_ly_phu WHERE id = $id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$state = $row['state'];
	$soluong = $row['soluong'];
	if ($state == 0) {
		$viec_lam_cap_quan_ly_id = $row['viec_lam_cap_quan_ly_id'];
		$sql = "SELECT * FROM viec_lam_cap_quan_ly WHERE id = $viec_lam_cap_quan_ly_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		$now = gmdate('Y-m-d');
		$end = $row['date_end_ql'];

		if ($now > $end) {
			$ngay_start = $now;
			$so_ngan = 30 * $soluong;
			$ngay_end = gmdate('Y-m-d', strtotime("+$so_ngan days"));

			$sql = "UPDATE viec_lam_cap_quan_ly SET date_start_ql = '$ngay_start', date_end_ql = '$ngay_end' WHERE id = $viec_lam_cap_quan_ly_id";
			$result = mysqli_query($conn_vn, $sql);
		} else {
			$so_ngan = 30 * $soluong;
			$date = strtotime("+$so_ngan days", strtotime($end));
			$ngay_end = date("Y-m-d", $date);

			$sql = "UPDATE viec_lam_cap_quan_ly SET date_end_ql = '$ngay_end' WHERE id = $viec_lam_cap_quan_ly_id";
			$result = mysqli_query($conn_vn, $sql);
		}

		$sql = "UPDATE viec_lam_cap_quan_ly_phu SET state = 1 WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
	}
?>