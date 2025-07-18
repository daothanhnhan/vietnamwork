<?php 
	include_once dirname(__FILE__) . "/../database.php";
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

    function get_career ($dang_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM dang_tuyen_dung WHERE id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        $don_tuyen_id = $row['don_tuyen_id'];

        $sql = "SELECT * FROM don_tuyen WHERE id = $don_tuyen_id";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        $career = $row['career'];
        $career = json_decode($career);

        return $career[0];
    }

    function dang_tuyen_dung ($don_tuyen_id) {
    	global $conn_vn;
    	$sql = "SELECT * FROM dang_tuyen_dung WHERE don_tuyen_id = $don_tuyen_id";
    	$result = mysqli_query($conn_vn, $sql);
    	$num = mysqli_num_rows($result);
    	if ($num == 0) {
    		$sql = "INSERT INTO dang_tuyen_dung (don_tuyen_id, date_start_dtd, date_end_dtd) VALUES ($don_tuyen_id, '0000-00-00', '0000-00-00')";
    		$result = mysqli_query($conn_vn, $sql);
    		$id = mysqli_insert_id($conn_vn);

            uu_tien_nganh_nghe($id);
            gia_tang_uu_tien($id);
            
    		return $id;
    	} else {
    		$row = mysqli_fetch_assoc($result);
    		return $row['id'];
    	}
    }

    function don_hang () {
    	global $conn_vn;
    	$total = 0;
    	foreach ($_SESSION['cac_goi'] as $k => $item) {
            if ($k == 'service_package_11') {
                $total += gia_goi_tk($item['price'], $item['quantity']);
            } else {
                $total += gia_goi($item['price'], $item['quantity']);
            }
    		// $total += gia_goi($item['price'], $item['quantity']);
    	}
    	$vat = $total*1.1;
        $ngay = gmdate('Y-m-d');
        $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
    	$sql = "INSERT INTO don_hang (total, vat, ngay, nha_tuyen_dung_id) VALUES ($total, $vat, '$ngay', $nha_tuyen_dung_id)";
    	$result = mysqli_query($conn_vn, $sql);
    	$id = mysqli_insert_id($conn_vn);
    	return $id;
    }

    function dang_tuyen_co_ban ($dang_tuyen_dung_id, $don_hang_id) {
    	global $conn_vn;
    	if (isset($_SESSION['cac_goi']['service_package_1'])) {
    		$nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
    		$gia = $_SESSION['cac_goi']['service_package_1']['price'];
    		$soluong = $_SESSION['cac_goi']['service_package_1']['quantity'];
    		$total = gia_goi($gia, $soluong);
    		$vat = $total*1.1;
    		$ngay_mua = gmdate('Y-m-d');
    		$sql = "INSERT INTO dang_tuyen_co_ban (nha_tuyen_dung_id, dang_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($nha_tuyen_dung_id, $dang_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
    		$result = mysqli_query($conn_vn, $sql);
    	}
    }

    function uu_tien_nganh_nghe ($dang_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM uu_tien_nganh_nghe WHERE dang_tuyen_dung_id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            $career_id = get_career($dang_tuyen_dung_id);
            $sql = "INSERT INTO uu_tien_nganh_nghe (dang_tuyen_dung_id, date_start_ut, date_end_ut, career_id) VALUES ($dang_tuyen_dung_id, '000-00-00', '0000-00-00', $career_id)";
            $result = mysqli_query($conn_vn, $sql);
            $id = mysqli_insert_id($conn_vn);
            return $id;
        } else {
            $row = mysqli_fetch_assoc($result);
            return $row['id'];
        }
    }

    function uu_tien_nganh_nghe_phu ($dang_tuyen_dung_id, $don_hang_id) {
        global $conn_vn;
        $uu_tien_nganh_nghe_id = uu_tien_nganh_nghe($dang_tuyen_dung_id);
        if (isset($_SESSION['cac_goi']['service_package_2'])) {
            $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
            $gia = $_SESSION['cac_goi']['service_package_2']['price'];
            $soluong = $_SESSION['cac_goi']['service_package_2']['quantity'];
            $total = gia_goi($gia, $soluong);
            $vat = $total*1.1;
            $ngay_mua = gmdate('Y-m-d');
            $sql = "INSERT INTO uu_tien_nganh_nghe_phu (uu_tien_nganh_nghe_id, nha_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($uu_tien_nganh_nghe_id, $nha_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
            $result = mysqli_query($conn_vn, $sql);
        }
    }

    function gia_tang_do_dam_do ($dang_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM gia_tang_do_dam_do WHERE dang_tuyen_dung_id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            $sql = "INSERT INTO gia_tang_do_dam_do (dang_tuyen_dung_id, date_start, date_end) VALUES ($dang_tuyen_dung_id, '000-00-00', '0000-00-00')";
            $result = mysqli_query($conn_vn, $sql);
            $id = mysqli_insert_id($conn_vn);
            return $id;
        } else {
            $row = mysqli_fetch_assoc($result);
            return $row['id'];
        }
    }

    function gia_tang_do_dam_do_phu ($dang_tuyen_dung_id, $don_hang_id) {
        global $conn_vn;
        $gia_tang_do_dam_do_id = gia_tang_do_dam_do($dang_tuyen_dung_id);
        if (isset($_SESSION['cac_goi']['service_package_3'])) {
            $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
            $gia = $_SESSION['cac_goi']['service_package_3']['price'];
            $soluong = $_SESSION['cac_goi']['service_package_3']['quantity'];
            $total = gia_goi($gia, $soluong);
            $vat = $total*1.1;
            $ngay_mua = gmdate('Y-m-d');
            $sql = "INSERT INTO gia_tang_do_dam_do_phu (gia_tang_do_dam_do_id, nha_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($gia_tang_do_dam_do_id, $nha_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
            $result = mysqli_query($conn_vn, $sql);
        }
    }

    function gia_tang_uu_tien ($dang_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM gia_tang_uu_tien WHERE dang_tuyen_dung_id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            $sql = "INSERT INTO gia_tang_uu_tien (dang_tuyen_dung_id, date_start_gtut, date_end_gtut) VALUES ($dang_tuyen_dung_id, '000-00-00', '0000-00-00')";
            $result = mysqli_query($conn_vn, $sql);
            $id = mysqli_insert_id($conn_vn);
            return $id;
        } else {
            $row = mysqli_fetch_assoc($result);
            return $row['id'];
        }
    }

    function gia_tang_uu_tien_phu ($dang_tuyen_dung_id, $don_hang_id) {
        global $conn_vn;
        $gia_tang_uu_tien_id = gia_tang_uu_tien($dang_tuyen_dung_id);
        if (isset($_SESSION['cac_goi']['service_package_4'])) {
            $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
            $gia = $_SESSION['cac_goi']['service_package_4']['price'];
            $soluong = $_SESSION['cac_goi']['service_package_4']['quantity'];
            $total = gia_goi($gia, $soluong);
            $vat = $total*1.1;
            $ngay_mua = gmdate('Y-m-d');
            $sql = "INSERT INTO gia_tang_uu_tien_phu (gia_tang_uu_tien_id, nha_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($gia_tang_uu_tien_id, $nha_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
            $result = mysqli_query($conn_vn, $sql);
        }
    }

    function tu_dong_lam_moi_hang_tuan ($dang_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM tu_dong_lam_moi_hang_tuan WHERE dang_tuyen_dung_id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            $sql = "INSERT INTO tu_dong_lam_moi_hang_tuan (dang_tuyen_dung_id, date_start_ht, date_end_ht) VALUES ($dang_tuyen_dung_id, '000-00-00', '0000-00-00')";
            $result = mysqli_query($conn_vn, $sql);
            $id = mysqli_insert_id($conn_vn);
            return $id;
        } else {
            $row = mysqli_fetch_assoc($result);
            return $row['id'];
        }
    }

    function tu_dong_lam_moi_hang_tuan_phu ($dang_tuyen_dung_id, $don_hang_id) {
        global $conn_vn;
        $tu_dong_lam_moi_hang_tuan_id = tu_dong_lam_moi_hang_tuan($dang_tuyen_dung_id);
        if (isset($_SESSION['cac_goi']['service_package_5'])) {
            $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
            $gia = $_SESSION['cac_goi']['service_package_5']['price'];
            $soluong = $_SESSION['cac_goi']['service_package_5']['quantity'];
            $total = gia_goi($gia, $soluong);
            $vat = $total*1.1;
            $ngay_mua = gmdate('Y-m-d');
            $sql = "INSERT INTO tu_dong_lam_moi_hang_tuan_phu (tu_dong_lam_moi_hang_tuan_id, nha_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($tu_dong_lam_moi_hang_tuan_id, $nha_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
            $result = mysqli_query($conn_vn, $sql);
        }
    }

    function tu_dong_lam_moi_hang_ngay ($dang_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM tu_dong_lam_moi_hang_ngay WHERE dang_tuyen_dung_id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            $sql = "INSERT INTO tu_dong_lam_moi_hang_ngay (dang_tuyen_dung_id, date_start_hn, date_end_hn) VALUES ($dang_tuyen_dung_id, '000-00-00', '0000-00-00')";
            $result = mysqli_query($conn_vn, $sql);
            $id = mysqli_insert_id($conn_vn);
            return $id;
        } else {
            $row = mysqli_fetch_assoc($result);
            return $row['id'];
        }
    }

    function tu_dong_lam_moi_hang_ngay_phu ($dang_tuyen_dung_id, $don_hang_id) {
        global $conn_vn;
        $tu_dong_lam_moi_hang_ngay_id = tu_dong_lam_moi_hang_ngay($dang_tuyen_dung_id);
        if (isset($_SESSION['cac_goi']['service_package_6'])) {
            $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
            $gia = $_SESSION['cac_goi']['service_package_6']['price'];
            $soluong = $_SESSION['cac_goi']['service_package_6']['quantity'];
            $total = gia_goi($gia, $soluong);
            $vat = $total*1.1;
            $ngay_mua = gmdate('Y-m-d');
            $sql = "INSERT INTO tu_dong_lam_moi_hang_ngay_phu (tu_dong_lam_moi_hang_ngay_id, nha_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($tu_dong_lam_moi_hang_ngay_id, $nha_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
            $result = mysqli_query($conn_vn, $sql);
        }
    }

    function viec_lam_cap_quan_ly ($dang_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM viec_lam_cap_quan_ly WHERE dang_tuyen_dung_id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            $sql = "INSERT INTO viec_lam_cap_quan_ly (dang_tuyen_dung_id, date_start_ql, date_end_ql) VALUES ($dang_tuyen_dung_id, '000-00-00', '0000-00-00')";
            $result = mysqli_query($conn_vn, $sql);
            $id = mysqli_insert_id($conn_vn);
            return $id;
        } else {
            $row = mysqli_fetch_assoc($result);
            return $row['id'];
        }
    }

    function viec_lam_cap_quan_ly_phu ($dang_tuyen_dung_id, $don_hang_id) {
        global $conn_vn;
        $viec_lam_cap_quan_ly_id = viec_lam_cap_quan_ly($dang_tuyen_dung_id);
        if (isset($_SESSION['cac_goi']['service_package_7'])) {
            $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
            $gia = $_SESSION['cac_goi']['service_package_7']['price'];
            $soluong = $_SESSION['cac_goi']['service_package_7']['quantity'];
            $total = gia_goi($gia, $soluong);
            $vat = $total*1.1;
            $ngay_mua = gmdate('Y-m-d');
            $sql = "INSERT INTO viec_lam_cap_quan_ly_phu (viec_lam_cap_quan_ly_id, nha_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($viec_lam_cap_quan_ly_id, $nha_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
            $result = mysqli_query($conn_vn, $sql);
        }
    }

    function viec_lam_trang_chu ($dang_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM viec_lam_trang_chu WHERE dang_tuyen_dung_id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            $sql = "INSERT INTO viec_lam_trang_chu (dang_tuyen_dung_id, date_start_tc, date_end_tc) VALUES ($dang_tuyen_dung_id, '000-00-00', '0000-00-00')";
            $result = mysqli_query($conn_vn, $sql);
            $id = mysqli_insert_id($conn_vn);
            return $id;
        } else {
            $row = mysqli_fetch_assoc($result);
            return $row['id'];
        }
    }

    function viec_lam_trang_chu_phu ($dang_tuyen_dung_id, $don_hang_id) {
        global $conn_vn;
        $viec_lam_trang_chu_id = viec_lam_trang_chu($dang_tuyen_dung_id);
        if (isset($_SESSION['cac_goi']['service_package_8'])) {
            $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
            $gia = $_SESSION['cac_goi']['service_package_8']['price'];
            $soluong = $_SESSION['cac_goi']['service_package_8']['quantity'];
            $total = gia_goi($gia, $soluong);
            $vat = $total*1.1;
            $ngay_mua = gmdate('Y-m-d');
            $sql = "INSERT INTO viec_lam_trang_chu_phu (viec_lam_trang_chu_id, nha_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($viec_lam_trang_chu_id, $nha_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
            $result = mysqli_query($conn_vn, $sql);
        }
    }

    function lam_moi_tin ($dang_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM lam_moi_tin WHERE dang_tuyen_dung_id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            $sql = "INSERT INTO lam_moi_tin (dang_tuyen_dung_id, date_start_lmt, date_end_lmt) VALUES ($dang_tuyen_dung_id, '000-00-00', '0000-00-00')";
            $result = mysqli_query($conn_vn, $sql);
            $id = mysqli_insert_id($conn_vn);
            return $id;
        } else {
            $row = mysqli_fetch_assoc($result);
            return $row['id'];
        }
    }

    function lam_moi_tin_phu ($dang_tuyen_dung_id, $don_hang_id) {
        global $conn_vn;
        $lam_moi_tin_id = lam_moi_tin($dang_tuyen_dung_id);
        if (isset($_SESSION['cac_goi']['service_package_9'])) {
            $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
            $gia = $_SESSION['cac_goi']['service_package_9']['price'];
            $soluong = $_SESSION['cac_goi']['service_package_9']['quantity'];
            $total = gia_goi($gia, $soluong);
            $vat = $total*1.1;
            $ngay_mua = gmdate('Y-m-d');
            $sql = "INSERT INTO lam_moi_tin_phu (lam_moi_tin_id, nha_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($lam_moi_tin_id, $nha_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
            $result = mysqli_query($conn_vn, $sql);
        }
    }

    function viec_lam_thu_hut ($dang_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM viec_lam_thu_hut WHERE dang_tuyen_dung_id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            $sql = "INSERT INTO viec_lam_thu_hut (dang_tuyen_dung_id, date_start_th, date_end_th) VALUES ($dang_tuyen_dung_id, '000-00-00', '0000-00-00')";
            $result = mysqli_query($conn_vn, $sql);
            $id = mysqli_insert_id($conn_vn);
            return $id;
        } else {
            $row = mysqli_fetch_assoc($result);
            return $row['id'];
        }
    }

    function viec_lam_thu_hut_phu ($dang_tuyen_dung_id, $don_hang_id) {
        global $conn_vn;
        $viec_lam_thu_hut_id = viec_lam_thu_hut($dang_tuyen_dung_id);
        if (isset($_SESSION['cac_goi']['service_package_10'])) {
            $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
            $gia = $_SESSION['cac_goi']['service_package_10']['price'];
            $soluong = $_SESSION['cac_goi']['service_package_10']['quantity'];
            $total = gia_goi($gia, $soluong);
            $vat = $total*1.1;
            $ngay_mua = gmdate('Y-m-d');
            $sql = "INSERT INTO viec_lam_thu_hut_phu (viec_lam_thu_hut_id, nha_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($viec_lam_thu_hut_id, $nha_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
            $result = mysqli_query($conn_vn, $sql);
        }
    }

    function tim_kiem_ung_vien ($don_tuyen_id) {
        global $conn_vn;
        $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
        $sql = "SELECT * FROM tim_kiem_ung_vien WHERE nha_tuyen_dung_id = $nha_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            
            $sql = "INSERT INTO tim_kiem_ung_vien (nha_tuyen_dung_id, date_start_tk, date_end_tk, diem) VALUES ($nha_tuyen_dung_id, '0000-00-00', '0000-00-00', 0)";
            $result = mysqli_query($conn_vn, $sql);
            $id = mysqli_insert_id($conn_vn);
            
            return $id;
        } else {
            $row = mysqli_fetch_assoc($result);
            return $row['id'];
        }
    }

    function tim_kiem_ung_vien_phu ($tim_kiem_ung_vien_id, $don_hang_id) {
        global $conn_vn;
        // $viec_lam_thu_hut_id = tim_kiem_ung_vien($dang_tuyen_dung_id);
        if (isset($_SESSION['cac_goi']['service_package_11'])) {
            $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
            $gia = $_SESSION['cac_goi']['service_package_11']['price'];
            $soluong = $_SESSION['cac_goi']['service_package_11']['quantity'];
            $total = gia_goi_tk($gia, $soluong);
            $vat = $total*1.1;
            $ngay_mua = gmdate('Y-m-d');
            $sql = "INSERT INTO tim_kiem_ung_vien_phu (tim_kiem_ung_vien_id, nha_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($tim_kiem_ung_vien_id, $nha_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
            $result = mysqli_query($conn_vn, $sql);
        }
    }

    function banner_trang_chu () {
        global $conn_vn;
        $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
        $sql = "SELECT * FROM banner_trang_chu WHERE nha_tuyen_dung_id = $nha_tuyen_dung_id";//echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            
            $sql = "INSERT INTO banner_trang_chu (nha_tuyen_dung_id, date_start_b1, date_end_b1) VALUES ($nha_tuyen_dung_id, '0000-00-00', '0000-00-00')";
            // echo $sql;
            $result = mysqli_query($conn_vn, $sql);
            $id = mysqli_insert_id($conn_vn);
            
            return $id;
        } else {
            $row = mysqli_fetch_assoc($result);
            return $row['id'];
        }
    }

    function banner_trang_chu_phu ($banner_trang_chu_id, $don_hang_id) {
        global $conn_vn;
        // $viec_lam_thu_hut_id = tim_kiem_ung_vien($dang_tuyen_dung_id);
        if (isset($_SESSION['cac_goi']['service_package_12'])) {
            $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
            $gia = $_SESSION['cac_goi']['service_package_12']['price'];
            $soluong = $_SESSION['cac_goi']['service_package_12']['quantity'];
            $total = gia_goi($gia, $soluong);
            $vat = $total*1.1;
            $ngay_mua = gmdate('Y-m-d');
            $sql = "INSERT INTO banner_trang_chu_phu (banner_trang_chu_id, nha_tuyen_dung_id, don_hang_id, ngay_mua, gia, soluong, tong_tien, vat, state) VALUES ($banner_trang_chu_id, $nha_tuyen_dung_id, $don_hang_id, '$ngay_mua', $gia, $soluong, $total, $vat, 0)";
            $result = mysqli_query($conn_vn, $sql);
        }
    }

	session_start();
	if (!isset($_SESSION['user_id_ntd_gbvn'])) {
		echo 'login';die;
	}
	if (!isset($_SESSION['don_tuyen_gbvn'])) {
		echo 'don_tuyen';die;
	}
	if (!isset($_SESSION['cac_goi'])) {
		echo 'Bạn chưa chọn dịch vụ';
	} else {
		$count = count($_SESSION['cac_goi']);
		if ($count == 0) {
			echo 'Bạn chưa chọn dịch vụ';
		} else {
			echo 'ok';
			// bảng đăng tuyển dụng
            $dang_tuyen_dung_id = dang_tuyen_dung($_SESSION['don_tuyen_gbvn']);
            $tim_kiem_ung_vien_id = tim_kiem_ung_vien($_SESSION['don_tuyen_gbvn']);
			$banner_trang_chu_id = banner_trang_chu();
			$don_hang_id = don_hang();
			dang_tuyen_co_ban($dang_tuyen_dung_id, $don_hang_id);
            uu_tien_nganh_nghe_phu($dang_tuyen_dung_id, $don_hang_id);
            gia_tang_do_dam_do_phu($dang_tuyen_dung_id, $don_hang_id);
            gia_tang_uu_tien_phu($dang_tuyen_dung_id, $don_hang_id);
            tu_dong_lam_moi_hang_tuan_phu($dang_tuyen_dung_id, $don_hang_id);
            tu_dong_lam_moi_hang_ngay_phu($dang_tuyen_dung_id, $don_hang_id);
            viec_lam_cap_quan_ly_phu($dang_tuyen_dung_id, $don_hang_id);
            viec_lam_trang_chu_phu($dang_tuyen_dung_id, $don_hang_id);
            lam_moi_tin_phu($dang_tuyen_dung_id, $don_hang_id);
            viec_lam_thu_hut_phu($dang_tuyen_dung_id, $don_hang_id);

            tim_kiem_ung_vien_phu($tim_kiem_ung_vien_id, $don_hang_id);
            banner_trang_chu_phu($banner_trang_chu_id, $don_hang_id);
			unset($_SESSION['cac_goi']);
		}
	}
?>