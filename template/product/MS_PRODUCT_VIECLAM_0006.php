<?php 
    $banner_home1 = $action_work->banner_home(6);
?>
<div class="gb-caccongtyhangdau-vieclam">
    <div class="container">
        <h2>Các công ty Hàng Đầu</h2>
        <div class="row">
            <?php 
            foreach ($banner_home1 as $item) { 
                $img = $action_work->get_img_don_tuyen($item['nha_tuyen_dung_id']);
            ?>
            <div class="col-md-2">
                <div class="gb-caccongtyhangdau-vieclam-item">
                    <a href="/nha-tuyen-dung/<?= $item['nha_tuyen_dung_id'] ?>">
                        <div class="logo-box-vieclam">
                            <img class="img-responsive" src="/images/<?= $img!='' ? $img : 'nophoto/no_image.jpg' ?>">
                        </div>
                        <!-- <span class="ad-slogan-vieclam">Bridgestone</span> -->
                    </a>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>