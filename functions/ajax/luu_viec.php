<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	if (!isset($_SESSION['user_id_uv_gbvn'])) {
		echo 'Bạn chưa đăng nhập.';die;
	}
	$don_tuyen_id = $_GET['don_tuyen_id'];
	$ung_vien_id = $_SESSION['user_id_uv_gbvn'];
	$sql = "SELECT * FROM luu_viec WHERE don_tuyen_id = $don_tuyen_id AND ung_vien_id = $ung_vien_id";
	$result = mysqli_query($conn_vn, $sql);
	$num = mysqli_num_rows($result);
	if ($num > 0) {
		echo 'Bạn đã lưu việc rồi.';die;
	}

	$sql = "INSERT INTO luu_viec (don_tuyen_id, ung_vien_id) VALUES ($don_tuyen_id, $ung_vien_id)";
	$result = mysqli_query($conn_vn, $sql);
	echo 'Bạn đã lưu việc thành công.';
?>