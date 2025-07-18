<?php
    $rows = $acc->getList("dang_tuyen_co_ban","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
    $utnn = $acc->getList("uu_tien_nganh_nghe_phu","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
    $gtddd = $acc->getList("gia_tang_do_dam_do_phu","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
    $gtut = $acc->getList("gia_tang_uu_tien_phu","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
    $tdlmht = $acc->getList("tu_dong_lam_moi_hang_tuan_phu","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
    $tdlmhn = $acc->getList("tu_dong_lam_moi_hang_ngay_phu","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
    $vlcql = $acc->getList("viec_lam_cap_quan_ly_phu","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
    $vltc = $acc->getList("viec_lam_trang_chu_phu","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
    $lmt = $acc->getList("lam_moi_tin_phu","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
    $vlth = $acc->getList("viec_lam_thu_hut_phu","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
    $tkuv = $acc->getList("tim_kiem_ung_vien_phu","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
    $bntc = $acc->getList("banner_trang_chu_phu","don_hang_id",$_GET['id'],"id","asc",$trang, 2000, "sua-don-hang");
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

    function don_tuyen ($id) {
        global $conn_vn;
        $sql = "SELECT * FROM dang_tuyen_dung WHERE id = $id";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        $don_tuyen_id = $row['don_tuyen_id'];

        $sql = "SELECT * FROM don_tuyen WHERE id = $don_tuyen_id";//echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);//var_dump($row);
        return $row['name'];
    }

?>	
    <div class="boxPageNews">
        <!-- <h1><a href="index.php?page=them-thuong-hieu">Thêm</a></h1> -->
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Tên dịch vụ</th>
                    <th>Tên đơn tuyển</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Tổng tiền</th>
                    <th>Có VAT</th>
                    <th>Kích hoạt</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        $dontuyen = don_tuyen($row['dang_tuyen_dung_id']);
                    ?>
                        <tr>
                            <td>Đăng tuyển cơ bản</td>
                            <td><?= $dontuyen ?></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])) ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="dtcb(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-dtcb&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
                <?php 
                    $d = 0;
                    foreach ($utnn['data'] as $row) {
                        $d++;
                        $get_utnn = $action->getDetail('uu_tien_nganh_nghe', 'id', $row['uu_tien_nganh_nghe_id']);
                        $dontuyen = don_tuyen($get_utnn['dang_tuyen_dung_id']);
                    ?>
                        <tr>
                            <td>Ưu tiên ngành nghề</td>
                            <td><?= $dontuyen ?></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])) ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="utnn(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-utnn&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
                <?php 
                    $d = 0;
                    foreach ($gtddd['data'] as $row) {
                        $d++;
                        $get_gtddd = $action->getDetail('gia_tang_do_dam_do', 'id', $row['gia_tang_do_dam_do_id']);
                        $dontuyen = don_tuyen($get_gtddd['dang_tuyen_dung_id']);
                    ?>
                        <tr>
                            <td>Gia tăng đổ đậm đỏ</td>
                            <td><?= $dontuyen ?></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])) ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="gtddd(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-gtddd&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
                <?php 
                    $d = 0;
                    foreach ($gtut['data'] as $row) {
                        $d++;
                        $get_gtutng = $action->getDetail('gia_tang_uu_tien', 'id', $row['gia_tang_uu_tien_id']);
                        $dontuyen = don_tuyen($get_gtutng['dang_tuyen_dung_id']);
                    ?>
                        <tr>
                            <td>Gia tăng ưu tiên ngành nghề</td>
                            <td><?= $dontuyen ?></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])) ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="gtut(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-gtut&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
                <?php 
                    $d = 0;
                    foreach ($tdlmht['data'] as $row) {
                        $d++;
                        $get_tdlmht = $action->getDetail('tu_dong_lam_moi_hang_tuan', 'id', $row['tu_dong_lam_moi_hang_tuan_id']);
                        $dontuyen = don_tuyen($get_tdlmht['dang_tuyen_dung_id']);
                    ?>
                        <tr>
                            <td>Tự động làm mới tin tuyển dụng hàng tuần</td>
                            <td><?= $dontuyen ?></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])) ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="tdlmht(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-tdlmht&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
                <?php 
                    $d = 0;
                    foreach ($tdlmhn['data'] as $row) {
                        $d++;
                        $get_tdlmhn = $action->getDetail('tu_dong_lam_moi_hang_ngay', 'id', $row['tu_dong_lam_moi_hang_ngay_id']);
                        $dontuyen = don_tuyen($get_tdlmhn['dang_tuyen_dung_id']);
                    ?>
                        <tr>
                            <td>Tự động làm mới tin tuyển dụng hàng ngày</td>
                            <td><?= $dontuyen ?></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])) ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="tdlmhn(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-tdlmhn&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
                <?php 
                    $d = 0;
                    foreach ($vlcql['data'] as $row) {
                        $d++;
                        $get_vlcql = $action->getDetail('viec_lam_cap_quan_ly', 'id', $row['viec_lam_cap_quan_ly_id']);
                        $dontuyen = don_tuyen($get_vlcql['dang_tuyen_dung_id']);
                    ?>
                        <tr>
                            <td>Việc làm cấp quản lý</td>
                            <td><?= $dontuyen ?></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])) ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="vlcql(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-vlcql&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
                <?php 
                    $d = 0;
                    foreach ($vltc['data'] as $row) {
                        $d++;
                        $get_vlttc = $action->getDetail('viec_lam_trang_chu', 'id', $row['viec_lam_trang_chu_id']);
                        $dontuyen = don_tuyen($get_vlttc['dang_tuyen_dung_id']);
                    ?>
                        <tr>
                            <td>Việc làm trên trang chủ</td>
                            <td><?= $dontuyen ?></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])) ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="vltc(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-vltc&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
                <?php 
                    $d = 0;
                    foreach ($lmt['data'] as $row) {
                        $d++;
                        $get_lmt = $action->getDetail('lam_moi_tin', 'id', $row['lam_moi_tin_id']);
                        $dontuyen = don_tuyen($get_lmt['dang_tuyen_dung_id']);
                    ?>
                        <tr>
                            <td>Làm mới tin tuyển dụng</td>
                            <td><?= $dontuyen ?></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])) ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="lmt(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-lmt&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
                <?php 
                    $d = 0;
                    foreach ($vlth['data'] as $row) {
                        $d++;
                        $get_vltt = $action->getDetail('viec_lam_thu_hut', 'id', $row['viec_lam_thu_hut_id']);
                        $dontuyen = don_tuyen($get_vltt['dang_tuyen_dung_id']);
                    ?>
                        <tr>
                            <td>Việc làm thu hút</td>
                            <td><?= $dontuyen ?></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])) ?></td>
                            <td><?= number_format(gia_goi($row['gia'], $row['soluong'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="vlth(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-vlth&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
                <?php 
                    $d = 0;
                    foreach ($tkuv['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td>Tìm kiếm ứng viên</td>
                            <td></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format($row['tong_tien']) ?></td>
                            <td><?= number_format(($row['tong_tien'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="tkuv(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-tkuv&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
                <?php 
                    $d = 0;
                    foreach ($bntc['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td>Banner chính ở trang chủ</td>
                            <td></td>
                            <td><?= number_format($row['gia']) ?></td>
                            <td><?= $row['soluong'] ?></td>
                            <td><?= number_format($row['tong_tien']) ?></td>
                            <td><?= number_format(($row['tong_tien'])*1.1) ?></td>
                            <td><input type="checkbox" name="" onclick="bntc(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> ></td>
                            <td><a href="index.php?page=sua-bntc&id=<?= $row['id'] ?>">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>             
    <script type="text/javascript">
    	function dtcb (id) {
    		var xhttp = new XMLHttpRequest();
			  xhttp.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			     var out = this.responseText;
                 // alert(out);
			    }
			  };
			  xhttp.open("GET", "/functions/ajax/dang_tuyen_co_ban.php?id="+id, true);
			  xhttp.send();
    	}

        function utnn (id) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 var out = this.responseText;
                 // alert(out);
                }
              };
              xhttp.open("GET", "/functions/ajax/uu_tien_nganh_nghe.php?id="+id, true);
              xhttp.send();
        }

        function gtddd (id) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 var out = this.responseText;
                 // alert(out);
                }
              };
              xhttp.open("GET", "/functions/ajax/gia_tang_do_dam_do.php?id="+id, true);
              xhttp.send();
        }

        function gtut (id) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 var out = this.responseText;
                 // alert(out);
                }
              };
              xhttp.open("GET", "/functions/ajax/gia_tang_uu_tien.php?id="+id, true);
              xhttp.send();
        }

        function tdlmht (id) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 var out = this.responseText;
                 // alert(out);
                }
              };
              xhttp.open("GET", "/functions/ajax/tu_dong_lam_moi_hang_tuan.php?id="+id, true);
              xhttp.send();
        }

        function tdlmhn (id) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 var out = this.responseText;
                 // alert(out);
                }
              };
              xhttp.open("GET", "/functions/ajax/tu_dong_lam_moi_hang_ngay.php?id="+id, true);
              xhttp.send();
        }

        function vlcql (id) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 var out = this.responseText;
                 // alert(out);
                }
              };
              xhttp.open("GET", "/functions/ajax/viec_lam_cap_quan_ly.php?id="+id, true);
              xhttp.send();
        }

        function vltc (id) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 var out = this.responseText;
                 // alert(out);
                }
              };
              xhttp.open("GET", "/functions/ajax/viec_lam_trang_chu.php?id="+id, true);
              xhttp.send();
        }

        function lmt (id) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 var out = this.responseText;
                 // alert(out);
                }
              };
              xhttp.open("GET", "/functions/ajax/lam_moi_tin.php?id="+id, true);
              xhttp.send();
        }

        function vlth (id) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 var out = this.responseText;
                 // alert(out);
                }
              };
              xhttp.open("GET", "/functions/ajax/viec_lam_thu_hut.php?id="+id, true);
              xhttp.send();
        }

        function tkuv (id) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 var out = this.responseText;
                 // alert(out);
                }
              };
              xhttp.open("GET", "/functions/ajax/tim_kiem_ung_vien.php?id="+id, true);
              xhttp.send();
        }

        function bntc (id) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 var out = this.responseText;
                 // alert(out);
                }
              };
              xhttp.open("GET", "/functions/ajax/banner_trang_chu.php?id="+id, true);
              xhttp.send();
        }
    </script>