<?php 
	session_start();
	unset($_SESSION['cac_goi']['service_package_'.$_GET['id']]);
	// unset($_SESSION['service_package_'.$_GET['id']]);
?>