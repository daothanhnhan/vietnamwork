<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	$sql = "SELECT * FROM gia_tang_do_dam_do_phu WHERE id = $id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$state = $row['state'];
	$soluong = $row['soluong'];
	if ($state == 0) {
		$gia_tang_do_dam_do_id = $row['gia_tang_do_dam_do_id'];
		$sql = "SELECT * FROM gia_tang_do_dam_do WHERE id = $gia_tang_do_dam_do_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		$now = gmdate('Y-m-d');
		$end = $row['date_end'];

		if ($now > $end) {
			$ngay_start = $now;
			$so_ngan = 30 * $soluong;
			$ngay_end = gmdate('Y-m-d', strtotime("+$so_ngan days"));

			$sql = "UPDATE gia_tang_do_dam_do SET date_start = '$ngay_start', date_end = '$ngay_end' WHERE id = $gia_tang_do_dam_do_id";
			$result = mysqli_query($conn_vn, $sql);
		} else {
			$so_ngan = 30 * $soluong;
			$date = strtotime("+$so_ngan days", strtotime($end));
			$ngay_end = date("Y-m-d", $date);

			$sql = "UPDATE gia_tang_do_dam_do SET date_end = '$ngay_end' WHERE id = $gia_tang_do_dam_do_id";
			$result = mysqli_query($conn_vn, $sql);
		}

		$sql = "UPDATE gia_tang_do_dam_do_phu SET state = 1 WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
	}
?>