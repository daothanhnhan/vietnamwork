<?php 
    if (!isset($_GET['trang'])) {
        echo '<script type="text/javascript">alert(\'Lỗi không hợp lệ.\');window.location.href="/"</script>';
    }
    $don_tuyen = $action->getDetail('don_tuyen', 'id', $_GET['trang']);
    $viec_lam_khac = $action_work->viec_lam_khac($don_tuyen['nha_tuyen_dung_id']);
    $action_work->count_views($don_tuyen['id']);
    $viec_lam_tt1 = $action_work->viec_lam_related($don_tuyen['career'], 4);
    $viec_lam_tt2 = $action_work->viec_lam_related($don_tuyen['career'], 12);
?>

<div class="gb-chitiet-vieclam">
    <div class="page-background"></div>
    <div class="container">
        <div class="gb-chitiet-vieclam-title">
            <div class="row">
                <div class="col-sm-2">
                    <div class="gb-chitiet-vieclam-img">
                        <img src="/images/<?= $don_tuyen['image']!='' ? $don_tuyen['image'] : 'nophoto/no_image.jpg' ?>" alt="" class="img-responsive">
                    </div>
                </div>
                <div class="col-sm-7">
                    <div class="gb-chitiet-vieclam-noidung">
                        <h1><?= $don_tuyen['name'] ?></h1>
                        <h4><a href=""><?= $don_tuyen['company'] ?> </a></h4>
                        <ul>
                            <li><strong>Mức lương:</strong> <?= number_format($don_tuyen['salary1']) ?>đ - <?= number_format($don_tuyen['salary2']) ?>đ</li>
                            <li><strong>Lượt xem: </strong> <?= $don_tuyen['views'] ?> &nbsp; &nbsp;| &nbsp; &nbsp; <strong>Hạn nộp hồ sơ:</strong> <?= date('d/m/Y', strtotime($don_tuyen['deadline'])) ?></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="gb-chitiet-vieclam-tag">
                        <ul>
                            <li>
                                <!--Nộp đơn-->
                                <button type="button" class="btn btn-primary btn-block btn-apply track-event-nopdon" onclick="nop_don(<?= $_GET['trang'] ?>)">
                                    Nộp Đơn
                                </button>
                                <!--Lưu việc làm-->
                                <button class="btn btn-primary btn-outline btn-block btn-save btn-save-job track-event-luuvieclam"onclick="luu_viec(<?= $_GET['trang'] ?>)">
                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    Lưu việc làm
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="gb-chitite-vieclam-tab">
            <div class="panel with-nav-tabs panel-default">
                <div class="panel-heading">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab1default" data-toggle="tab">Thông tin</a></li>
                        <li><a href="#tab2default" data-toggle="tab">Công ty</a></li>
                        <li><a href="#tab3default" data-toggle="tab">Việc làm  khác từ công ty</a></li>
                    </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <!--THÔNG TIN-->
                        <div class="tab-pane fade in active" id="tab1default">
                            <div class="gb-chitiet-vnwork-thongtin">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="gb-chitiet-vieclam-left">
                                            <div class="gb-chitiet-vieclam-left-info">
                                                <h3 class="heading-title-vieclam">Các phúc lợi dành cho bạn</h3>
                                                <ul>
                                                    <li><?= $don_tuyen['phucloi1'] ?></li>
                                                    <li><?= $don_tuyen['phucloi2'] ?></li>
                                                    <li><?= $don_tuyen['phucloi3'] ?></li>
                                                </ul>
                                            </div>
                                            <div class="gb-chitiet-vieclam-left-mota">
                                                <h3 class="heading-title-vieclam">Mô tả công việc</h3>
                                                <p>
                                                    <?php
                                                    $mota = str_replace("\r\n", "<br>", $don_tuyen['mota']);
                                                    echo $mota;
                                                    ?>
                                                </p>
                                            </div>
                                            <div class="gb-chitiet-vieclam-left-mota">
                                                <h3 class="heading-title-vieclam">YÊU CẦU CÔNG VIỆC</h3>
                                                <p>
                                                    <?php
                                                    $yeucau = str_replace("\r\n", "<br>", $don_tuyen['yeucau']);
                                                    echo $yeucau;
                                                    ?>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="mobile-box">
                                            <!-- Box Summary -->
                                            <div class="box-summary link-list">
                                                <div class="row summary-item">
                                                    <div class="col-xs-2 summary-icon">
                                                        <img src="/images/icons/icon-date-posted.png" alt="" width="24">
                                                    </div>
                                                    <div class="col-xs-10 summary-content">
                                                        <span class="content-label">Ngày Đăng Tuyển</span>
                                                        <span class="content"><?= date('d/m/Y', strtotime($don_tuyen['ngay'])) ?></span>
                                                    </div>
                                                </div>
                                                <div class="row summary-item">
                                                    <div class="col-xs-2 summary-icon">
                                                        <img src="/images/icons/icon-experience-layers.png" alt="" width="24">
                                                    </div>
                                                    <div class="col-xs-10 summary-content">
                                                        <span class="content-label">Cấp Bậc</span>
                                                        <span class="content"><?= $action->getDetail('cap_bac', 'id', $don_tuyen['cap_bac'])['name'] ?></span>
                                                    </div>
                                                </div>
                                                <div class="row summary-item">
                                                    <div class="col-xs-2 summary-icon">
                                                        <img src="/images/icons/icon-category-box.png" alt="" width="24">
                                                    </div>
                                                    <div class="col-xs-10 summary-content">
                                                        <span class="content-label">Ngành Nghề</span>
                                                        <span class="content">
                                                            <?php 
                                                            $nghe = json_decode($don_tuyen['career']);
                                                            foreach ($nghe as $item) { 
                                                                $nganh = $action->getDetail('career', 'id', $item);
                                                            ?>
                                                            <a href="/viec-lam-theo-nganh-nghe/1/<?= $item ?>"><?= $nganh['name'] ?></a>,
                                                            <?php } ?>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="row summary-item">
                                                    <div class="col-xs-2 summary-icon">
                                                        <img src="/images/icons/icon-experience-layers.png" alt="" width="24">
                                                    </div>
                                                    <div class="col-xs-10 summary-content">
                                                        <span class="content-label">Kỹ Năng</span>
                                                        <span class="content"><?= $don_tuyen['ky_nang'] ?></span>
                                                    </div>
                                                </div>
                                                <div class="row summary-item">
                                                    <div class="col-xs-2 summary-icon">
                                                        <img src="/images/icons/icon-experience-layers.png" alt="" width="24">
                                                    </div>
                                                    <div class="col-xs-10 summary-content">
                                                        <span class="content-label">Ngôn Ngữ Trình Bày Hồ Sơ</span>
                                                        <span class="content">Bất kỳ</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/ Box Jobs loving -->
                                            <div id="loving-jobs" class="visible-lg"><div class="box-loving-jobs">
                                                <div class="box-loving-jobs__header">
                                                    <span>Công việc tương tự</span>
                                                </div>
                                                <div class="page-job-detail__loving-jobs">
                                                    <?php foreach ($viec_lam_tt1 as $item) { ?>
                                                    <div class="job box box-xs">
                                                        <a href="">
                                                            <div class="col-xs-4 summary-icon">
                                                                <!-- Logo -->
                                                                <div class="logo-box">
                                                                    <img class="img-responsive logo" src="/images/<?= $item['image']!='' ? $item['image'] : 'nophoto/no_image.jpg' ?>" alt="<?= $item['name'] ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-xs-8">
                                                                <!-- Job Description-->
                                                                <p class="title text-clip"><?= $item['name'] ?></p>
                                                                <p class="company text-clip"><?= $item['company'] ?></p>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <!--gioithieu-congty-->
                        <div class="tab-pane fade" id="tab2default">
                            <div class="gb-gioithieu-congty-vnwork">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="gb-gioithieu-congty-vnwork-left">
                                            <p>
                                                <?php 
                                                $congty_note = str_replace("\r\n", "<br>", $don_tuyen['company_note']);
                                                echo $congty_note;
                                                ?>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="gb-gioithieu-congty-vnwork-right">
                                            <div class="box-summary link-list">
                                                <div class="row summary-item">
                                                    <div class="col-xs-2 summary-icon">
                                                        <img src="/images/icons/icon-date-posted.png" alt="" width="24">
                                                    </div>
                                                    <div class="col-xs-10 summary-content">
                                                        <span class="content-label">ĐỊA ĐIỂM</span>
                                                        <span class="content"><?= $don_tuyen['address'] ?></span>
                                                    </div>
                                                </div>
                                                <div class="row summary-item">
                                                    <div class="col-xs-2 summary-icon">
                                                        <img src="/images/icons/icon-experience-layers.png" alt="" width="24">
                                                    </div>
                                                    <div class="col-xs-10 summary-content">
                                                        <span class="content-label">QUY MÔ CÔNG TY</span>
                                                        <span class="content"><?= $don_tuyen['quymo'] ?></span>
                                                    </div>
                                                </div>
                                                <div class="row summary-item">
                                                    <div class="col-xs-2 summary-icon">
                                                        <img src="/images/icons/icon-category-box.png" alt="" width="24">
                                                    </div>
                                                    <div class="col-xs-10 summary-content">
                                                        <span class="content-label">LIÊN HỆ</span>
                                                        <span class="content">Phòng Nhân sự</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--VIỆC LÀM KHÁC TỪ CÔNG TY-->
                        <div class="tab-pane fade" id="tab3default">
                            <div class="gb-vieclamkhactucongty">
                                <?php foreach ($viec_lam_khac as $item) { ?>
                                <div class="gb-vieclamkhactucongty-item">
                                    <h3><a href=""><?= $item['name'] ?></a></h3>
                                    <?php include DIR_PRODUCT."MS_PRODUCT_VIECLAM_0002.php";?>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <?php include DIR_PRODUCT."MS_PRODUCT_VIECLAM_0005.php";?>
        </div>
    </div>
</div>
<script type="text/javascript">
    function nop_don (don_tuyen_id) {
        // alert(don_tuyen_id)
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             alert(out);
            }
          };
          xhttp.open("GET", "/functions/ajax/nop_don.php?don_tuyen_id="+don_tuyen_id, true);
          xhttp.send();
    }

    function luu_viec (don_tuyen_id) {
        // alert(don_tuyen_id)
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             alert(out);
            }
          };
          xhttp.open("GET", "/functions/ajax/luu_viec.php?don_tuyen_id="+don_tuyen_id, true);
          xhttp.send();
    }
</script>