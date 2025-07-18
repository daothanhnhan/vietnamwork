<?php 
    $banner_home2 = $action_work->banner_home(12);
?>
<div class="gb-partner_vieclam">
    <div class="container">
        <h2>Các Nhà Tuyển Dụng Hàng Đầu</h2>
        <div class="row">
            <?php 
            foreach ($banner_home2 as $item) { 
                $img = $action_work->get_img_don_tuyen($item['nha_tuyen_dung_id']);
            ?>
            <div class="col-md-2">
                <a href="/nha-tuyen-dung/<?= $item['nha_tuyen_dung_id'] ?>"><img src="/images/<?= $img!='' ? $img : 'nophoto/no_image.jpg' ?>" alt="" class="img-responsive"></a>
            </div>
            <?php } ?>
        </div>
    </div>
</div>