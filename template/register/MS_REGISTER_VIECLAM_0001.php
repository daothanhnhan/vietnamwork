<?php 
    $so_1 = $action_page->getPageDetail_byId(46, $lang);
    $so_2 = $action_page->getPageDetail_byId(45, $lang);
    $so_3 = $action_page->getPageDetail_byId(44, $lang);

    $dang_tuyen = $action_page->getPageDetail_byId(43, $lang);
    $tim_hoso = $action_page->getPageDetail_byId(42, $lang);
    $quang_ba = $action_page->getPageDetail_byId(41, $lang);
    $trac_nghiem = $action_page->getPageDetail_byId(40, $lang);

    $dam_bao = $action_page->getPageDetail_byId(39, $lang);
?>
<div class="gb-tuyendung-vnwork">
    <!--Giúp Doanh Nghiệp Của Bạn Vươn Xa-->
    <div class="gb-tuyendung-vnwork-title">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 phone-number">
                </div>
                <div class="col-sm-4 col-sm-offset-2 user-account">
                    <div class="text-right">
                        <a href="/dang-nhap-nha-tuyen-dung" target="_blank" class="btn">Đăng Nhập</a>
                        <a href="/dang-ky-nha-tuyen-dung" target="_blank" class="btn btn-outline">Đăng Ký</a>
                    </div>
                </div>
            </div>
            <div class="gb-tuyendung-vnwork-text">
                <h1>Giúp Doanh Nghiệp Của Bạn Vươn Xa</h1>
                <h4>TÌM ĐÚNG NGƯỜI, TRAO ĐÚNG VIỆC</h4>
            </div>
        </div>
    </div>
    <!--Trang tuyển dụng số 1 Việt Nam-->
    <div class="gb-tuyendung-vnwork-characteristic">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="gb-tuyendung-vnwork-characteristic-item">
                        <div class="gb-tuyendung-vnwork-characteristic-item-img">
                            <img src="/images/<?= $so_1['page_img'] ?>" alt="" class="img-responsive">
                        </div>
                        <h2><?= $so_1['page_name'] ?></h2>
                        <p><?= $so_1['page_des'] ?></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gb-tuyendung-vnwork-characteristic-item">
                        <div class="gb-tuyendung-vnwork-characteristic-item-img">
                            <img src="/images/<?= $so_2['page_img'] ?>" alt="" class="img-responsive">
                        </div>
                        <h2><?= $so_2['page_name'] ?></h2>
                        <p><?= $so_2['page_des'] ?></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gb-tuyendung-vnwork-characteristic-item">
                        <div class="gb-tuyendung-vnwork-characteristic-item-img">
                            <img src="/images/<?= $so_3['page_img'] ?>" alt="" class="img-responsive">
                        </div>
                        <h2><?= $so_3['page_name'] ?></h2>
                        <p><?= $so_3['page_des'] ?></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Lựa Chọn Dịch Vụ Phù Hợp-->
    <div class="gb-luachondichvuphuhop">
        <div class="container">
            <h2>Lựa Chọn Dịch Vụ Phù Hợp</h2>
            <!-- Nav tabs -->
            <div class="card">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">ĐĂNG TUYỂN</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">TÌM HỒ SƠ</a></li>
                    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">QUẢNG BÁ THƯƠNG HIỆU</a></li>
                    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">TRẮC NGHIỆM 3E-IP</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <div class="gb-dang-tuyen-vnwork">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="gb-dang-tuyen-vnwork-left">
                                        <img src="/images/<?= $dang_tuyen['page_img'] ?>" alt="" class="img-responsive">
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="gb-dang-tuyen-vnwork-right">
                                        <?= $dang_tuyen['page_content'] ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        <div class="gb-dang-tuyen-vnwork">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="gb-dang-tuyen-vnwork-left">
                                        <img src="/images/<?= $tim_hoso['page_img'] ?>" alt="" class="img-responsive">
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="gb-dang-tuyen-vnwork-right">
                                        <?= $tim_hoso['page_content'] ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages">
                        <div class="gb-dang-tuyen-vnwork">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="gb-dang-tuyen-vnwork-left">
                                        <img src="/images/<?= $quang_ba['page_img'] ?>" alt="" class="img-responsive">
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="gb-dang-tuyen-vnwork-right">
                                        <?= $quang_ba['page_content'] ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="settings">
                        <div class="gb-dang-tuyen-vnwork">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="gb-dang-tuyen-vnwork-left">
                                        <img src="/images/<?= $trac_nghiem['page_img'] ?>" alt="" class="img-responsive">
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="gb-dang-tuyen-vnwork-right">
                                        <?= $trac_nghiem['page_content'] ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--Đảm Bảo Hài Lòng hoặc Miễn Phí Đăng Lại Tin Tuyển Dụng-->
    <div class="gb-dambaohailong-vnwork">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <h2><?= $dam_bao['page_name'] ?></h2>
                    <p><?= $dam_bao['page_des'] ?></p>
                    <img src="/images/<?= $dam_bao['page_img'] ?>" alt="" class="img-responsive">
                </div>
            </div>
        </div>
    </div>

    <!--Các Doanh Nghiệp Hàng Đầu Lựa Chọn VietnamWorks-->
    <div class="gb-cacdoanhnghiephangdau">
        <div class="container">
            <h2>Các Doanh Nghiệp Hàng Đầu Lựa Chọn VietnamWorks</h2>
            <img src="/images/ourpartner.png" alt="" class="img-responsive">
        </div>
    </div>
</div>