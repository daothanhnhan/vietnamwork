<div class="gb-home-product-relate">
    <div class="gb-home-product-relate-title">
        <h4>Việc làm tương tự đang tuyển gấp</h4>
    </div>
    <div class="row">
        <?php foreach ($viec_lam_tt2 as $item) { ?>
        <div class="col-md-4">
            <div class="gb-product_ruouvang-item">
                <div class="gb-product_ruouvang-item-img">
                    <a href="/chi-tiet-don-tuyen/<?= $item['don_tuyen_id'] ?>"><img src="/images/<?= $item['image']!='' ? $item['image'] : 'nophoto/no_image.jpg' ?>" alt="" class="img-responsive"></a>
                </div>
                <div class="gb-product_ruouvang-item-text">
                    <h2><a href="/chi-tiet-don-tuyen/<?= $item['don_tuyen_id'] ?>"><?= $item['name'] ?></a></h2>
                    <p><?= $item['company'] ?></p>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>
