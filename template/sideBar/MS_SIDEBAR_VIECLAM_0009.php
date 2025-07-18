<?php 
    $tieu_diem = $action_work->tieu_diem();
    if (!empty($tieu_diem)) { 
?>
<div class="gb-tieudiem-vnwork">
                    <h2>Tiêu Điểm</h2>
                    <div class="banner-content">
                        <div class="banner-content__background">
                            <div class="main-img">
                                <img src="/images/<?= $tieu_diem['banner'] ?>" class="img-responsive center-block">
                            </div>
                            <div class="sub-img">
                                <img src="/images/<?= $tieu_diem['logo'] ?>" class="img-responsive">
                            </div>
                        </div>
                        <div class="banner-content__foreground">
                            <div class="banner-content__company-info">
                                <h5 class="banner-content__company-name"><?= $tieu_diem['name'] ?></h5>
                                <div class="banner-content__company-desc"><?= $tieu_diem['tip'] ?></div>
                                <ul class="banner-content__job_list list-unstyled">
                                    <li><a href="/nha-tuyen-dung/<?= $tieu_diem['nha_tuyen_dung_id'] ?>"><?= $tieu_diem['note'] ?></a></li>
                                    
                                </ul>
                            </div>
                            <div class="banner-content__cta-btn">
                                <a href="/nha-tuyen-dung/<?= $tieu_diem['nha_tuyen_dung_id'] ?>">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>