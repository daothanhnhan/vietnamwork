<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$city_id = $_GET['city_id'];
	$sql = "SELECT * FROM district WHERE city_id = $city_id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$rows = array();
	$quan = '';
	$num = mysqli_num_rows($result);
	if ($num >0) {
		while ($row = mysqli_fetch_assoc($result)) {
			$quan .= '<option value="'.$row['id'].'">'.$row['name'].'</option>';
		}
	}
	echo $quan;
?>