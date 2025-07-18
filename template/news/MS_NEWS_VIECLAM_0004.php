<?php 
    $home_noibat = $action->getList('nha_tuyen_hot', 'state', '1', 'id', 'desc', '', '', '');
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-nhatuyendungnoibat-home-vnwork">
    <div class="container">
        <h2>Nhà Tuyển Dụng Nổi Bật</h2>
        <div class="gb-nhatuyendungnoibat-home-vnwork-slide  owl-carousel owl-theme">
            <?php foreach ($home_noibat as $item) { ?>
            <div class="item">
                <div class="gb-nhatuyendungnoibat-home-vnwork-item">
                    <div class="gb-nhatuyendungnoibat-vnwork-bg" style="background-image: url('../images/<?= $item['banner'] ?>')"></div>
                    <div class="info-container-vieclam">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">
                                <div class="info-container-vieclam-bg">
                                    <div class="row">
                                        <div class="col-sm-3 logo-vieclam">
                                            <a href="">
                                                <img class="img-responsive" src="/images/<?= $item['logo'] ?>" alt="logo">
                                            </a>
                                        </div>
                                        <div class="col-sm-9 company-info-vieclam">
                                            <h3><a href=""><?= $item['name'] ?></a></h3>
                                            <p class="text-info-vieclam"><?= $item['tip'] ?></p>
                                            <p class="description-vieclam"><?= $item['note'] ?>
                                            </p>
                                            <div class="btn-xemthem-vieclam">
                                                <a href="/nha-tuyen-dung/<?= $item['nha_tuyen_dung_id'] ?>">Xem thêm</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
    $(document).ready(function (){
        $('.gb-nhatuyendungnoibat-home-vnwork-slide').owlCarousel({
            loop:true,
            margin:0,
            navSpeed:500,
            nav:true,
            dots: true,
            autoplay: true,
            rewind: true,
            navText:[],
            items:1,
            responsive:{
                0:{
                    nav:false
                },
                767:{
                    nav:false
                }
            }
        });
    });
</script>