<?php 
	session_start();
	if (isset($_SESSION['cac_goi']['service_package_11'])) {
		$_SESSION['cac_goi']['service_package_11'] = array(
													'price' => $_GET['price'],
													'quantity' => $_GET['quantity']
												);
	}
	
?>