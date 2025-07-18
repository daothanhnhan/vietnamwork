<?php 
    $congty_dangtuyen = $action->getList('news', 'newscat_id', '76', 'news_id', 'desc', '', '', '');
    $congty_luotxem = $action->getList('news', 'newscat_id', '75', 'news_id', 'desc', '', '', '');
    $congty_theodoi = $action->getList('news', 'newscat_id', '74', 'news_id', 'desc', '', '', '');
    $congty_thamgia = $action->getList('news', 'newscat_id', '59', 'news_id', 'desc', '', '', '');
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-khamphavanhoacty-vnwork">
    <!--Các công ty đang tuyển dụng-->
    <div class="gb-khamphavanhoacty-vnwork-item">
        <div class="container">
            <h2>Các công ty đang tuyển dụng</h2>
            <div class="gb-khamphavanhoacty-vnwork-slide owl-carousel owl-theme">
                <?php foreach ($congty_dangtuyen as $item) { ?>
                <div class="item">
                    <div class="gb-news-blog_ruouvang-item">
                        <div class="gb-news-blog_ruouvang-item-img">
                            <a href="/<?= $item['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" class="img-responsive"></a>
                        </div>
                        <div class="gb-news-blog_ruouvang-item-text">
                            <div class="gb-news-blog_ruouvang-item-title">
                                <h3><a href="/<?= $item['friendly_url'] ?>"><?= $item['news_name'] ?></a></h3>
                            </div>
                            <div class="gb-news-blog_ruouvang-item-text-des">
                                <p><?= $item['news_des'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
    <!--Các công ty có lượt xem nhiều nhất-->
    <div class="gb-khamphavanhoacty-vnwork-item">
        <div class="container">
            <h2>Các công ty có lượt xem nhiều nhất</h2>
            <div class="gb-khamphavanhoacty-vnwork-slide owl-carousel owl-theme">
                <?php foreach ($congty_luotxem as $item) { ?>
                <div class="item">
                    <div class="gb-news-blog_ruouvang-item">
                        <div class="gb-news-blog_ruouvang-item-img">
                            <a href="/<?= $item['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" class="img-responsive"></a>
                        </div>
                        <div class="gb-news-blog_ruouvang-item-text">
                            <div class="gb-news-blog_ruouvang-item-title">
                                <h3><a href="/<?= $item['friendly_url'] ?>"><?= $item['news_name'] ?></a></h3>
                            </div>
                            <div class="gb-news-blog_ruouvang-item-text-des">
                                <p><?= $item['news_des'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
    <!--Các công ty có số người theo dõi nhiều nhất-->
    <div class="gb-khamphavanhoacty-vnwork-item">
        <div class="container">
            <h2>Các công ty có số người theo dõi nhiều nhất</h2>
            <div class="gb-khamphavanhoacty-vnwork-slide owl-carousel owl-theme">
                <?php foreach ($congty_theodoi as $item) { ?>
                <div class="item">
                    <div class="gb-news-blog_ruouvang-item">
                        <div class="gb-news-blog_ruouvang-item-img">
                            <a href="/<?= $item['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" class="img-responsive"></a>
                        </div>
                        <div class="gb-news-blog_ruouvang-item-text">
                            <div class="gb-news-blog_ruouvang-item-title">
                                <h3><a href="/<?= $item['friendly_url'] ?>"><?= $item['news_name'] ?></a></h3>
                            </div>
                            <div class="gb-news-blog_ruouvang-item-text-des">
                                <p><?= $item['news_des'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
    <!--Các công ty tham gia gần nhất-->
    <div class="gb-khamphavanhoacty-vnwork-item">
        <div class="container">
            <h2>Các công ty tham gia gần nhất</h2>
            <div class="gb-khamphavanhoacty-vnwork-slide owl-carousel owl-theme">
                <?php foreach ($congty_thamgia as $item) { ?>
                <div class="item">
                    <div class="gb-news-blog_ruouvang-item">
                        <div class="gb-news-blog_ruouvang-item-img">
                            <a href="/<?= $item['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" class="img-responsive"></a>
                        </div>
                        <div class="gb-news-blog_ruouvang-item-text">
                            <div class="gb-news-blog_ruouvang-item-title">
                                <h3><a href="/<?= $item['friendly_url'] ?>"><?= $item['news_name'] ?></a></h3>
                            </div>
                            <div class="gb-news-blog_ruouvang-item-text-des">
                                <p><?= $item['news_des'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-khamphavanhoacty-vnwork-slide').owlCarousel({
            loop:true,
            margin: 30,
            navSpeed:500,
            nav:true,
            dots: false,
            autoplay: true,
            rewind: true,
            navText:[],
            responsive:{
                0:{
                    nav:false,
                    items:1
                },
                767:{
                    nav:false,
                    items:3
                }
            }
        });
    });
</script>