<div class="gb-cackenhvieclamcuarchungtoi-vieclam">
    <div class="container">
        <h2>Các Kênh Việc Làm Của Chúng Tôi</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="gb-cackenhvieclamcuarchungtoi-vieclam-item" style="background-image: url('../images/cackenhvieclam1.png');">
                    <div class="overlay"></div>
                    <img src="/images/icons/channel-icon-tmj.png" class="img-responsive">
                    <div class="channel-label">Việc Làm Cấp Quản Lý</div>
                    <div class="number-jobs"><?= $action_work->count_quanly() ?> Việc Làm</div>
                    <a href="/viec-lam-cap-quan-ly" class="btn btn-primary">Xem</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="gb-cackenhvieclamcuarchungtoi-vieclam-item" style="background-image: url('../images/cackenhvieclam2.png');">
                    <div class="overlay"></div>
                    <img src="/images/icons/channel-icon-it.png" class="img-responsive">
                    <div class="channel-label">Việc Làm Ngành IT</div>
                    <div class="number-jobs"><?= $action_work->count_it() ?> Việc Làm</div>
                    <a href="/viec-lam-nganh-it" class="btn btn-primary">Xem</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="gb-cackenhvieclamcuarchungtoi-vieclam-item" style="background-image: url('../images/cackenhvieclam3.png');">
                    <div class="overlay"></div>
                    <img src="/images/icons/channel-icon-intern.png" class="img-responsive">
                    <div class="channel-label">Mới tốt nghiệp</div>
                    <div class="number-jobs"><?= $action_work->count_totnghiep() ?> Việc Làm</div>
                    <a href="/moi-tot-nghiep" class="btn btn-primary">Xem</a>
                </div>
            </div>
        </div>
    </div>
</div>