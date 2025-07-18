<?php 
	session_start();

	function gia_goi ($price, $quantity) {
        if ($quantity == 3 || $quantity == 4) {
            $price = $price*$quantity*0.9;
        } elseif ($quantity >=5 && $quantity <= 9) {
            $price = $price*$quantity*0.85;
        } elseif ($quantity >= 10) {
            $price = $price*$quantity*0.8;
        } else {
            $price = $price*$quantity;
        }

        return $price;
    }

    function gia_goi_tk ($price, $quantity) {
        if ($quantity == 1) {
            $gia = $price;
        } elseif ($quantity == 2) {
            $gia = $price*3*0.85;
        } elseif ($quantity == 3) {
            $gia = $price*6*0.8;
        } else {
            $gia = $price*12*0.75;
        }
        return $gia;
    }

    $tong = 0;
	if (isset($_SESSION['cac_goi'])) {
		foreach ($_SESSION['cac_goi'] as $k => $item) {
            if ($k == 'service_package_11') {
                $tong += gia_goi_tk($item['price'], $item['quantity']);
            } else {
                $tong += gia_goi($item['price'], $item['quantity']);
            }
			
		}
	} else {

	}
	echo number_format($tong*1.1, 0, ',', '.');
?>