<?php 
    $service_related = $action_service->getListServiceRelate_byIdCat_hasLimit($row['servicecat_id'], 3);
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">

<div class="gb-tintuc-lienquan">
    <!--HEADER PRODUICT TOP-->
    <div class="gb-product-top">
        <div class="gb-tintuc-lienquan-title">Tin tức liên quan</div>
    </div>
    <!--SHOW PRODUCT ITEM-->
    <div class="gb-product-show">
        <div class="gb-tintuc-lienquan-three-item owl-carousel owl-theme">
            <?php
            foreach ($service_related as $item) {
                $service_lang = $action_service->getServiceLangDetail_byId($item['service_id'], $lang); 
            ?>
            <div class="item">
                <div class="gb-tintuc-item">
                    <div class="item-img">
                        <a href="/<?= $service_lang['friendly_url'] ?>"><img src="/images/<?= $item['service_img'] ?>" alt="<?= $service_lang['lang_service_name'] ?>" class="img-responsive"></a>
                    </div>
                    <div class="item-text">
                        <h2><a href="/<?= $service_lang['friendly_url'] ?>"><?= $service_lang['lang_service_name'] ?></a></h2>
                        <time> <i class="fa fa-calendar-plus-o" aria-hidden="true"></i> <?= date('d/m/Y', strtotime($item['service_create_date'])) ?></time>
                        <p>
                            <?= $service_lang['lang_service_des'] ?>
                        </p>
                        <div class="btn-doctiep">
                            <a href="/<?= $service_lang['friendly_url'] ?>">Đọc tiếp</a>
                        </div>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-tintuc-lienquan-three-item').owlCarousel({
            loop:true,
            autoplay: true,
            responsiveClass:true,
            nav:true,
            navText:[],
            dots:false,
            margin:30,
            responsive:{
                0:{
                    items:1
                },
                768:{
                    items:3
                }
            }
        });
    });
</script>