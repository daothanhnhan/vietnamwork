<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	// $id = explode(",", $id);

	$sql = "SELECT * FROM street WHERE district_id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$rows = array();
	$num = mysqli_num_rows($result);
	if ($num > 0) {
		while ($row = mysqli_fetch_assoc($result)) {
			echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
		}
	} else {
		echo '<option value="0">No result</option>';
	}
?>