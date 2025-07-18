<?php 
    $viec_lam_cap_quan_ly = $action_work->viec_lam_cap_quan_ly($trang, 40);//var_dump($viec_lam_cap_quan_ly);
?>
<div class="gb-vieclamcapquanly-vnwork">
    <!--Phàn đầu-->
    <div class="main-wrapper__breadcrumbs blank d-flex-center-sm">
        <div class="container breadcrumbs-wrapper">
            <div class="row">
                <div class="col-sm-6 col-md-6 col-lg-8">
                    <div class="row header-wrapper">
                        <div class="col-sm-2 col-md-2 col-lg-1 header-icon">
                            <img src="/images/icons/channel-icon-tmj.png" alt="">
                        </div>
                        <div class="col-sm-10 col-md-10 col-lg-11">
                            <h1>VIỆC LÀM CẤP QUẢN LÝ</h1>
                            <span class="header-sub-heading hidden-xs">Khám phá những vị trí cấp cao</span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5 col-sm-push-1 col-md-4 col-lg-4 col-md-push-2 col-lg-push-0">
                    <!-- <div class="search-bar hidden-xs">
                        <div class="search-bar__label">TÌM VIỆC LÀM MỚI</div>
                        <form class="search-bar__form">
                            <div class="row">
                                <div class="col-sm-8">
                                    <div class="form-group has-feedback">
                                        <input type="text" value="" class="form-control" placeholder="Nhập tên công việc">
                                    </div>
                                </div>
                                <div class="col-sm-4 text-right">
                                    <button class="search-bar__search-btn btn">Tìm kiếm</button>
                                </div>
                            </div>
                        </form>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
    <!--CÔNG VIỆC ĐƯỢC TÌM THẤY-->
    <div class="gb-congviecduoc-tim-thay-vnwork">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-4">
                    <div class="number-container">
                        <strong class="number"><?= $action_work->count_quanly() ?></strong>
                        <span>CÔNG VIỆC <span class="hidden-xs">ĐƯỢC TÌM THẤY</span></span>
                    </div>
                </div>
                <div class="col-md-6 col-sm-8 cta-container">
                    <div class="row">
                        <div class="links-profile">
                            <a class="link-has-icon" href="">
                                <div class="icon-svg icon-heart">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" version="1.1"><g id="surface1"><path d="M 16 28.15625 L 15.5 27.863281 C 14.988281 27.570313 3 20.53125 3 13 C 3 9.140625 6.140625 6 10 6 C 12.542969 6 14.773438 7.363281 16 9.398438 C 17.226563 7.363281 19.457031 6 22 6 C 25.859375 6 29 9.140625 29 13 C 29 20.53125 17.011719 27.570313 16.5 27.863281 Z M 10 8 C 7.242188 8 5 10.242188 5 13 C 5 18.605469 13.785156 24.445313 16 25.828125 C 18.214844 24.445313 27 18.605469 27 13 C 27 10.242188 24.757813 8 22 8 C 19.242188 8 17 10.242188 17 13 L 15 13 C 15 10.242188 12.757813 8 10 8 Z "></path></g></svg>
                                </div>
                                <span>Việc Làm Của Tôi</span>
                            </a>
                        </div>
                        <div class="links-profile job-alert">
                            <a class="link-has-icon" href="">
                                <div class="icon-svg icon-mail">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" version="1.1"><g id="surface1"><path d="M 3 7 L 3 25 L 29 25 L 29 7 Z M 7.3125 9 L 24.6875 9 L 16 14.78125 Z M 5 9.875 L 11.75 14.375 L 5 19.09375 Z M 27 9.875 L 27 19.09375 L 20.25 14.375 Z M 13.5 15.5625 L 15.4375 16.84375 L 16 17.1875 L 16.5625 16.84375 L 18.5 15.5625 L 27 21.5 L 27 23 L 5 23 L 5 21.5 Z "></path></g></svg>
                                </div>
                                <span>Thông Báo Việc Làm</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <?php 
        foreach ($viec_lam_cap_quan_ly['data'] as $item) {
            // var_dump($item);
        ?>
        <div class="gb-vieclamgap-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="gb-vieclamgap-item-logo">
                        <a href="/chi-tiet-don-tuyen/<?= $item['don_tuyen_id'] ?>"><img src="/images/<?= $item['image']!='' ? $item['image'] : 'nophoto/no_image.jpg' ?>" alt="" class="img-responsive"></a>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="gb-vieclamgap-item-content">
                        <h2><a href="/chi-tiet-don-tuyen/<?= $item['don_tuyen_id'] ?>"><?= $item['name'] ?></a></h2>
                        <div class="gb-vieclamgap-item-content-company">
                            <?= $action->getDetail('nha_tuyen_dung', 'id', $item['nha_tuyen_dung_id'])['company'] ?>
                        </div>
                        <!--Price-->
                        <?php include  DIR_PRODUCT."MS_PRODUCT_VIECLAM_0002.php";?>
                        <div class="gb-vieclamgap-item-content-list">
                            <ul>
                                <li><i class="fa fa-fw fa-lg fa-dollar"></i> <?= $item['phucloi1'] ?></li>
                                <li><i class="fa fa-fw fa-lg fa-graduation-cap"></i> <?= $item['phucloi2'] ?></li>
                                <li><i class="fa fa-fw fa-lg fa-glass"></i> <?= $item['phucloi3'] ?></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--Ribbon-->
            <div class="ribbon"><span>Tiêu biểu</span></div>
        </div>
        <?php } ?>
        
    </div>
</div>