<?php 
    $home_vieclam = $action_work->viec_lam_trang_chu();//var_dump($home_vieclam);
    $home_vieclam_count = count($home_vieclam);
    $home_vieclam_cohot = array();
    $home_vieclam_kohot = array();
    foreach ($home_vieclam as $item) {
        $ck_hot = $action_work->viec_lam_thu_hut($item['don_tuyen_id']);
        if ($ck_hot == true) {
            $home_vieclam_cohot[] = $item;
        } else {
            $home_vieclam_kohot[] = $item;
        }
    }
    $home_vieclam_new = array_merge($home_vieclam_cohot,$home_vieclam_kohot);
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-tieubieu-product_ruouvang">
    <div class="container">
        <div class="gb-tieubieu-product_ruouvang-title">
            <h3> Việc làm tuyển gấp</h3>
        </div>
        <div class="gb-tieubieu-product_ruouvang-body">
            <div class="gb-tieubieu-product_ruouvang-slide owl-carousel owl-theme">
                <div class="item">
                    <?php 
                    $d = 0;
                    foreach ($home_vieclam_new as $item) { 
                        $d++;
                        $hot = $action_work->viec_lam_thu_hut($item['don_tuyen_id']);
                    ?>
                    <div class="gb-product_ruouvang-item">
                        <div class="gb-product_ruouvang-item-img">
                            <a href="/chi-tiet-don-tuyen/<?= $item['don_tuyen_id'] ?>"><img src="/images/<?= $item['image']!='' ? $item['image'] : 'nophoto/no_image.jpg' ?>" alt="" class="img-responsive"></a>
                        </div>
                        <div class="gb-product_ruouvang-item-text">
                            <h2><a href="/chi-tiet-don-tuyen/<?= $item['don_tuyen_id'] ?>"><?= $item['name'] ?><?= $hot==true ? '<span style="color:red;"> HOT</span>' : '' ?></a></h2>
                            <p><?= $action->getDetail('nha_tuyen_dung', 'id', $item['nha_tuyen_dung_id'])['company'] ?></p>
                        </div>
                    </div>
                    <?php 
                        if ($d%7==0) {
                            if ($d != $home_vieclam_count) {
                                echo '</div><div class="item">';
                            }
                        }
                    }
                    ?>
                </div>
                
            </div>
        </div>
    </div>
</div>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-tieubieu-product_ruouvang-slide').owlCarousel({
            loop:true,
            margin:10,
            navSpeed:500,
            nav:true,
            dots: true,
            autoplay: true,
            rewind: true,
            navText:[],
            responsive:{
                0:{
                    items:1,
                    nav: false
                },
                992:{
                    items: 2,
                    nav:true
                }
            }
        });
    });
</script>