<?php 
    $theo_diadiem = $action_work->theo_dia_diem($trang, 40, $_GET['search']);
?>
<div class="gb-page-sanpham_ruouvang">
    <?php include DIR_SEARCH."MS_SEARCH_VIECLAM_0004.php";?>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <?php 
                foreach ($theo_diadiem['data'] as $item) { 
                    $dodamdo = $action_work->check_damdo($item['don_tuyen_id']);//var_dump($item);
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
                                <h2><a href="/chi-tiet-don-tuyen/<?= $item['don_tuyen_id'] ?>"><span style="<?= $dodamdo==true ? 'color:red;font-weight:bold;' : ''; ?>"><?= $item['name'] ?></span><?= $moi ?></a></h2>
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
                    <?= $theo_diadiem['paging'] ?>
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