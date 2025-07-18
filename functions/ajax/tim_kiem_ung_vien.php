<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	$sql = "SELECT * FROM tim_kiem_ung_vien_phu WHERE id = $id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$state = $row['state'];
	$soluong = $row['soluong'];
	if ($state == 0) {
		$tim_kiem_ung_vien_id = $row['tim_kiem_ung_vien_id'];
		$sql = "SELECT * FROM tim_kiem_ung_vien WHERE id = $tim_kiem_ung_vien_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		$now = gmdate('Y-m-d');
		$end = $row['date_end_tk'];
		$diem = $row['diem'];

		if ($now > $end) {
			$ngay_start = $now;
			if ($soluong == 1) {
				$so_ngay = 30;
				$cong = 100;
			} elseif ($soluong == 2) {
				$so_ngay = 30 * 3;
				$cong = 300;
			} elseif ($soluong == 3) {
				$so_ngay = 30 * 6;
				$cong = 600;
			} else {
				$so_ngay = 30 * 12;
				$cong = 1200;
			}

			$diem = $diem + $cong;
			$ngay_end = gmdate('Y-m-d', strtotime("+$so_ngay days"));

			$sql = "UPDATE tim_kiem_ung_vien SET date_start_tk = '$ngay_start', date_end_tk = '$ngay_end', diem = $diem WHERE id = $tim_kiem_ung_vien_id";
			$result = mysqli_query($conn_vn, $sql);
		} else {
			if ($soluong == 1) {
				$so_ngay = 30;
				$cong = 100;
			} elseif ($soluong == 2) {
				$so_ngay = 30 * 3;
				$cong = 300;
			} elseif ($soluong == 3) {
				$so_ngay = 30 * 6;
				$cong = 600;
			} else {
				$so_ngay = 30 * 12;
				$cong = 1200;
			}

			$date = strtotime("+$so_ngay days", strtotime($end));
			$ngay_end = date("Y-m-d", $date);
			$diem = $diem + $cong;

			$sql = "UPDATE tim_kiem_ung_vien SET date_end_tk = '$ngay_end', diem = $diem WHERE id = $tim_kiem_ung_vien_id";
			$result = mysqli_query($conn_vn, $sql);
		}

		$sql = "UPDATE tim_kiem_ung_vien_phu SET state = 1 WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
	}
?>