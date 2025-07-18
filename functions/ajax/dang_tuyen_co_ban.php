<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	$sql = "SELECT * FROM dang_tuyen_co_ban WHERE id = $id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$state = $row['state'];
	$soluong = $row['soluong'];
	if ($state == 0) {
		$dang_tuyen_dung_id = $row['dang_tuyen_dung_id'];
		$sql = "SELECT * FROM dang_tuyen_dung WHERE id = $dang_tuyen_dung_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		$now = gmdate('Y-m-d');
		$end = $row['date_end_dtd'];

		if ($now > $end) {
			$ngay_start = $now;
			$so_ngan = 30 * $soluong;
			$ngay_end = gmdate('Y-m-d', strtotime("+$so_ngan days"));

			$sql = "UPDATE dang_tuyen_dung SET date_start_dtd = '$ngay_start', date_end_dtd = '$ngay_end' WHERE id = $dang_tuyen_dung_id";
			$result = mysqli_query($conn_vn, $sql);
		} else {
			$so_ngan = 30 * $soluong;
			$date = strtotime("+$so_ngan days", strtotime($end));
			$ngay_end = date("Y-m-d", $date);

			$sql = "UPDATE dang_tuyen_dung SET date_end_dtd = '$ngay_end' WHERE id = $dang_tuyen_dung_id";
			$result = mysqli_query($conn_vn, $sql);
		}

		$sql = "UPDATE dang_tuyen_co_ban SET state = 1 WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
	}
?>