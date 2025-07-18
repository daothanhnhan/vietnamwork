<?php 
    $dang_tuyen_co_ban = $action->getDetail('goi_dich_vu', 'id', 1);
    $tim_kiem = $action->getDetail('goi_dich_vu', 'id', 11);
    $banner1 = $action->getDetail('goi_dich_vu', 'id', 12);
    $banner2 = $action->getDetail('goi_dich_vu', 'id', 13);
    $trac_nghiem1 = $action->getDetail('goi_dich_vu', 'id', 14);
    $trac_nghiem2 = $action->getDetail('goi_dich_vu', 'id', 15);
    // var_dump($_SESSION);
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
?>
<div class="gb-banggiadangtin-vnwork">
    <div class="container">
        <h1>Sản phẩm: <span style="color:red;"><?= isset($_SESSION['don_tuyen_gbvn']) ? $action->getDetail('don_tuyen', 'id', $_SESSION['don_tuyen_gbvn'])['name'] : '' ?></span></h1>
    </div>
    <!--ĐĂNG TUỶEN DỤNG-->
    <div class="gb-banggiadangtin-vnwork-dangtuyedung">
        <div class="container gb-white">
            <h3 class="gb-banggiadangtin-vnwork-title">Đăng Tuyển Dụng</h3>
            <div class="gb-banggiadangtin-vnwork-dangtueyncoban">
                <h5><?= $dang_tuyen_co_ban['name'] ?></h5>
                <div class="row">
                    <div class="col-md-5">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-content">
                            <ul>
                                <li>Nhận ngay hồ sơ ứng tuyển chất lượng</li>
                                <li>Dễ dàng đăng tuyển chỉ trong vài phút</li>
                                <li>Mở rộng tìm kiếm ứng viên hiệu quả trên trên máy tính và các thiết bị di động</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-chuongtrinhgiamgia">
                            <span class="discount-label">Chương trình giảm giá</span>
                            <table class="discount-label-content">
                                <tr>
                                    <th>Số lượng</th>
                                    <th>Giảm giá</th>
                                </tr>
                                <tr>
                                    <td>3-4</td>
                                    <td>10%</td>
                                </tr>
                                <tr>
                                    <td>5-9</td>
                                    <td>15%</td>
                                </tr>
                                <tr>
                                    <td>10+</td>
                                    <td>20%</td>
                                </tr>
                            </table>
                        </div>
                        <div id="chon-luong-1">
                            <?php if (isset($_SESSION['cac_goi']['service_package_1'])) { ?>
                            <select name="" onchange="soluong(1, this)">
                                <?php for ($j=1;$j<=10;$j++) { ?>
                                <option value="<?= $j ?>" <?= $j == $_SESSION['cac_goi']['service_package_1']['quantity'] ? 'selected' : '' ?> ><?= $j ?></option>
                                <?php } ?>
                            </select>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="gb-banggiadangtin-vnwork-price" id="goi-price-1">
                            <?php if (!isset($_SESSION['cac_goi']['service_package_1'])) { ?>
                            <?= number_format($dang_tuyen_co_ban['price'],0,',','.') ?>đ
                            <?php } else { ?>
                            <?= number_format(gia_goi($_SESSION['cac_goi']['service_package_1']['price'], $_SESSION['cac_goi']['service_package_1']['quantity']),0,',','.') ?>đ
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-2" id="goi-dich-vu-1">
                        <?php if (!isset($_SESSION['cac_goi']['service_package_1'])) { ?>
                        <div class="gb-banggiadangtin-vnwork-btn">
                            <button class="btn btn-themmoi" onclick="them(1, <?= $dang_tuyen_co_ban['price'] ?>)">Thêm mới</button>
                        </div>
                        <?php } else { ?>
                        <span style="color:green">đã thêm</span><img src="/images/icons/bin.png" alt="" width="20" onclick="xoa(1, <?= $dang_tuyen_co_ban['price'] ?>)">
                        <?php } ?>
                    </div>
                </div>
            </div>

            <div class="gb-banggiadangtin-vnwork-dangtueyncoban-small">
                <h5>Dịch vụ gia tăng mức độ hiển thị tin tuyển dụng của bạn</h5>
                
                <?php 
                    for ($i=2;$i<=10;$i++) { 
                        $goi = $action->getDetail('goi_dich_vu', 'id', $i);
                ?>
                <div class="row">
                    <div class="col-md-5">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-content">
                            <h6><?= $goi['name'] ?></h6>
                            <p><?= $goi['note'] ?></p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-chuongtrinhgiamgia">
                            <span class="discount-label">Chương trình giảm giá</span>
                            <table class="discount-label-content">
                                <tr>
                                    <th>Số lượng</th>
                                    <th>Giảm giá</th>
                                </tr>
                                <tr>
                                    <td>3-4</td>
                                    <td>10%</td>
                                </tr>
                                <tr>
                                    <td>5-9</td>
                                    <td>15%</td>
                                </tr>
                                <tr>
                                    <td>10+</td>
                                    <td>20%</td>
                                </tr>
                            </table>
                        </div>
                        <div id="chon-luong-<?= $i ?>">
                            <?php if (isset($_SESSION['cac_goi']['service_package_'.$i])) { ?>
                            <select name="" onchange="soluong(<?= $i ?>, this)">
                                <?php for ($j=1;$j<=10;$j++) { ?>
                                <option value="<?= $j ?>" <?= $j == $_SESSION['cac_goi']['service_package_'.$i]['quantity'] ? 'selected' : '' ?> ><?= $j ?></option>
                                <?php } ?>
                            </select>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="gb-banggiadangtin-vnwork-price" id="goi-price-<?= $i ?>">
                            <?php if (!isset($_SESSION['cac_goi']['service_package_'.$i])) { ?>
                            <?= number_format($goi['price'],0,',','.') ?>đ
                            <?php } else { ?>
                            <?= number_format(gia_goi($_SESSION['cac_goi']['service_package_'.$i]['price'], $_SESSION['cac_goi']['service_package_'.$i]['quantity']),0,',','.') ?>đ
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-2" id="goi-dich-vu-<?= $i ?>">
                        <?php if (!isset($_SESSION['cac_goi']['service_package_'.$i])) { ?>
                        <div class="gb-banggiadangtin-vnwork-btn">
                            <button class="btn btn-themmoi" onclick="them(<?= $i ?>, <?= $goi['price'] ?>)">Thêm mới</button>
                        </div>
                        <?php } else { ?>
                        <span style="color:green">đã thêm</span><img src="/images/icons/bin.png" alt="" width="20" onclick="xoa(<?= $i ?>, <?= $goi['price'] ?>)">
                        <?php } ?>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>

    <!--TÌM KIẾM ỨNG VIÊN-->
    <div class="gb-banggiadangtin-vnwork-dangtuyedung">
        <div class="container gb-white">
            <h3 class="gb-banggiadangtin-vnwork-title">Xem Hồ Sơ</h3>
            <div class="gb-banggiadangtin-vnwork-dangtueyncoban">
                <h5><?= $tim_kiem['name'] ?></h5>
                <div class="row">
                    <div class="col-md-5">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-content">
                            <p><?= $tim_kiem['note'] ?></p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-chuongtrinhgiamgia" id="chon-luong-11">
                            <?php 
                            if (isset($_SESSION['cac_goi']['service_package_11'])) { 
                                $goi_11_sl = $_SESSION['cac_goi']['service_package_11']['quantity'];
                            ?>
                            <select name="" id="find_quantity" onchange="soluong_timkiem(this, <?= $tim_kiem['price'] ?>)">
                                <option value="1" <?= $goi_11_sl==1 ? 'selected' : '' ?> >1 tháng / 100 điểm</option>
                                <option value="2" <?= $goi_11_sl==2 ? 'selected' : '' ?> >3 tháng / 300 điểm</option>
                                <option value="3" <?= $goi_11_sl==3 ? 'selected' : '' ?> >6 tháng / 600 điểm</option>
                                <option value="4" <?= $goi_11_sl==4 ? 'selected' : '' ?> >12 tháng / 1200 điểm</option>
                            </select>
                            <?php } else { ?>
                            <select name="" id="find_quantity" onchange="soluong_timkiem(this, <?= $tim_kiem['price'] ?>)">
                                <option value="1">1 tháng / 100 điểm</option>
                                <option value="2">3 tháng / 300 điểm</option>
                                <option value="3">6 tháng / 600 điểm</option>
                                <option value="4">12 tháng / 1200 điểm</option>
                            </select>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="gb-banggiadangtin-vnwork-price" id="goi-price-11">
                            <?php 
                            if (isset($_SESSION['cac_goi']['service_package_11'])) {
                                echo number_format(gia_goi_tk($tim_kiem['price'],$_SESSION['cac_goi']['service_package_11']['quantity']),0,',','.').'đ';
                            } else { 
                                echo number_format($tim_kiem['price'],0,',','.').'đ';
                            } 
                            ?>
                        </div>
                    </div>
                    <div class="col-md-2" id="goi-dich-vu-11">
                        <?php if (!isset($_SESSION['cac_goi']['service_package_'.$i])) { ?>
                        <div class="gb-banggiadangtin-vnwork-btn">
                            <button class="btn btn-themmoi" onclick="them_tk(11, <?= $tim_kiem['price'] ?>)">Thêm mới</button>
                        </div>
                        <?php } else { ?>
                        <span style="color:green">đã thêm</span>
                        <img src="/images/icons/bin.png" alt="" width="20" onclick="xoa_tk(11, <?= $tim_kiem['price'] ?>)">
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--Quảng Bá Thương Hiệu-->
    <div class="gb-banggiadangtin-vnwork-dangtuyedung">
        <div class="container gb-white">
            <h3 class="gb-banggiadangtin-vnwork-title">Quảng Bá Thương Hiệu</h3>
            <div class="gb-banggiadangtin-vnwork-dangtueyncoban">
                <h5><?= $banner1['name'] ?></h5>
                <div class="row">
                    <div class="col-md-5">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-content">
                            <p><?= $banner1['note'] ?></p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-chuongtrinhgiamgia">
                            <span class="discount-label">Chương trình giảm giá</span>
                            <table class="discount-label-content">
                                <tr>
                                    <th>Số lượng</th>
                                    <th>Giảm giá</th>
                                </tr>
                                <tr>
                                    <td>3-4</td>
                                    <td>10%</td>
                                </tr>
                                <tr>
                                    <td>5-9</td>
                                    <td>15%</td>
                                </tr>
                                <tr>
                                    <td>10+</td>
                                    <td>20%</td>
                                </tr>
                            </table>
                        </div>
                        <div id="chon-luong-12">
                            <?php if (isset($_SESSION['cac_goi']['service_package_12'])) { ?>
                            <select name="" onchange="soluong(12, this)">
                                <?php for ($j=1;$j<=10;$j++) { ?>
                                <option value="<?= $j ?>" <?= $j == $_SESSION['cac_goi']['service_package_12']['quantity'] ? 'selected' : '' ?> ><?= $j ?></option>
                                <?php } ?>
                            </select>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="gb-banggiadangtin-vnwork-price" id="goi-price-12">
                            <?php if (!isset($_SESSION['cac_goi']['service_package_12'])) { ?>
                            <?= number_format($banner1['price'],0,',','.') ?>đ
                            <?php } else { ?>
                            <?= number_format(gia_goi($_SESSION['cac_goi']['service_package_12']['price'], $_SESSION['cac_goi']['service_package_12']['quantity']),0,',','.') ?>đ
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-2" id="goi-dich-vu-12">
                        <?php if (!isset($_SESSION['cac_goi']['service_package_12'])) { ?>
                        <div class="gb-banggiadangtin-vnwork-btn">
                            <button class="btn btn-themmoi" onclick="them(12, <?= $banner1['price'] ?>)">Thêm mới</button>
                        </div>
                        <?php } else { ?>
                        <span style="color:green">đã thêm</span><img src="/images/icons/bin.png" alt="" width="20" onclick="xoa(12, <?= $banner1['price'] ?>)">
                        <?php } ?>
                    </div>
                </div>
            </div>
            <?php if (false) { ?>
            <div class="gb-banggiadangtin-vnwork-dangtueyncoban">
                <h5><?= $banner2['name'] ?></h5>
                <div class="row">
                    <div class="col-md-5">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-content">
                            <p><?= $banner2['note'] ?></p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-chuongtrinhgiamgia">
                            <span class="discount-label">Chương trình giảm giá</span>
                            <table class="discount-label-content">
                                <tr>
                                    <th>Số lượng</th>
                                    <th>Giảm giá</th>
                                </tr>
                                <tr>
                                    <td>3-4</td>
                                    <td>10%</td>
                                </tr>
                                <tr>
                                    <td>5-9</td>
                                    <td>15%</td>
                                </tr>
                                <tr>
                                    <td>10+</td>
                                    <td>20%</td>
                                </tr>
                            </table>
                        </div>
                        <div id="chon-luong-13">
                            <?php if (isset($_SESSION['cac_goi']['service_package_13'])) { ?>
                            <select name="" onchange="soluong(13, this)">
                                <?php for ($j=1;$j<=10;$j++) { ?>
                                <option value="<?= $j ?>" <?= $j == $_SESSION['cac_goi']['service_package_13']['quantity'] ? 'selected' : '' ?> ><?= $j ?></option>
                                <?php } ?>
                            </select>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="gb-banggiadangtin-vnwork-price" id="goi-price-13">
                            <?php if (!isset($_SESSION['cac_goi']['service_package_13'])) { ?>
                            <?= number_format($banner2['price'],0,',','.') ?>đ
                            <?php } else { ?>
                            <?= number_format(gia_goi($_SESSION['cac_goi']['service_package_13']['price'], $_SESSION['cac_goi']['service_package_13']['quantity']),0,',','.') ?>đ
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-2" id="goi-dich-vu-13">
                        <?php if (!isset($_SESSION['cac_goi']['service_package_13'])) { ?>
                        <div class="gb-banggiadangtin-vnwork-btn">
                            <button class="btn btn-themmoi" onclick="them(13, <?= $banner2['price'] ?>)">Thêm mới</button>
                        </div>
                        <?php } else { ?>
                        <span style="color:green">đã thêm</span><img src="/images/icons/bin.png" alt="" width="20" onclick="xoa(13, <?= $banner2['price'] ?>)">
                        <?php } ?>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>

    <!--Trắc Nghiệm 3E-IP-->
    <?php if (false) { ?>
    <div class="gb-banggiadangtin-vnwork-dangtuyedung">
        <div class="container gb-white">
            <h3 class="gb-banggiadangtin-vnwork-title">Trắc Nghiệm 3E-IP</h3>
            <div class="gb-banggiadangtin-vnwork-dangtueyncoban">
                <h5><?= $trac_nghiem1['name'] ?></h5>
                <div class="row">
                    <div class="col-md-5">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-content">
                            <p><?= $trac_nghiem1['note'] ?></p>
                        </div>
                    </div>
                    <div class="col-md-3">

                    </div>
                    <div class="col-md-2">
                        <div class="gb-banggiadangtin-vnwork-price">
                            <?= number_format($trac_nghiem1['price'],0,',','.') ?>đ
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="gb-banggiadangtin-vnwork-btn">
                            <button class="btn btn-themmoi">Thêm mới</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="gb-banggiadangtin-vnwork-dangtueyncoban">
                <h5><?= $trac_nghiem2['name'] ?></h5>
                <div class="row">
                    <div class="col-md-5">
                        <div class="gb-banggiadangtin-vnwork-dangtueyncoban-content">
                            <p><?= $trac_nghiem2['note'] ?></p>
                        </div>
                    </div>
                    <div class="col-md-3">

                    </div>
                    <div class="col-md-2">
                        <div class="gb-banggiadangtin-vnwork-price">
                            <?= number_format($trac_nghiem2['price'],0,',','.') ?>đ
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="gb-banggiadangtin-vnwork-btn">
                            <button class="btn btn-themmoi">Thêm mới</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>
<?php 
    $tong = 0;
    if (isset($_SESSION['cac_goi'])) {
        foreach ($_SESSION['cac_goi'] as $k => $item) {
            if ($k == 'service_package_11') {
                $tong += gia_goi_tk($item['price'], $item['quantity']);
            } else {
                $tong += gia_goi($item['price'], $item['quantity']);
            }
            
        }
    }
?>
    <div style="text-align: center;">
        <p>Tổng cộng (Đã bao gồm 10% thuế VAT):<span id="total"><?= number_format($tong*1.1, 0, ',', '.'); ?></span> đ</p>
        <button type="" onclick="check_goi()">Đặt hàng</button>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('.discount-label').click(function () {
            $('.discount-label-content').slideToggle();
        });
    });
</script>
<script type="text/javascript">
    function them (id, price) {
        document.getElementById("goi-dich-vu-"+id).innerHTML = '<span style="color:green">đã thêm</span><img src="/images/icons/bin.png" alt="" width="20" onclick="xoa('+id+', '+price+')">';
        document.getElementById("chon-luong-"+id).innerHTML = '<select name="" onchange="soluong('+id+', this)">'+
                                                                '<option value="1">1</option>'+
                                                                '<option value="2">2</option>'+
                                                                '<option value="3">3</option>'+
                                                                '<option value="4">4</option>'+
                                                                '<option value="5">5</option>'+
                                                                '<option value="6">6</option>'+
                                                                '<option value="7">7</option>'+
                                                                '<option value="8">8</option>'+
                                                                '<option value="9">9</option>'+
                                                                '<option value="10">10</option>'+
                                                            '</select>';

        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             // alert(out);
             tong_gia();
            }
          };
          xhttp.open("GET", "/functions/ajax/goi_dich_vu.php?id="+id+"&price="+price, true);
          xhttp.send();
    }

    function xoa (id, price) {
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             tong_gia();
            }
          };
          xhttp.open("GET", "/functions/ajax/xoa-goi.php?id="+id, true);
          xhttp.send();

        document.getElementById("goi-dich-vu-"+id).innerHTML = '<div class="gb-banggiadangtin-vnwork-btn"><button class="btn btn-themmoi" onclick="them('+id+', '+price+')">Thêm mới</button></div>';
        document.getElementById("chon-luong-"+id).innerHTML = '';
        document.getElementById("goi-price-"+id).innerHTML = number_format(price,0,',','.') + 'đ';
    }

    function soluong (id, data) {
        // alert(data.value);
        var quantity = data.value;
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             // alert(out);
             document.getElementById("goi-price-"+id).innerHTML = out;
             tong_gia();
            }
          };
          xhttp.open("GET", "/functions/ajax/soluong.php?id="+id+"&quantity="+quantity, true);
          xhttp.send();
    }

    function tong_gia () {
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             document.getElementById("total").innerHTML = out;
            }
          };
          xhttp.open("GET", "functions/ajax/tong_gia.php", true);
          xhttp.send();
    }

    function check_goi () {
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             // alert(out);
             if (out == 'ok') {
                alert('Bạn đã đặt dịch vụ thành công.');
                location.reload();
             } else if (out == 'login') {
                alert('Bạn chưa đăng nhập.');
                window.location.href = "/dang-nhap-nha-tuyen-dung";
             } else if (out == 'don_tuyen') {
                alert('Bạn chưa Chọn đơn tuyển.');
                window.location.href = "/thong-tin-nha-tuyen-dung";
             } else {
                alert(out);
             }
            }
          };
          xhttp.open("GET", "functions/ajax/thanh_toan.php", true);
          xhttp.send();
    }

    function xoa_tk (id, price) {
        document.getElementById("goi-dich-vu-"+id).innerHTML = '<div class="gb-banggiadangtin-vnwork-btn"><button class="btn btn-themmoi" onclick="them_tk('+id+', '+price+')">Thêm mới</button></div>';
        document.getElementById("goi-price-11").innerHTML = number_format(price,0,',','.')+'đ';
        document.getElementById("chon-luong-11").innerHTML = '<select name="" id="find_quantity" onchange="soluong_timkiem(this, '+price+')">'+
                                '<option value="1">1 tháng / 100 điểm</option>'+
                                '<option value="2">3 tháng / 300 điểm</option>'+
                                '<option value="3">6 tháng / 600 điểm</option>'+
                                '<option value="4">12 tháng / 1200 điểm</option>'+
                            '</select>';
                            
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             tong_gia();
            }
          };
          xhttp.open("GET", "/functions/ajax/xoa-goi.php?id="+id, true);
          xhttp.send();
    }

    function them_tk (id, price) {
        document.getElementById("goi-dich-vu-"+id).innerHTML = '<span style="color:green">đã thêm</span><img src="/images/icons/bin.png" alt="" width="20" onclick="xoa_tk('+id+', '+price+')">';
        var soluong = document.getElementById("find_quantity").value;

        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             // alert(out);
             tong_gia();
            }
          };
          xhttp.open("GET", "/functions/ajax/goi_tim_kiem_ung_vien.php?&price="+price+"&quantity="+soluong, true);
          xhttp.send();
    }

    function soluong_timkiem (data, price) {
        var soluong = data.value;
        var gia = 0;
        if (soluong == 1) {
            gia = price;
        } else if (soluong == 2) {
            gia = price*3*0.85;
        } else if (soluong == 3) {
            gia = price*6*0.8;
        } else {
            gia = price*12*0.75;
        }

        document.getElementById("goi-price-11").innerHTML = number_format(gia,0,',','.')+'đ';

        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             // alert(out);
             tong_gia();
            }
          };
          xhttp.open("GET", "/functions/ajax/goi_tim_kiem_ung_vien1.php?&price="+price+"&quantity="+soluong, true);
          xhttp.send();
    }

    function number_format (number, decimals, dec_point, thousands_sep) {
        var n = number, prec = decimals;

        var toFixedFix = function (n,prec) {
            var k = Math.pow(10,prec);
            return (Math.round(n*k)/k).toString();
        };

        n = !isFinite(+n) ? 0 : +n;
        prec = !isFinite(+prec) ? 0 : Math.abs(prec);
        var sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep;
        var dec = (typeof dec_point === 'undefined') ? '.' : dec_point;

        var s = (prec > 0) ? toFixedFix(n, prec) : toFixedFix(Math.round(n), prec); 
        //fix for IE parseFloat(0.55).toFixed(0) = 0;

        var abs = toFixedFix(Math.abs(n), prec);
        var _, i;

        if (abs >= 1000) {
            _ = abs.split(/\D/);
            i = _[0].length % 3 || 3;

            _[0] = s.slice(0,i + (n < 0)) +
                   _[0].slice(i).replace(/(\d{3})/g, sep+'$1');
            s = _.join(dec);
        } else {
            s = s.replace('.', dec);
        }

        var decPos = s.indexOf(dec);
        if (prec >= 1 && decPos !== -1 && (s.length-decPos-1) < prec) {
            s += new Array(prec-(s.length-decPos-1)).join(0)+'0';
        }
        else if (prec >= 1 && decPos === -1) {
            s += dec+new Array(prec).join(0)+'0';
        }
        return s; 
        // alert(s);
    }
</script>