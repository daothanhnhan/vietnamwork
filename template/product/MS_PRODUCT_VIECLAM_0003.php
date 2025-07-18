<?php 
    $tat_ca_viec_lam = $action_work->tat_ca_viec_lam($trang, 40);
    // $tat_ca_viec_lam_kut = $action_work->tat_ca_viec_lam_kut($trang, 1);
?>
<div class="gb-page-sanpham_ruouvang">
    <?php include DIR_SEARCH."MS_SEARCH_VIECLAM_0004.php";?>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <?php 
                foreach ($tat_ca_viec_lam['data'] as $item) { 
                    $dodamdo = $action_work->check_damdo($item['don_tuyen_id']);
                    $capquanly = $action_work->check_quanly($item['don_tuyen_id']);
                    $moi = $action_work->don_moi($item['don_tuyen_id']);
                ?>
                <div class="gb-product_ruouvang-item">
                    <div class="row">
                        <div class="col-sm-3 col-lg-2">
                            <div class="gb-product_ruouvang-item-img">
                                <a href="/chi-tiet-don-tuyen/<?= $item['don_tuyen_id'] ?>"><img src="/images/<?= $item['image']!='' ? $item['image'] : 'nophoto/no_image.jpg' ?>" alt="" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="col-sm-7 col-lg-7">
                            <div class="gb-product_ruouvang-item-text">
                                <h2><a href="/chi-tiet-don-tuyen/<?= $item['don_tuyen_id'] ?>"><span style="<?= $dodamdo==true ? 'color:red;font-weight:bold;' : ''; ?>;"><?= $item['name'] ?></span><span style="background-color: yellow;"><?= $capquanly==true ? ' Top management' : '' ?></span><?= $moi ?></a></h2>
                                <p><?= $action->getDetail('nha_tuyen_dung', 'id', $item['nha_tuyen_dung_id'])['company'] ?></p>
                                <!--PRICE-->
                                <?php include DIR_PRODUCT."MS_PRODUCT_VIECLAM_0002.php";?>
                            </div>
                        </div>
                        <div class="col-sm-2 col-lg-3">
                            <?php include DIR_PRODUCT."MS_PRODUCT_VIECLAM_0008.php";?>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <div>
                    <?= $tat_ca_viec_lam['paging'] ?>
                </div>
            </div>
            <div class="col-md-3">
                <!--TIÊU ĐIỂM-->
                <?php include DIR_SIDEBAR."MS_SIDEBAR_VIECLAM_0009.php"; ?>
                <!--BANNER-->
                <?php include DIR_BANNER."MS_BANNER_VIECLAM_0002.php";?>
            </div>
        </div>
    </div>
</div>