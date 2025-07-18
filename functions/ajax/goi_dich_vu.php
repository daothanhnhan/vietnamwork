<?php 
	session_start();
	$_SESSION['cac_goi']['service_package_'.$_GET['id']] = array(
													'price' => $_GET['price'],
													'quantity' => 1
												);
?>