<?php 
	session_start();
	$quantity = $_GET['quantity'];
	$_SESSION['cac_goi']['service_package_'.$_GET['id']]['quantity'] = $_GET['quantity'];

	$price = $_SESSION['cac_goi']['service_package_'.$_GET['id']]['price'];

	
	if ($quantity == 3 || $quantity == 4) {
		$price = $price*$quantity*0.9;
	} elseif ($quantity >=5 && $quantity <= 9) {
		$price = $price*$quantity*0.85;
	} elseif ($quantity >= 10) {
		$price = $price*$quantity*0.8;
	} else {
		$price = $price*$quantity;
	}

	echo number_format($price,0,',','.').'đ';
?>