<!--MENU MOBILE-->
<?php include_once DIR_MENU."MS_MENU_VIECLAM_0002.php"; ?>
<!-- End menu mobile-->

<!--MENU DESTOP-->
<header>
    <div class="gb-header-ruouvang">
        <div class="gb-header-between_ruouvang">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-1">
                        <div class="gb-header-between_ruouvang-left">
                            <h1>
                                <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="" class="img-responsive"></a>
                            </h1>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="gb-header-bottom_ruouvang">
                            <?php include DIR_MENU."MS_MENU_VIECLAM_0001.php";?>
                        </div>
                    </div>
                    <div class="col-md-5 hidden-sm hidden-xs">
                        <div class="gb-header-login-logout">
                            <ul>
                                <?php if (!isset($_SESSION['user_id_ntd_gbvn']) && !isset($_SESSION['user_id_uv_gbvn'])) { ?>
                                    <li><a href="/dang-nhap"><i class="fa fa-fw fa-lg fa-sign-in"></i> Đăng nhập</a></li>
                                    <li><a href="/dang-ky">Đăng ký</a></li>
                                <?php } else { ?>
                                    <?php if (isset($_SESSION['user_id_ntd_gbvn'])) { ?>
                                        <li><a href="/thong-tin-nha-tuyen-dung"><?= $action->getDetail('nha_tuyen_dung', 'id', $_SESSION['user_id_ntd_gbvn'])['company'] ?></a></li>
                                    <?php } elseif (isset($_SESSION['user_id_uv_gbvn'])) { ?>
                                        <li><a href="/viec-ung-tuyen">Việc ứng tuyển</a></li>
                                        <li><a href="/viec-da-luu">Việc đã lưu</a></li>
                                        <li><a href="/tao-ho-so"><?= $action->getDetail('ung_vien', 'id', $_SESSION['user_id_uv_gbvn'])['first_name'] ?></a></li>
                                    <?php } ?>
                                    <li><a href="/dang-xuat"><i class="fa fa-fw fa-lg fa-sign-out"></i> Đăng xuất</a></li>
                                <?php } ?>
                                <li class="horizontal-navbar__employer-site">
                                    <a href="/nha-tuyen-dung-dang-tuyen-tim-kiem-nhan-tai">
                                        <strong class="text-white hidden-xs">NHÀ TUYỂN DỤNG</strong><br>
                                        <span class="text-white">Đăng Tuyển &amp; Kiếm Nhân Tài</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>
    $(document).ready(function () {
        $(".sticky-menu").sticky({topSpacing:0});
    });
</script>