<?php
/**
* 
*/
include_once "functions/library.php";
include_once "functions/pagination/Pagination.php";
class action_work extends library{

	public function tat_ca_viec_lam ($trang, $limit) {
		global $conn_vn;
		$now = gmdate('Y-m-d');
		$sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now'";

		$result = mysqli_query($conn_vn, $sql);
		$rows = array();
		$total_record = mysqli_num_rows($result);

		$slug = 'tat-ca-viec-lam';
		$config = array(

            'current_page'=> $trang != "" ? $trang : 1,

            'total_record'=> $total_record,

            'limit' => $limit,

            'link_full'=> $slug != '' ? '/'.$slug.'/{trang}' : 'index.php?page='.$page.$cond.'&trang={trang}',

            'link_first'=> $slug != '' ? '/'.$slug : 'index.php?page='.$page.$cond,

            // 'link_full'=> $slug != '' ? $slug.'/'.$page.$cond.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            // 'link_full'=> $slug != '' ? $slug.'/{trang}' : '/'.$page.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            'range'=> 5

        );

        $paging = new Pagination();

        $paging->init($config);

        $start = $paging->_config['start'];

        $limit = $paging->_config['limit'];

        $sql .= " ORDER BY don_tuyen.ngay desc limit $start, $limit";
        // echo $sql;
        $result = mysqli_query($conn_vn,$sql);

        while($row = mysqli_fetch_array($result)){

            $rows[] = $row;

        }

        $p = $paging->htmlPaging();

        $rows1 = array("data"=>$rows, "paging"=>$p);

        return $rows1;
	}

    public function tat_ca_viec_lam_kut ($trang, $limit) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id WHERE date_start_dtd > '$now' OR date_end_dtd < '$now'";

        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $total_record = mysqli_num_rows($result);

        $slug = 'tat-ca-viec-lam';
        $config = array(

            'current_page'=> $trang != "" ? $trang : 1,

            'total_record'=> $total_record,

            'limit' => $limit,

            'link_full'=> $slug != '' ? '/'.$slug.'/{trang}' : 'index.php?page='.$page.$cond.'&trang={trang}',

            'link_first'=> $slug != '' ? '/'.$slug : 'index.php?page='.$page.$cond,

            // 'link_full'=> $slug != '' ? $slug.'/'.$page.$cond.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            // 'link_full'=> $slug != '' ? $slug.'/{trang}' : '/'.$page.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            'range'=> 5

        );

        $paging = new Pagination();

        $paging->init($config);

        $start = $paging->_config['start'];

        $limit = $paging->_config['limit'];

        $sql .= " ORDER BY don_tuyen.ngay desc limit $start, $limit";
        // echo $sql;
        $result = mysqli_query($conn_vn,$sql);

        while($row = mysqli_fetch_array($result)){

            $rows[] = $row;

        }

        $p = $paging->htmlPaging();

        $rows1 = array("data"=>$rows, "paging"=>$p);

        return $rows1;
    }

    public function theo_nganh_nghe_ut ($trang, $limit, $id) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id INNER JOIN uu_tien_nganh_nghe ON dang_tuyen_dung.id = uu_tien_nganh_nghe.dang_tuyen_dung_id INNER JOIN gia_tang_uu_tien ON dang_tuyen_dung.id = gia_tang_uu_tien.dang_tuyen_dung_id WHERE ((career_id = $id AND date_start_ut <= '$now' AND date_end_ut >= '$now') OR (career like '%$id%' AND date_start_gtut <= '$now' AND date_end_gtut >= '$now')) AND date_start_dtd <= '$now' AND date_end_dtd >= '$now'";
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $total_record = mysqli_num_rows($result);

        $slug = 'viec-lam-theo-nganh-nghe';
        $config = array(

            'current_page'=> $trang != "" ? $trang : 1,

            'total_record'=> $total_record,

            'limit' => $limit,

            'link_full'=> $slug != '' ? '/'.$slug.'/{trang}/'.$id : 'index.php?page='.$page.$cond.'&trang={trang}',

            'link_first'=> $slug != '' ? '/'.$slug.'/1/'.$id : 'index.php?page='.$page.$cond,

            // 'link_full'=> $slug != '' ? $slug.'/'.$page.$cond.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            // 'link_full'=> $slug != '' ? $slug.'/{trang}' : '/'.$page.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            'range'=> 5

        );

        $paging = new Pagination();

        $paging->init($config);

        $start = $paging->_config['start'];

        $limit = $paging->_config['limit'];

        $sql .= " ORDER BY don_tuyen.ngay desc limit $start, $limit";
        // echo $sql;
        $result = mysqli_query($conn_vn,$sql);

        while($row = mysqli_fetch_array($result)){

            $rows[] = $row;

        }

        $p = $paging->htmlPaging();

        $rows1 = array("data"=>$rows, "paging"=>$p);

        return $rows1;
    }

    public function theo_nganh_nghe_kut ($trang, $limit, $id) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        // $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id INNER JOIN uu_tien_nganh_nghe ON dang_tuyen_dung.id = uu_tien_nganh_nghe.dang_tuyen_dung_id INNER JOIN gia_tang_uu_tien ON dang_tuyen_dung.id = gia_tang_uu_tien.dang_tuyen_dung_id WHERE ((career_id = $id AND (date_start_ut > '$now' OR date_end_ut < '$now')) AND (career like '%$id%' AND (date_start_gtut > '$now' OR date_end_gtut < '$now'))) AND date_start_dtd <= '$now' AND date_end_dtd >= '$now'";
        // $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id INNER JOIN uu_tien_nganh_nghe ON dang_tuyen_dung.id = uu_tien_nganh_nghe.dang_tuyen_dung_id INNER JOIN gia_tang_uu_tien ON dang_tuyen_dung.id = gia_tang_uu_tien.dang_tuyen_dung_id WHERE (career like '%$id%' AND (date_start_gtut > '$now' OR date_end_gtut < '$now')) AND date_start_dtd <= '$now' AND date_end_dtd >= '$now'";
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id INNER JOIN uu_tien_nganh_nghe ON dang_tuyen_dung.id = uu_tien_nganh_nghe.dang_tuyen_dung_id INNER JOIN gia_tang_uu_tien ON dang_tuyen_dung.id = gia_tang_uu_tien.dang_tuyen_dung_id WHERE (career like '%$id%' AND (date_start_gtut > '$now' OR date_end_gtut < '$now')) AND date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND uu_tien_nganh_nghe.id IN (SELECT id FROM uu_tien_nganh_nghe WHERE career_id != $id UNION SELECT id FROM uu_tien_nganh_nghe WHERE career_id = $id AND (date_start_ut > '$now' OR date_end_ut < '$now'))";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $total_record = mysqli_num_rows($result);

        $slug = 'viec-lam-theo-nganh-nghe';
        $config = array(

            'current_page'=> $trang != "" ? $trang : 1,

            'total_record'=> $total_record,

            'limit' => $limit,

            'link_full'=> $slug != '' ? '/'.$slug.'/{trang}/'.$id : 'index.php?page='.$page.$cond.'&trang={trang}',

            'link_first'=> $slug != '' ? '/'.$slug.'/1/'.$id : 'index.php?page='.$page.$cond,

            // 'link_full'=> $slug != '' ? $slug.'/'.$page.$cond.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            // 'link_full'=> $slug != '' ? $slug.'/{trang}' : '/'.$page.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            'range'=> 5

        );

        $paging = new Pagination();

        $paging->init($config);

        $start = $paging->_config['start'];

        $limit = $paging->_config['limit'];

        $sql .= " ORDER BY don_tuyen.ngay desc limit $start, $limit";
        // echo $sql;
        $result = mysqli_query($conn_vn,$sql);

        while($row = mysqli_fetch_array($result)){

            $rows[] = $row;

        }

        $p = $paging->htmlPaging();

        $rows1 = array("data"=>$rows, "paging"=>$p);

        return $rows1;
    }

    public function check_damdo ($don_tuyen_id) {
        global $conn_vn;
        $sql = "SELECT * FROM dang_tuyen_dung WHERE don_tuyen_id = $don_tuyen_id";//echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        $dang_tuyen_dung_id = $row['id'];

        $sql = "SELECT * FROM gia_tang_do_dam_do WHERE dang_tuyen_dung_id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        
        $now = gmdate('Y-m-d');
        if ($now >= $row['date_start'] && $now <= $row['date_end']) {
            return true;
        } else {
            return false;
        }
    }

    public function set_hang_tuan () {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id INNER JOIN tu_dong_lam_moi_hang_tuan ON dang_tuyen_dung.id = tu_dong_lam_moi_hang_tuan.dang_tuyen_dung_id WHERE ngay != '$now' AND date_start_ht <= '$now' AND date_end_ht >= '$now'";
        // echo $sql;
        $ngay_now = gmdate('d');//echo $ngay_now;
        if ($ngay_now == 7 || $ngay_now == 14 || $ngay_now == 21) {
            $result = mysqli_query($conn_vn, $sql);
            while ($row = mysqli_fetch_assoc($result)) {
                $don_tuyen_id = $row['don_tuyen_id'];
                $sql = "UPDATE don_tuyen SET ngay = '$now' WHERE id = $don_tuyen_id";
                $result_dt = mysqli_query($conn_vn, $sql);
            }
        }
    }

    public function set_hang_ngay () {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id INNER JOIN tu_dong_lam_moi_hang_ngay ON dang_tuyen_dung.id = tu_dong_lam_moi_hang_ngay.dang_tuyen_dung_id WHERE ngay != '$now' AND date_start_hn <= '$now' AND date_end_hn >= '$now'";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        while ($row = mysqli_fetch_assoc($result)) {
            $don_tuyen_id = $row['don_tuyen_id'];
            $sql = "UPDATE don_tuyen SET ngay = '$now' WHERE id = $don_tuyen_id";
            $result_dt = mysqli_query($conn_vn, $sql);
        }
    }

    public function viec_lam_cap_quan_ly ($trang, $limit) {
        global $conn_vn;
        // date_default_timezone_set("Asia/Ho_Chi_Minh");
        // echo gmdate('Y-m-d', strtotime('+2 days'));
        $now = gmdate('Y-m-d');//echo $now;
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id INNER JOIN viec_lam_cap_quan_ly ON dang_tuyen_dung.id = viec_lam_cap_quan_ly.dang_tuyen_dung_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND date_start_ql <= '$now' AND date_end_ql >= '$now'";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $total_record = mysqli_num_rows($result);

        $slug = 'viec-lam-cap-quan-ly';
        $config = array(

            'current_page'=> $trang != "" ? $trang : 1,

            'total_record'=> $total_record,

            'limit' => $limit,

            'link_full'=> $slug != '' ? '/'.$slug.'/{trang}' : 'index.php?page='.$page.$cond.'&trang={trang}',

            'link_first'=> $slug != '' ? '/'.$slug : 'index.php?page='.$page.$cond,

            // 'link_full'=> $slug != '' ? $slug.'/'.$page.$cond.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            // 'link_full'=> $slug != '' ? $slug.'/{trang}' : '/'.$page.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            'range'=> 5

        );

        $paging = new Pagination();

        $paging->init($config);

        $start = $paging->_config['start'];

        $limit = $paging->_config['limit'];

        $sql .= " ORDER BY don_tuyen.ngay desc limit $start, $limit";
        // echo $sql;
        $result = mysqli_query($conn_vn,$sql);

        while($row = mysqli_fetch_array($result)){

            $rows[] = $row;

        }

        $p = $paging->htmlPaging();

        $rows1 = array("data"=>$rows, "paging"=>$p);

        return $rows1;
    }

    public function viec_lam_trang_chu () {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id INNER JOIN viec_lam_trang_chu ON dang_tuyen_dung.id = viec_lam_trang_chu.dang_tuyen_dung_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND date_start_tc <= '$now' AND date_end_tc >= '$now' ORDER BY don_tuyen.ngay desc";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        return $rows;
    }

    public function lam_moi_tin () {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id INNER JOIN lam_moi_tin ON dang_tuyen_dung.id = lam_moi_tin.dang_tuyen_dung_id WHERE ngay != '$now' AND date_start_lmt <= '$now' AND date_end_lmt >= '$now'";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        while ($row = mysqli_fetch_assoc($result)) {
            $don_tuyen_id = $row['don_tuyen_id'];
            $sql = "UPDATE don_tuyen SET ngay = '$now' WHERE id = $don_tuyen_id";
            $result_dt = mysqli_query($conn_vn, $sql);
        }
    }

    public function viec_lam_thu_hut ($don_tuyen_id) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id INNER JOIN viec_lam_thu_hut ON dang_tuyen_dung.id = viec_lam_thu_hut.dang_tuyen_dung_id WHERE date_start_th <= '$now' AND date_end_th >= '$now' AND don_tuyen_id = $don_tuyen_id";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            return false;
        } else {
            return true;
        }
    }

    public function search_ungvien ($trang, $limit) {
        global $conn_vn;
            $q = $_GET['q'];
            $q = vi_en1($q);
            $sql = "SELECT * FROM ung_vien WHERE alias LIKE '%$q%'";
            // echo $sql;
            $result = mysqli_query($conn_vn, $sql);
            $rows = array();
            $total_record = mysqli_num_rows($result);
            $slug = '';
            $page = 'tim-kiem-ung-vien';
            $cond = '&q='.$q;
            $config = array(

                'current_page'=> $trang != "" ? $trang : 1,

                'total_record'=> $total_record,

                'limit' => $limit,

                'link_full'=> $slug != '' ? '/'.$slug.'/{trang}' : '/index.php?page='.$page.$cond.'&trang={trang}',

                'link_first'=> $slug != '' ? '/'.$slug : '/index.php?page='.$page.$cond,

                // 'link_full'=> $slug != '' ? $slug.'/'.$page.$cond.'/{trang}',

                // 'link_first'=> $slug != '' ? $slug : '/'.$page,

                // 'link_full'=> $slug != '' ? $slug.'/{trang}' : '/'.$page.'/{trang}',

                // 'link_first'=> $slug != '' ? $slug : '/'.$page,

                'range'=> 5

            );

            $paging = new Pagination();

            $paging->init($config);

            $start = $paging->_config['start'];

            $limit = $paging->_config['limit'];

            $sql .= " ORDER BY id desc limit $start, $limit";
            // echo $sql;
            $result = mysqli_query($conn_vn,$sql);

            while($row = mysqli_fetch_array($result)){

                $rows[] = $row;

            }

            $p = $paging->htmlPaging();

            $rows1 = array("data"=>$rows, "paging"=>$p);

            return $rows1;


        
    }

    function show_info_timkiem ($nha_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM tim_kiem_ung_vien WHERE nha_tuyen_dung_id = $nha_tuyen_dung_id";//echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        return $row;
    }

    function down_diem ($nha_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM tim_kiem_ung_vien WHERE nha_tuyen_dung_id = $nha_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        $diem = $row['diem'];
        $diem--;

        $sql = "UPDATE tim_kiem_ung_vien SET diem = $diem WHERE nha_tuyen_dung_id = $nha_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
    }

    function check_timkiem ($nha_tuyen_dung_id) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM tim_kiem_ung_vien WHERE nha_tuyen_dung_id = $nha_tuyen_dung_id AND diem > 0 AND date_start_tk <= '$now' AND date_end_tk >= '$now'";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num == 0) {
            return false;
        } else {
            return true;
        }
    }

    function dang_tuyen_dung ($don_tuyen_id) {
        global $conn_vn;
        $sql = "SELECT * FROM dang_tuyen_dung WHERE don_tuyen_id = $don_tuyen_id";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        return $row;
    }

    public function theo_dia_diem ($trang, $limit, $id) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND don_tuyen.city like '%$id%'";
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $total_record = mysqli_num_rows($result);

        $slug = 'viec-lam-theo-dia-diem';
        $config = array(

            'current_page'=> $trang != "" ? $trang : 1,

            'total_record'=> $total_record,

            'limit' => $limit,

            'link_full'=> $slug != '' ? '/'.$slug.'/{trang}/'.$id : 'index.php?page='.$page.$cond.'&trang={trang}',

            'link_first'=> $slug != '' ? '/'.$slug.'/1/'.$id : 'index.php?page='.$page.$cond,

            // 'link_full'=> $slug != '' ? $slug.'/'.$page.$cond.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            // 'link_full'=> $slug != '' ? $slug.'/{trang}' : '/'.$page.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            'range'=> 5

        );

        $paging = new Pagination();

        $paging->init($config);

        $start = $paging->_config['start'];

        $limit = $paging->_config['limit'];

        $sql .= " ORDER BY don_tuyen.ngay desc limit $start, $limit";
        // echo $sql;
        $result = mysqli_query($conn_vn,$sql);

        while($row = mysqli_fetch_array($result)){

            $rows[] = $row;

        }

        $p = $paging->htmlPaging();

        $rows1 = array("data"=>$rows, "paging"=>$p);

        return $rows1;
    }

    public function viec_lam_it ($trang, $limit) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND it = 1";

        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $total_record = mysqli_num_rows($result);

        $slug = 'viec-lam-nganh-it';
        $config = array(

            'current_page'=> $trang != "" ? $trang : 1,

            'total_record'=> $total_record,

            'limit' => $limit,

            'link_full'=> $slug != '' ? '/'.$slug.'/{trang}' : 'index.php?page='.$page.$cond.'&trang={trang}',

            'link_first'=> $slug != '' ? '/'.$slug : 'index.php?page='.$page.$cond,

            // 'link_full'=> $slug != '' ? $slug.'/'.$page.$cond.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            // 'link_full'=> $slug != '' ? $slug.'/{trang}' : '/'.$page.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            'range'=> 5

        );

        $paging = new Pagination();

        $paging->init($config);

        $start = $paging->_config['start'];

        $limit = $paging->_config['limit'];

        $sql .= " ORDER BY don_tuyen.ngay desc limit $start, $limit";
        // echo $sql;
        $result = mysqli_query($conn_vn,$sql);

        while($row = mysqli_fetch_array($result)){

            $rows[] = $row;

        }

        $p = $paging->htmlPaging();

        $rows1 = array("data"=>$rows, "paging"=>$p);

        return $rows1;
    }

    public function moi_tot_nghiep ($trang, $limit) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND cap_bac = 1";

        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $total_record = mysqli_num_rows($result);

        $slug = 'moi-tot-nghiep';
        $config = array(

            'current_page'=> $trang != "" ? $trang : 1,

            'total_record'=> $total_record,

            'limit' => $limit,

            'link_full'=> $slug != '' ? '/'.$slug.'/{trang}' : 'index.php?page='.$page.$cond.'&trang={trang}',

            'link_first'=> $slug != '' ? '/'.$slug : 'index.php?page='.$page.$cond,

            // 'link_full'=> $slug != '' ? $slug.'/'.$page.$cond.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            // 'link_full'=> $slug != '' ? $slug.'/{trang}' : '/'.$page.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            'range'=> 5

        );

        $paging = new Pagination();

        $paging->init($config);

        $start = $paging->_config['start'];

        $limit = $paging->_config['limit'];

        $sql .= " ORDER BY don_tuyen.ngay desc limit $start, $limit";
        // echo $sql;
        $result = mysqli_query($conn_vn,$sql);

        while($row = mysqli_fetch_array($result)){

            $rows[] = $row;

        }

        $p = $paging->htmlPaging();

        $rows1 = array("data"=>$rows, "paging"=>$p);

        return $rows1;
    }

    public function count_quanly () {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id INNER JOIN viec_lam_cap_quan_ly ON dang_tuyen_dung.id = viec_lam_cap_quan_ly.dang_tuyen_dung_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND date_start_ql <= '$now' AND date_end_ql >= '$now'";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $total_record = mysqli_num_rows($result);
        return $total_record;
    }

    public function count_it () {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND it = 1";

        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $total_record = mysqli_num_rows($result);
        return $total_record;
    }

    public function count_totnghiep () {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND cap_bac = 1";

        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $total_record = mysqli_num_rows($result);
        return $total_record;
    }

    public function get_quan ($id) {
        global $conn_vn;
        $id = implode(",", $id);
        $sql = "SELECT * FROM district WHERE city_id in ($id)";
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        return $rows;
    }

    public function get_duong ($id) {
        global $conn_vn;
        $sql = "SELECT * FROM street WHERE district_id = $id";//echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        
        return $rows;
    }

    public function tim_kiem ($trang, $limit) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now'";
        
        $cond = '';
        if (isset($_GET['name'])) {
            $name = $_GET['name'];
            $name = str_replace(" ", "-", $name);
            $sql .= " AND alias LIKE '%$name%'";
            $cond .= "&name=$name";
        }

        if (isset($_GET['career']) && $_GET['career'] != 0) {
            $career = $_GET['career'];
            $sql .= " AND career LIKE '%$career%'";
            $cond .= "&career=$career";
        }

        if (isset($_GET['cap_bac']) && $_GET['cap_bac'] != 0) {
            $cap_bac = $_GET['cap_bac'];
            $sql .= " AND cap_bac = $cap_bac";
            $cond .= "&cap_bac=$cap_bac";
        }

        if (isset($_GET['city']) && $_GET['city'] != 0) {
            $city = $_GET['city'];
            $sql .= " AND city LIKE '%$city%'";
            $cond .= "&city=$city";
        }

        if (isset($_GET['district']) && $_GET['district'] != 0) {
            $district = $_GET['district'];
            $sql .= " AND district = $district";
            $cond .= "&district=$district";
        }

        if (isset($_GET['street']) && $_GET['street'] != 0) {
            $street = $_GET['street'];
            $sql .= " AND street = $street";
            $cond .= "&street=$street";
        }

        if (isset($_GET['salary']) && $_GET['salary'] != '0') {
            $salary = explode("-", $_GET['salary']);
            $money1 = $salary[0];
            $money2 = $salary[1];
            $sql .= " AND salary1 >= $money1 AND salary2 <= $money2";
            $cond .= "&salary=".$_GET['salary'];
        }
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $total_record = mysqli_num_rows($result);

        $slug = '';
        $page = 'tim-kiem';
        $config = array(

            'current_page'=> $trang != "" ? $trang : 1,

            'total_record'=> $total_record,

            'limit' => $limit,

            'link_full'=> $slug != '' ? '/'.$slug.'/{trang}' : '/index.php?page='.$page.$cond.'&trang={trang}',

            'link_first'=> $slug != '' ? '/'.$slug : '/index.php?page='.$page.$cond,

            // 'link_full'=> $slug != '' ? $slug.'/'.$page.$cond.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            // 'link_full'=> $slug != '' ? $slug.'/{trang}' : '/'.$page.'/{trang}',

            // 'link_first'=> $slug != '' ? $slug : '/'.$page,

            'range'=> 5

        );

        $paging = new Pagination();

        $paging->init($config);

        $start = $paging->_config['start'];

        $limit = $paging->_config['limit'];

        $sql .= " ORDER BY don_tuyen.ngay desc limit $start, $limit";
        // echo $sql;
        $result = mysqli_query($conn_vn,$sql);

        while($row = mysqli_fetch_array($result)){

            $rows[] = $row;

        }

        $p = $paging->htmlPaging();

        $rows1 = array("data"=>$rows, "paging"=>$p);

        return $rows1;
    }

    public function viec_lam_khac ($nha_tuyen_dung_id) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND nha_tuyen_dung_id = $nha_tuyen_dung_id ORDER BY don_tuyen.ngay DESC";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $rows[] = $row;
        }
        return $rows;
    }

    public function count_views ($id) {
        global $conn_vn;
        $sql = "SELECT * FROM don_tuyen WHERE id = $id";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        $views = $row['views'] + 1;

        $sql = "UPDATE don_tuyen SET views = $views WHERE id = $id";
        $result = mysqli_query($conn_vn, $sql);
    }

    public function viec_lam_related ($id, $limit) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND (1=0";
        $id = json_decode($id);
        foreach ($id as $item) {
            $sql .= " OR career like '%$item%'";
        }
        $sql .= ") ORDER BY don_tuyen.ngay DESC LIMIT $limit";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        return $rows;
    }

    public function banner_home ($limit) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM nha_tuyen_dung INNER JOIN banner_trang_chu ON nha_tuyen_dung.id = banner_trang_chu.nha_tuyen_dung_id WHERE date_start_b1 <= '$now' AND date_end_b1 >= '$now' ORDER BY nha_tuyen_dung.id DESC LIMIT $limit";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        return $rows;
    }

    public function get_img_don_tuyen ($nha_tuyen_dung_id) {
        global $conn_vn;
        $sql = "SELECT * FROM don_tuyen WHERE nha_tuyen_dung_id = $nha_tuyen_dung_id LIMIT 1";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            $row = mysqli_fetch_assoc($result);
            return $row['image'];
        } else {
            return 'nophoto/no_image.jpg';
        }
    }

    public function don_nha_tuyen_dung ($id) {
        global $conn_vn;
        $now = gmdate('Y-m-d');
        $sql = "SELECT * FROM don_tuyen INNER JOIN dang_tuyen_dung ON don_tuyen.id = dang_tuyen_dung.don_tuyen_id WHERE date_start_dtd <= '$now' AND date_end_dtd >= '$now' AND nha_tuyen_dung_id = $id ORDER BY don_tuyen.ngay desc";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        return $rows;
    }

    public function check_nhatuyen_hot ($id) {
        global $conn_vn;
        $sql = "SELECT * FROM nha_tuyen_hot WHERE nha_tuyen_dung_id = $id";//echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function ung_vien_nop_don ($nha_tuyen_dung_id, $trang, $limit) {
        global $conn_vn;
        $sql = "SELECT * FROM don_tuyen WHERE nha_tuyen_dung_id = $nha_tuyen_dung_id";//echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row['id'];
            }
            $don_tuyen_id_arr = implode(",", $rows);
            $sql = "SELECT * FROM nop_don WHERE don_tuyen_id in ($don_tuyen_id_arr)";//echo $sql;
            $result = mysqli_query($conn_vn, $sql);
            $rows1 = array();
            $total_record = mysqli_num_rows($result);
            // if ($num1 > 0) {
            //     while ($row1 = mysqli_fetch_assoc($result)) {
            //         $rows1[] = $row1;
            //     }
            // }
            $slug = 'ung-vien-nop-don';
            $config = array(

                'current_page'=> $trang != "" ? $trang : 1,

                'total_record'=> $total_record,

                'limit' => $limit,

                'link_full'=> $slug != '' ? '/'.$slug.'/{trang}' : 'index.php?page='.$page.$cond.'&trang={trang}',

                'link_first'=> $slug != '' ? '/'.$slug : 'index.php?page='.$page.$cond,

                // 'link_full'=> $slug != '' ? $slug.'/'.$page.$cond.'/{trang}',

                // 'link_first'=> $slug != '' ? $slug : '/'.$page,

                // 'link_full'=> $slug != '' ? $slug.'/{trang}' : '/'.$page.'/{trang}',

                // 'link_first'=> $slug != '' ? $slug : '/'.$page,

                'range'=> 5

            );

            $paging = new Pagination();

            $paging->init($config);

            $start = $paging->_config['start'];

            $limit = $paging->_config['limit'];

            $sql .= " ORDER BY id desc limit $start, $limit";
            // echo $sql;
            $result = mysqli_query($conn_vn,$sql);

            while($row1 = mysqli_fetch_array($result)){

                $rows1[] = $row1;

            }

            $p = $paging->htmlPaging();

            $rows2 = array("data"=>$rows1, "paging"=>$p);

            return $rows2;

        } else {
            $return = array("data"=>$rows, "paging"=>"");
            return $return;
        }
    }

    public function viec_ung_tuyen ($ung_vien_id) {
        global $conn_vn;
        $sql = "SELECT * FROM nop_don WHERE ung_vien_id = $ung_vien_id ORDER BY id DESC";
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        return $rows;
    }

    public function viec_da_luu ($ung_vien_id) {
        global $conn_vn;
        $sql = "SELECT * FROM luu_viec WHERE ung_vien_id = $ung_vien_id ORDER BY id DESC";
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        return $rows;
    }

    public function tieu_diem () {
        global $conn_vn;
        $sql = "SELECT * FROM nha_tuyen_hot WHERE state = 1 ORDER BY id desc LIMIT 1";
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            $row = mysqli_fetch_assoc($result);
            return $row;
        } else {
            $array = array();
            return $array;
        }
    }

    public function check_quanly ($don_tuyen_id) {
        global $conn_vn;
        $sql = "SELECT * FROM dang_tuyen_dung WHERE don_tuyen_id = $don_tuyen_id";//echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        $dang_tuyen_dung_id = $row['id'];

        $sql = "SELECT * FROM viec_lam_cap_quan_ly WHERE dang_tuyen_dung_id = $dang_tuyen_dung_id";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        
        $now = gmdate('Y-m-d');
        if ($now >= $row['date_start_ql'] && $now <= $row['date_end_ql']) {
            return true;
        } else {
            return false;
        }
    }

    public function don_moi ($don_tuyen_id) {
        global $conn_vn;
        $sql = "SELECT * FROM don_tuyen WHERE id = $don_tuyen_id";//echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        $ngay = $row['ngay'];
        $now = gmdate('Y-m-d');
        if ($now == $ngay) {
            return ' <span style="color:red;font-style:italic;">(Mới)</span>';
        } else {
            return '';
        }
    }
}