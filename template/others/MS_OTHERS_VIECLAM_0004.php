<?php 

    if (!isset($_GET['trang'])) {
        echo '<script type="text/javascript">alert(\'Lỗi không hợp lệ.\');window.location.href="/tim-kiem-ung-vien"</script>';
    }

    // function uploadPicture($src, $img_name, $img_temp){

    //     $src = $src.$img_name;//echo $src;

    //     if (!@getimagesize($src)){

    //         if (move_uploaded_file($img_temp, $src)) {

    //             return true;

    //         }

    //     }

    // }

    $city = $action->getList('city', '', '', 'id', 'asc', '', '', '');
    $country = $action->getList('country', '', '', 'id', 'asc', '', '', '');
    $career = $action->getList('career', '', '', 'id', 'asc', '', '', '');
    $level = $action->getList('cap_bac', '', '', 'id', 'asc', '', '', '');
    $bang_cap = $action->getList('bang_cap', '', '', 'id', 'asc', '', '', '');

    function tao_ho_so ($id) {
        global $conn_vn;
        // var_dump($_POST);
        // var_dump($_FILES);
        if (isset($_POST['add_hs'])) {
            $first_name = $_POST['first_name'];
            $last_name = $_POST['last_name'];
            $position = $_POST['position'];
            $level = $_POST['level'];
            $experience = $_POST['experience'];
            $moi_tot_nghiep = isset($_POST['moi_tot_nghiep']) ? 1 : 0;
            $phone = $_POST['phone'];
            $birthday = $_POST['birthday'];
            $quoc_tich = $_POST['quoc_tich'];
            $sex = $_POST['sex'];
            $wedding = $_POST['wedding'];
            $quoc_gia = $_POST['quoc_gia'];
            $city = $_POST['city'];
            $district = $_POST['district'];
            $address = $_POST['address'];
            $note = $_POST['note'];$note = str_replace("'", "\'", $note);
            $email = $_POST['email'];
            $alias = $_POST['alias'];

            $src= "images/";
            $image = '';
            if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){
                $image = time().$email.$_FILES['image']['name'];
                uploadPicture($src, $image, $_FILES['image']['tmp_name']);
            }

            if ($image == '') {
                $sql = "UPDATE ung_vien SET first_name = '$first_name', last_name = '$last_name', position = '$position', level = $level, experience = $experience, moi_tot_nghiep = $moi_tot_nghiep, phone = '$phone', birthday = '$birthday', quoc_tich = $quoc_tich, sex = $sex, wedding = $wedding, quoc_gia = $quoc_gia, city = $city, district = $district, address = '$address', note = '$note', alias = '$alias' WHERE id = $id";
            } else {
                $sql = "UPDATE ung_vien SET first_name = '$first_name', last_name = '$last_name', position = '$position', level = $level, experience = $experience, moi_tot_nghiep = $moi_tot_nghiep, phone = '$phone', birthday = '$birthday', quoc_tich = $quoc_tich, sex = $sex, wedding = $wedding, quoc_gia = $quoc_gia, city = $city, district = $district, address = '$address', note = '$note', alias = '$alias', image = '$image' WHERE id = $id";
            }
            
            $result = mysqli_query($conn_vn, $sql);
            if ($result) {
                if (isset($_POST['skill_start'])) {
                    $sql = "DELETE FROM ky_nang WHERE ung_vien_id = $id";
                    $result = mysqli_query($conn_vn, $sql);

                    $d = -1;
                    foreach ($_POST['skill_start'] as $item) {
                        $d++;
                        $star = $item[0];
                        $career_id = $_POST['skill_name'][$d];
                        $sql = "INSERT INTO ky_nang (career_id, star, ung_vien_id) VALUES ($career_id, $star, $id)";//echo $sql;
                        $result = mysqli_query($conn_vn, $sql);
                    }
                }

                if (isset($_POST['lang_level'])) {
                    $sql = "DELETE FROM ngon_ngu WHERE ung_vien_id = $id";
                    $result = mysqli_query($conn_vn, $sql);

                    $d = -1;
                    foreach ($_POST['lang_level'] as $item) {
                        $d++;
                        $level = $item[0];
                        $country_id = $_POST['lang_name'][$d];
                        $sql = "INSERT INTO ngon_ngu (country_id, level, ung_vien_id) VALUES ($country_id, $level, $id)";//echo $sql;
                        $result = mysqli_query($conn_vn, $sql);
                    }
                }

                if (isset($_POST['exper_company'])) {
                    $sql = "DELETE FROM kinh_nghiem WHERE ung_vien_id = $id";
                    $result = mysqli_query($conn_vn, $sql);

                    $d = -1;
                    foreach ($_POST['exper_company'] as $item) {
                        $d++;
                        $company = $item;
                        $chuc_danh = $_POST['exper_chudanh'][$d];
                        $date_tu = $_POST['exper_tu'][$d];
                        if (empty($date_tu)) {
                            $date_tu = '0000-00-00';
                        } else {
                            $date_tu .= '-00';
                        }
                        $date_den = $_POST['exper_den'][$d];
                        if (empty($date_den)) {
                            $date_den = '0000-00-00';
                        } else {
                            $date_den .= '-00';
                        }
                        $date_now = $_POST['exper_now'][$d];
                        $note = $_POST['exper_note'][$d];$note = str_replace("'", "\'", $note);

                        $sql = "INSERT INTO kinh_nghiem (ung_vien_id, company, chuc_danh, date_tu, date_den, date_now, note) VALUES ($id, '$company', '$chuc_danh', '$date_tu', '$date_den', $date_now, '$note')";//echo $sql;
                        $result = mysqli_query($conn_vn, $sql);
                    }
                }

                if (isset($_POST['stu_chuyen_nganh'])) {
                    $sql = "DELETE FROM hoc_van WHERE ung_vien_id = $id";
                    $result = mysqli_query($conn_vn, $sql);

                    $d = -1;
                    foreach ($_POST['stu_chuyen_nganh'] as $item) {
                        $d++;
                        $nganh = $item;
                        $truong = $_POST['stu_truong'][$d];
                        $bang_cap = $_POST['stu_bang'][$d];
                        $date_tu = $_POST['stu_tu'][$d];
                        if (empty($date_tu)) {
                            $date_tu = '0000-00-00';
                        } else {
                            $date_tu .= '-00';
                        }
                        $date_den = $_POST['stu_den'][$d];
                        if (empty($date_den)) {
                            $date_den = '0000-00-00';
                        } else {
                            $date_den .= '-00';
                        }

                        $sql = "INSERT INTO hoc_van (ung_vien_id, nganh, truong, bang_cap, date_tu, date_den) VALUES ($id, '$nganh', '$truong', $bang_cap, '$date_tu', '$date_den')";//echo $sql;
                        $result = mysqli_query($conn_vn, $sql);
                    }
                }

                if (isset($_POST['refer_name'])) {
                    $sql = "DELETE FROM tham_khao WHERE ung_vien_id = $id";
                    $result = mysqli_query($conn_vn, $sql);

                    $d = -1;
                    foreach ($_POST['refer_name'] as $item) {
                        $d++;
                        $name = $item;
                        $phone = $_POST['refer_phone'][$d];
                        $email = $_POST['refer_email'][$d];
                        $company = $_POST['refer_company'][$d];
                        $chuc_danh = $_POST['refer_chucdanh'][$d];

                        $sql = "INSERT INTO tham_khao (ung_vien_id, name, phone, email, company, chuc_danh) VALUES ($id, '$name', '$phone', '$email', '$company', '$chuc_danh')";//echo $sql;
                        $result = mysqli_query($conn_vn, $sql);
                    }
                }
                
                echo '<script type="text/javascript">alert(\'Bạn tạo hổ sơ thành công.\')</script>';
            } else {
                echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
            }
        }
    }
    // tao_ho_so($_SESSION['user_id_uv_gbvn']);

    $info = $action->getDetail('ung_vien', 'id', $_GET['trang']);//var_dump($info);
    if ($info['quoc_gia']==1) {
        $city_info = $city;
    } else {
        $city_info = array();
    }
    $district_info = $action->getList('district', 'city_id', $info['city'], 'id', 'asc', '', '', '');

    $ky_nang = $action->getList('ky_nang', 'ung_vien_id', $_GET['trang'], 'id', 'asc', '', '', '');
    $ky_nang_count = count($ky_nang);

    $ngon_ngu = $action->getList('ngon_ngu', 'ung_vien_id', $_GET['trang'], 'id', 'asc', '', '', '');
    $ngon_ngu_count = count($ngon_ngu);

    $kinh_nghiem = $action->getList('kinh_nghiem', 'ung_vien_id', $_GET['trang'], 'id', 'asc', '', '', '');
    $kinh_nghiem_count = count($kinh_nghiem);

    $hoc_van = $action->getList('hoc_van', 'ung_vien_id', $_GET['trang'], 'id', 'asc', '', '', '');

    $tham_khao = $action->getList('tham_khao', 'ung_vien_id', $_GET['trang'], 'id', 'asc', '', '', '');
?>

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
<div class="gb-taohoso-vnwork">
    <div class="container">
        <div class="gb-taohoso-vnwork-header">

        </div>
        <form action="" method="post" enctype="multipart/form-data">
 
        <!--Thông tin-->
        <div class="gb-taohoso-vnwork-info-cv">
            <div class="gb-taohoso-vnwork-thongtin">
                <h4>Thông tin</h4>

                    <div class="row">
                        <div class="col-sm-4">
                            <div class="gb-taohoso-vnwork-thongtin-img">
                                <div class="picture-container">
                                    <div class="picture">
                                        <img src="/images/<?= $info['image'] ?>" class="picture-src" id="wizardPicturePreview" title="">
                                        <input type="file" id="wizard-picture" name="image">
                                        <!-- <input type="hidden" id="avatarUrl" name="avatar_url"> -->
                                    </div>
                                    <h6>Chọn ảnh</h6>
                                    <p class="text-success avatar-status" style="display: none"></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-user-o" aria-hidden="true"></i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Họ
                                                <small class="text-red">*</small>
                                            </label>
                                            <input name="first_name" type="text" class="form-control" value="<?= $info['first_name'] ?>" required>
                                            <span class="material-input"></span></div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-user-o" aria-hidden="true"></i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Tên
                                                <small class="text-red">*</small>
                                            </label>
                                            <input name="last_name" type="text" class="form-control" value="<?= $info['last_name'] ?>" required>
                                            <span class="material-input"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-table" aria-hidden="true"></i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Chức Danh
                                                <small class="text-red">*</small>
                                            </label>
                                            <input id="keywordPosition" name="position" onchange="ChangeToSlug()" type="text" class="form-control" value="<?= $info['position'] ?>" required>
                                            <input type="hidden" name="alias" id="alias" value="<?= $info['alias'] ?>">
                                            <span class="material-input"></span></div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="select-wrapper">
                                        <label class="control-label select-label">Cấp bậc hiện tại
                                            <small class="text-red">*</small>
                                        </label>
                                        <select class="select2-selection--single" name="level" required>
                                            <option value="">Vui lòng chọn...</option>
                                            <?php foreach ($level as $item) { ?>
                                            <option value="<?= $item['id'] ?>" <?= $item['id']==$info['level'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="input-group input-year">
                                        <span class="input-group-addon">
                                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Số năm kinh nghiệm
                                                <small class="text-red">*</small>
                                            </label>
                                            <input id="keywordPosition" name="experience" type="number" class="form-control"  min="0" value="<?= $info['experience'] ?>" required>
                                            <span class="material-input"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="checkbox new-graduate-checkbox">
                                        <label>
                                            <input type="checkbox" name="moi_tot_nghiep" value="1" <?= $info['moi_tot_nghiep']==1 ? 'checked' : '' ?> ><span class="checkbox-material"><span class="check"></span></span>
                                            Tôi mới tốt nghiệp/chưa có kinh nghiệm làm việc
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user-o" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Emaill
                                        <small class="text-red">*</small>
                                    </label>
                                    <input name="email" type="email" class="form-control" value="<?= $info['email'] ?>" readonly>
                                    <span class="material-input"></span></div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user-o" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Điện thoại
                                        <small class="text-red">*</small>
                                    </label>
                                    <input name="phone" type="tel" class="form-control" value="<?= $info['phone'] ?>" required>
                                    <span class="material-input"></span></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-table" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Ngày sinh
                                        <small class="text-red">*</small>
                                    </label>
                                    <input name="birthday" type="date" class="form-control" value="<?= $info['birthday'] ?>" required>
                                    <span class="material-input"></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="select-wrapper">
                                <label class="control-label select-label">Quốc tịch
                                    <small class="text-red">*</small>
                                </label>
                                <select class="select2-selection--single" name="quoc_tich" required>
                                    <option value="">Vui lòng chọn...</option>
                                    <option value="1" <?= $info['quoc_tich']==1 ? 'selected' : '' ?> >Người Việt Nam</option>
                                    <option value="2" <?= $info['quoc_tich']==2 ? 'selected' : '' ?> >Ngoại quốc</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group">
                                <div class="form-group label-floating">
                                    <label class="control-label">Giới Tính
                                        <small class="text-red">*</small>
                                    </label>
                                    <ul class="radio-vnwork">
                                        <li><label> <input type="radio" name="sex" value="2" <?= $info['sex']==2 ? 'checked' : '' ?> required> Nam</label></li>
                                        <li><label> <input type="radio" name="sex" value="1" <?= $info['sex']==1 ? 'checked' : '' ?> > Nữ</label></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <div class="form-group label-floating">
                                    <label class="control-label">Tình trạng hôn nhân
                                        <small class="text-red">*</small>
                                    </label>
                                    <ul class="radio-vnwork">
                                        <li><label> <input type="radio" name="wedding" value="1" <?= $info['wedding']==1 ? 'checked' : '' ?>  required> Độc thân</label></li>
                                        <li><label> <input type="radio" name="wedding" value="2" <?= $info['wedding']==2 ? 'checked' : '' ?> > Đã kết hôn</label></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group label-floating">
                                <label class="control-label">Quốc Gia
                                    <small class="text-red">*</small>
                                </label>
                                <select class="selectpicker form-control" name="quoc_gia" onchange="countryf(this)" data-show-subtext="true" data-live-search="true" required>
                                    <option value="0">Vui lòng chọn... </option>
                                    <?php foreach ($country as $item) { ?>
                                    <option value="<?= $item['id'] ?>" <?= $item['id']==$info['quoc_gia'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group label-floating">
                                <label class="control-label">Tỉnh/Thành Phố
                                    <small class="text-red">*</small>
                                </label>
                                <select class="selectpicker form-control" id="city" name="city" onchange="cityf(this)" data-show-subtext="true" data-live-search="true" required>
                                    <option value="0">Vui lòng chọn... </option>
                                    <?php foreach ($city_info as $item) { ?>
                                    <option value="<?= $item['id'] ?>" <?= $item['id']==$info['city'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group label-floating">
                                <label class="control-label">Quận/Huyện
                                    <small class="text-red">*</small>
                                </label>
                                <select class="selectpicker form-control" id="district" name="district" data-show-subtext="true" data-live-search="true" required>
                                    <option value="0">Vui lòng chọn...</option>
                                    <?php foreach ($district_info as $item) { ?>
                                    <option value="<?= $item['id'] ?>" <?= $item['id']==$info['district'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Địa Chỉ
                                        <small class="text-red">*</small>
                                    </label>
                                    <input type="text" class="form-control" name="address" value="<?= $info['address'] ?>" required>
                                    <span class="material-input"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                
            </div>
        </div>

        <!--Thông Tin Chung-->
        <div class="gb-taohoso-vnwork-info-cv">
            <div class="gb-taohoso-vnwork-thongtin">
                <h4>Thông Tin Chung</h4>
                
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-user-o" aria-hidden="true"></i>
                        </span>
                        <div class="form-group label-floating">
                            <label class="control-label">
                                Mô tả ngắn gọn thông tin hồ sơ và mục tiêu nghề nghiệp của bạn
                                <small class="text-red">*</small>
                            </label>
                            
                            <textarea rows="5" name="note"><?= $info['note'] ?></textarea>
                            <span class="material-input"></span>
                        </div>
                    </div>
                
            </div>
        </div>

        <!--Kỹ năng-->
        <div class="gb-taohoso-vnwork-info-cv">
            <h4>Kỹ năng</h4>
            <p>5 kỹ năng được đánh giá cao nhất sẽ được hiện trong cv. Bạn nên lựa chọn những kỹ năng quan trọng nhất.</p>
            <div class="gb-taohoso-vnwork-info-cv-content-kynang">
                <?php 
                $d = 0;
                foreach ($ky_nang as $item_kn) { 
                    $d++;
                ?>
                <div class="gb-taohoso-kynang-item">
                    <span class="gb-btn-close-item">x</span>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group label-floating">
                                <label class="control-label">
                                    Hãy điền thông tin về lĩnh vực chuyên môn của bạn.
                                    <small class="text-red">*</small>
                                </label>
                                <select name="skill_name[]" class="selectpicker form-control" data-show-subtext="true" data-live-search="true" style="display: none;">
                                    <option value="0">Vui lòng chọn... </option>
                                    <?php foreach ($career as $item) { ?>
                                    <option value="<?= $item['id'] ?>" <?= $item['id']==$item_kn['career_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <ul class="vote-star">
                                <li><label><input type="radio" name="skill_start[<?= $d ?>][]" value="1" <?= $item_kn['star']==1 ? 'checked' : '' ?> > 1 sao</label></li>
                                <li><label><input type="radio" name="skill_start[<?= $d ?>][]" value="2" <?= $item_kn['star']==2 ? 'checked' : '' ?> > 2 sao</label></li>
                                <li><label><input type="radio" name="skill_start[<?= $d ?>][]" value="3" <?= $item_kn['star']==3 ? 'checked' : '' ?> > 3 sao</label></li>
                                <li><label><input type="radio" name="skill_start[<?= $d ?>][]" value="4" <?= $item_kn['star']==4 ? 'checked' : '' ?> > 4 sao</label></li>
                                <li><label><input type="radio" name="skill_start[<?= $d ?>][]" value="5" <?= $item_kn['star']==5 ? 'checked' : '' ?> > 5 sao</label></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <button id="addMoreSkill" class="btn-add-more btn-add-more-kynang">Add more</button>
        </div>

        <!--Ngôn ngữ-->
        <div class="gb-taohoso-vnwork-info-cv">
            <h4>Ngôn ngữ</h4>
            
            <div class="gb-taohoso-vnwork-info-cv-content-ngonngu ">
                <?php
                $d = 0;
                foreach ($ngon_ngu as $item_nn) { 
                    $d++;
                ?>
                <div class="gb-taohoso-kynang-item">
                    <span class="gb-btn-close-item">x</span>
                    <div class="row">
                        <div class="col-sm-6">
                            <label class="control-label">
                                Hãy chọn ngôn ngữ của bạn.
                                <small class="text-red">*</small>
                            </label>
                            <select name="lang_name[]" class="selectpicker form-control" data-show-subtext="true" data-live-search="true">
                                <option value="0">Vui lòng chọn... </option>
                                <?php foreach ($country as $item) { ?>
                                <option value="<?= $item['id'] ?>" <?= $item['id']==$item_nn['country_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="col-sm-6">
                            <ul class="vote-star">
                                <li><label><input type="radio" name="lang_level[<?= $d ?>][]" value="1" <?= $item_nn['level']==1 ? 'checked' : '' ?> > Sơ cấp</label></li>
                                <li><label><input type="radio" name="lang_level[<?= $d ?>][]" value="2" <?= $item_nn['level']==2 ? 'checked' : '' ?> > Trung cấp</label></li>
                                <li><label><input type="radio" name="lang_level[<?= $d ?>][]" value="3" <?= $item_nn['level']==3 ? 'checked' : '' ?> > Cao cấp</label></li>
                                <li><label><input type="radio" name="lang_level[<?= $d ?>][]" value="4" <?= $item_nn['level']==4 ? 'checked' : '' ?> > Bản ngữ</label></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <button id="addMoreSkill" class="btn-add-more btn-add-more-ngonngu">Add more</button>
        </div>

        <!--King nghiệm làm việc-->
        <div class="gb-taohoso-vnwork-info-cv">
            <h4>Kinh Nghiệm Làm Việc</h4>
            <div class="gb-taohoso-vnwork-info-cv-content-kinhnghiem ">
                <?php 
                $d = 0;
                foreach ($kinh_nghiem as $item) { 
                    $d++;
                ?>
                <div class="gb-taohoso-kynang-item">
                    <span class="gb-btn-close-item">x</span>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user-o" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Công ty
                                        <small class="text-red">*</small>
                                    </label>
                                    <input name="exper_company[]" type="text" class="form-control" value="<?= $item['company'] ?>" required="">
                                    <span class="material-input"></span></div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user-o" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Chức danh
                                        <small class="text-red">*</small>
                                    </label>
                                    <input name="exper_chudanh[]" type="text" class="form-control" value="<?= $item['chuc_danh'] ?>" required="">
                                    <span class="material-input"></span></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user-o" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Từ tháng
                                    </label>
                                    <input name="exper_tu[]" type="month" class="form-control" value="<?= substr($item['date_tu'], 0, 7) ?>">
                                    <span class="material-input"></span></div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user-o" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Đến tháng
                                    </label>
                                    <input name="exper_den[]" type="month" class="form-control" value="<?= substr($item['date_den'], 0, 7) ?>">
                                    <span class="material-input"></span></div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="radio-vnwork">
                                <input type="hidden" name="exper_now[]" id="exper_now_<?= $d ?>" value="<?= $item['date_now'] ?>">
                                <label><input type="checkbox" onclick="set_exper_now(<?= $d ?>)" <?= $item['date_now']==1 ? 'checked' : '' ?> > Công việc hiện tại</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-user-o" aria-hidden="true"></i>
                            </span>
                                <div class="form-group label-floating">
                                    <textarea rows="5" name="exper_note[]"><?= $item['note'] ?></textarea>
                                    <span class="material-input"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <button id="addMoreSkill" class="btn-add-more btn-add-more-kinhnghiem">Add more</button>
        </div>

        <!--Học vấn và bằng cấp-->
        <div class="gb-taohoso-vnwork-info-cv">
            <h4>Học vấn và bằng cấp</h4>
            <div class="gb-taohoso-vnwork-info-cv-content-hocvan">
                <?php foreach ($hoc_van as $item_hv) { ?>
                <div class="gb-taohoso-kynang-item">
                    <span class="gb-btn-close-item">x</span>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Chuyên ngành
                                        <small class="text-red">*</small>
                                    </label>
                                    <input type="text" name="stu_chuyen_nganh[]" class="form-control" value="<?= $item_hv['nganh'] ?>" required="">
                                    <span class="material-input"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Trường
                                        <small class="text-red">*</small>
                                    </label>
                                    <input type="text" name="stu_truong[]" class="form-control" value="<?= $item_hv['truong'] ?>" required="">
                                    <span class="material-input"></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Bằng cấp
                                        <small class="text-red">*</small>
                                    </label>
                                    <select class="form-control" name="stu_bang[]" data-show-subtext="true" data-live-search="true" required="">
                                        <option value="">Vui lòng chọn... </option>
                                        <?php foreach ($bang_cap as $item) { ?>
                                        <option value="<?= $item['id'] ?>" <?= $item['id']==$item_hv['bang_cap'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Từ tháng
                                    </label>
                                    <input type="month" name="stu_tu[]" class="form-control" value="<?= substr($item_hv['date_tu'], 0, 7) ?>">
                                    <span class="material-input"></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Đến tháng
                                    </label>
                                    <input type="month" name="stu_den[]" class="form-control" value="<?= substr($item_hv['date_den'], 0, 7) ?>">
                                    <span class="material-input"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <button id="addMoreSkill" class="btn-add-more btn-add-more-hocvan">Add more</button>
        </div>

        <!--Thông tin tham khảo-->
        <div class="gb-taohoso-vnwork-info-cv">
            <h4>Thông tin tham khảo</h4>
            <div class="gb-taohoso-vnwork-info-cv-content-thamkhao">
                <?php foreach ($tham_khao as $item) { ?>
                <div class="gb-taohoso-kynang-item">
                    <span class="gb-btn-close-item">x</span>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user-o" aria-hidden="true"></i>
                                                    </span>
                                    <div class="form-group label-floating">
                                        <label class="control-label">Họ tên<small class="text-red">*</small></label>
                                        <input name="refer_name[]" type="text" class="form-control" value="<?= $item['name'] ?>" required="">
                                        <span class="material-input"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user-o" aria-hidden="true"></i>
                                                    </span>
                                    <div class="form-group label-floating">
                                        <label class="control-label">Số điện thoại<small class="text-red">*</small></label>
                                        <input name="refer_phone[]" type="tel" class="form-control" value="<?= $item['phone'] ?>" required="">
                                        <span class="material-input"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user-o" aria-hidden="true"></i>
                                                    </span>
                                    <div class="form-group label-floating">
                                        <label class="control-label">Công ty<small class="text-red">*</small></label>
                                        <input name="refer_company[]" type="text" class="form-control" value="<?= $item['company'] ?>" required="">
                                        <span class="material-input"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user-o" aria-hidden="true"></i>
                                                    </span>
                                    <div class="form-group label-floating">
                                        <label class="control-label">Chức danh<small class="text-red">*</small></label>
                                        <input name="refer_chucdanh[]" type="text" class="form-control" value="<?= $item['chuc_danh'] ?>" required="">
                                        <span class="material-input"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user-o" aria-hidden="true"></i>
                                                    </span>
                                    <div class="form-group label-floating">
                                        <label class="control-label">Email<small class="text-red">*</small></label>
                                        <input name="refer_email[]" type="email" class="form-control" value="<?= $item['email'] ?>" required="">
                                        <span class="material-input"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                <?php } ?>
            </div>
            <button id="addMoreSkill" class="btn-add-more btn-add-more-thamkhao">Add more</button>
        </div>

        
</form>
    </div>
</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>

<!--SCRIPT KỸ NĂNG-->
<script>
    var skill_start_id = <?= $ky_nang_count ?>;
    $(document).ready(function () {
        $('.gb-taohoso-vnwork-info-cv .btn-add-more-kynang').click(function (e) {
            e.preventDefault();
            skill_start_id++;
            $('.gb-taohoso-vnwork-info-cv-content-kynang').append('<div class="gb-taohoso-kynang-item">\n' +
                '                <span class="gb-btn-close-item">x</span>\n' +
                '                <div class="row">\n' +
                '                    <div class="col-sm-6">\n' +
                '                        <div class="form-group label-floating">\n' +
                '                            <label class="control-label">\n' +
                '                                Hãy điền thông tin về lĩnh vực chuyên môn của bạn.\n' +
                '                                <small class="text-red">*</small>\n' +
                '                            </label>\n' +
                '                            <select name="skill_name[]" class="selectpicker form-control" data-show-subtext="true" data-live-search="true">\n' +
                '                                <option value="0">Vui lòng chọn... </option>\n' +
                                                <?php foreach ($career as $item) { ?>
                '                                <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>\n' +
                                                <?php } ?>
                '                            </select>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="col-sm-6">\n' +
                '                        <ul class="vote-star">\n' +
                '                            <li><label><input type="radio" name="skill_start['+skill_start_id+'][]" value="1" checked> 1 sao</label></li>\n' +
                '                            <li><label><input type="radio" name="skill_start['+skill_start_id+'][]" value="2"> 2 sao</label></li>\n' +
                '                            <li><label><input type="radio" name="skill_start['+skill_start_id+'][]" value="3"> 3 sao</label></li>\n' +
                '                            <li><label><input type="radio" name="skill_start['+skill_start_id+'][]" value="4"> 4 sao</label></li>\n' +
                '                            <li><label><input type="radio" name="skill_start['+skill_start_id+'][]" value="5"> 5 sao</label></li>\n' +
                
                '                        </ul>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>')
            // return false;
            $('.selectpicker').selectpicker('refresh');
        });
        $('.gb-taohoso-vnwork-info-cv-content-kynang').on('click', '.gb-btn-close-item', function(e) {
            e.preventDefault();

            $(this).parent().remove();
        });
    });
</script>

<!--SCRIPT NGÔN NGỮ-->
<script>
    var lang_start_id = <?= $ngon_ngu_count ?>;
    $(document).ready(function () {
        $('.gb-taohoso-vnwork-info-cv .btn-add-more-ngonngu').click(function (e) {
            e.preventDefault();
            lang_start_id++;
            $('.gb-taohoso-vnwork-info-cv-content-ngonngu').append('<div class="gb-taohoso-kynang-item">\n' +
                '                    <span class="gb-btn-close-item">x</span>\n' +
                '                    <div class="row">\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <label class="control-label">\n' +
                '                                Hãy chọn ngôn ngữ của bạn.\n' +
                '                                <small class="text-red">*</small>\n' +
                '                            </label>\n' +
                '                            <select name="lang_name[]" class="selectpicker form-control" data-show-subtext="true" data-live-search="true">\n' +
                '                                <option value="0">Vui lòng chọn... </option>\n' +
                                                <?php foreach ($country as $item) { ?>
                '                                <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>\n' +
                                                <?php } ?>
                '                            </select>\n' +
                '                        </div>\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <ul class="vote-star">\n' +
                '                                <li><label><input type="radio" name="lang_level['+lang_start_id+'][]" value="1" checked> Sơ cấp</label></li>\n' +
                '                                <li><label><input type="radio" name="lang_level['+lang_start_id+'][]" value="2"> Trung cấp</label></li>\n' +
                '                                <li><label><input type="radio" name="lang_level['+lang_start_id+'][]" value="3"> Cao cấp</label></li>\n' +
                '                                <li><label><input type="radio" name="lang_level['+lang_start_id+'][]" value="4"> Bản ngữ</label></li>\n' +
                '                            </ul>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                </div>')
            // return false;
            $('.selectpicker').selectpicker('refresh');
        });
        $('.gb-taohoso-vnwork-info-cv-content-ngonngu').on('click', '.gb-btn-close-item', function(e) {
            e.preventDefault();

            $(this).parent().remove();
        });
    });
</script>

<!--SCRIPT KINH NGHIỆM-->
<script>
    var experience_id = <?= $kinh_nghiem_count ?>;
    $(document).ready(function () {
        $('.gb-taohoso-vnwork-info-cv .btn-add-more-kinhnghiem').click(function (e) {
            e.preventDefault();
            experience_id++;
            $('.gb-taohoso-vnwork-info-cv-content-kinhnghiem').append('<div class="gb-taohoso-kynang-item">\n' +
                '                    <span class="gb-btn-close-item">x</span>\n' +
                '                <div class="row">\n' +
                '                    <div class="col-sm-6">\n' +
                '                        <div class="input-group">\n' +
                '                            <span class="input-group-addon">\n' +
                '                                <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                            </span>\n' +
                '                            <div class="form-group label-floating">\n' +
                '                                <label class="control-label">Công ty\n' +
                '                                    <small class="text-red">*</small>\n' +
                '                                </label>\n' +
                '                                <input name="exper_company[]" type="text" class="form-control" required="">\n' +
                '                                <span class="material-input"></span></div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="col-sm-6">\n' +
                '                        <div class="input-group">\n' +
                '                            <span class="input-group-addon">\n' +
                '                                <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                            </span>\n' +
                '                            <div class="form-group label-floating">\n' +
                '                                <label class="control-label">Chức danh\n' +
                '                                    <small class="text-red">*</small>\n' +
                '                                </label>\n' +
                '                                <input name="exper_chudanh[]" type="text" class="form-control" required="">\n' +
                '                                <span class="material-input"></span></div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '                <div class="row">\n' +
                '                    <div class="col-sm-4">\n' +
                '                        <div class="input-group">\n' +
                '                            <span class="input-group-addon">\n' +
                '                                <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                            </span>\n' +
                '                            <div class="form-group label-floating">\n' +
                '                                <label class="control-label">Từ tháng\n' +
                
                '                                </label>\n' +
                '                                <input name="exper_tu[]" type="month" class="form-control">\n' +
                '                                <span class="material-input"></span></div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="col-sm-4">\n' +
                '                        <div class="input-group">\n' +
                '                            <span class="input-group-addon">\n' +
                '                                <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                            </span>\n' +
                '                            <div class="form-group label-floating">\n' +
                '                                <label class="control-label">Đến tháng\n' +
                
                '                                </label>\n' +
                '                                <input name="exper_den[]" type="month" class="form-control">\n' +
                '                                <span class="material-input"></span></div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="col-sm-4">\n' +
                '                        <div class="radio-vnwork">\n' +
                '<input type="hidden" name="exper_now[]" id="exper_now_'+experience_id+'" value="0">\n' +
                '                            <label><input type="checkbox" onclick="set_exper_now('+experience_id+')"> Công việc hiện tại</label>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '                <div class="row">\n' +
                '                    <div class="col-sm-12">\n' +
                '                        <div class="input-group">\n' +
                '                        <span class="input-group-addon">\n' +
                '                            <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                        </span>\n' +
                '                            <div class="form-group label-floating">\n' +
                
                '                                <textarea rows="5" name="exper_note[]"></textarea>\n' +
                '                                <span class="material-input"></span>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>')
            // return false;
        });
        $('.gb-taohoso-vnwork-info-cv-content-kinhnghiem').on('click', '.gb-btn-close-item', function(e) {
            e.preventDefault();

            $(this).parent().remove();
        });
    });
</script>

<!--HỌC VẤN VÀ BẰNG CẤP-->
<script>
    $(document).ready(function () {
        $('.gb-taohoso-vnwork-info-cv .btn-add-more-hocvan').click(function (e) {
            e.preventDefault();
            $('.gb-taohoso-vnwork-info-cv-content-hocvan').append('<div class="gb-taohoso-kynang-item">\n' +
                '                    <span class="gb-btn-close-item">x</span>\n' +
                
                '                    <div class="row">\n' +
                '                        <div class="col-md-12">\n' +
                '                            <div class="input-group">\n' +
                '                                <span class="input-group-addon">\n' +
                '                                    <i class="fa fa-map-marker" aria-hidden="true"></i>\n' +
                '                                </span>\n' +
                '                                <div class="form-group label-floating">\n' +
                '                                    <label class="control-label">Chuyên ngành\n' +
                '                                        <small class="text-red">*</small>\n' +
                '                                    </label>\n' +
                '                                    <input type="text" name="stu_chuyen_nganh[]" class="form-control" required="">\n' +
                '                                    <span class="material-input"></span>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="row">\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <div class="input-group">\n' +
                '                                <span class="input-group-addon">\n' +
                '                                    <i class="fa fa-map-marker" aria-hidden="true"></i>\n' +
                '                                </span>\n' +
                '                                <div class="form-group label-floating">\n' +
                '                                    <label class="control-label">Trường\n' +
                '                                        <small class="text-red">*</small>\n' +
                '                                    </label>\n' +
                '                                    <input type="text" name="stu_truong[]" class="form-control" required="">\n' +
                '                                    <span class="material-input"></span>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <div class="input-group">\n' +
                '                                <span class="input-group-addon">\n' +
                '                                    <i class="fa fa-map-marker" aria-hidden="true"></i>\n' +
                '                                </span>\n' +
                '                                <div class="form-group label-floating">\n' +
                '                                    <label class="control-label">Bằng cấp\n' +
                '                                        <small class="text-red">*</small>\n' +
                '                                    </label>\n' +
                '                                    <select class="selectpicker form-control" name="stu_bang[]" data-show-subtext="true" data-live-search="true" required="">\n' +
                '                                        <option value="">Vui lòng chọn... </option>\n' +
                                                        <?php foreach ($bang_cap as $item) { ?>
                '                                        <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>\n' +
                                                        <?php } ?>
                '                                    </select>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="row">\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <div class="input-group">\n' +
                '                                <span class="input-group-addon">\n' +
                '                                    <i class="fa fa-map-marker" aria-hidden="true"></i>\n' +
                '                                </span>\n' +
                '                                <div class="form-group label-floating">\n' +
                '                                    <label class="control-label">Từ tháng\n' +
                
                '                                    </label>\n' +
                '                                    <input type="month" name="stu_tu[]" class="form-control">\n' +
                '                                    <span class="material-input"></span>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <div class="input-group">\n' +
                '                                <span class="input-group-addon">\n' +
                '                                    <i class="fa fa-map-marker" aria-hidden="true"></i>\n' +
                '                                </span>\n' +
                '                                <div class="form-group label-floating">\n' +
                '                                    <label class="control-label">Đến tháng\n' +
                
                '                                    </label>\n' +
                '                                    <input type="month" name="stu_den[]" class="form-control">\n' +
                '                                    <span class="material-input"></span>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                
                '                </div>')
            // return false;
        });
        $('.gb-taohoso-vnwork-info-cv-content-hocvan').on('click', '.gb-btn-close-item', function(e) {
            e.preventDefault();

            $(this).parent().remove();
        });
    });
</script>

<!--THÔNG TIN THAM KHẢO-->
<script>
    $(document).ready(function () {
        $('.gb-taohoso-vnwork-info-cv .btn-add-more-thamkhao').click(function (e) {
            e.preventDefault();
            $('.gb-taohoso-vnwork-info-cv-content-thamkhao').append('<div class="gb-taohoso-kynang-item">\n' +
                '    <span class="gb-btn-close-item">x</span>\n' +
                
                '        <div class="row">\n' +
                '            <div class="col-md-6">\n' +
                '                <div class="input-group">\n' +
                '                                    <span class="input-group-addon">\n' +
                '                                        <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                                    </span>\n' +
                '                    <div class="form-group label-floating">\n' +
                '                        <label class="control-label">Họ tên<small class="text-red">*</small></label>\n' +
                '                        <input name="refer_name[]" type="text" class="form-control" required="">\n' +
                '                        <span class="material-input"></span>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '            <div class="col-md-6">\n' +
                '                <div class="input-group">\n' +
                '                                    <span class="input-group-addon">\n' +
                '                                        <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                                    </span>\n' +
                '                    <div class="form-group label-floating">\n' +
                '                        <label class="control-label">Số điện thoại<small class="text-red">*</small></label>\n' +
                '                        <input name="refer_phone[]" type="tel" class="form-control" required="">\n' +
                '                        <span class="material-input"></span>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '        </div>\n' +
                '        <div class="row">\n' +
                '            <div class="col-md-6">\n' +
                '                <div class="input-group">\n' +
                '                                    <span class="input-group-addon">\n' +
                '                                        <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                                    </span>\n' +
                '                    <div class="form-group label-floating">\n' +
                '                        <label class="control-label">Công ty<small class="text-red">*</small></label>\n' +
                '                        <input name="refer_company[]" type="text" class="form-control" required="">\n' +
                '                        <span class="material-input"></span>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '            <div class="col-md-6">\n' +
                '                <div class="input-group">\n' +
                '                                    <span class="input-group-addon">\n' +
                '                                        <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                                    </span>\n' +
                '                    <div class="form-group label-floating">\n' +
                '                        <label class="control-label">Chức danh<small class="text-red">*</small></label>\n' +
                '                        <input name="refer_chucdanh[]" type="text" class="form-control" required="">\n' +
                '                        <span class="material-input"></span>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '        </div>\n' +
                '        <div class="row">\n' +
                '            <div class="col-md-12">\n' +
                '                <div class="input-group">\n' +
                '                                    <span class="input-group-addon">\n' +
                '                                        <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                                    </span>\n' +
                '                    <div class="form-group label-floating">\n' +
                '                        <label class="control-label">Email<small class="text-red">*</small></label>\n' +
                '                        <input name="refer_email[]" type="email" class="form-control" required="">\n' +
                '                        <span class="material-input"></span>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '        </div>\n' +
                
                '</div>')
            // return false;
        });
        $('.gb-taohoso-vnwork-info-cv-content-thamkhao').on('click', '.gb-btn-close-item', function(e) {
            e.preventDefault();

            $(this).parent().remove();
        });
    });
</script>
<script type="text/javascript">
    function countryf (data) {
        // alert(data.value);
        var nation = data.value;
        if (nation == 1) {
            var cityv = '';
            <?php foreach ($city as $item) { ?>
            cityv = cityv + '<option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>';
            <?php } ?>
            document.getElementById("city").innerHTML = '<option value="0">Vui lòng chọn...</option>'+cityv;
        } else {
            document.getElementById("city").innerHTML = '<option value="0">Quốc tế</option>';
        }
        $('.selectpicker').selectpicker('refresh');
    }

    function cityf (data) {
        // alert(data.value);
        var city_id = data.value;
        var district = '';
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
            var out = this.responseText;//alert(out);
             document.getElementById("district").innerHTML = '<option value="0">Vui lòng chọn...</option>'+out;
             $('.selectpicker').selectpicker('refresh');
            }
          };
          xhttp.open("GET", "/functions/ajax/district.php?city_id="+city_id, true);
          xhttp.send();
    }

    function set_exper_now(id) {
        // alert(id);
        var exper_now = document.getElementById("exper_now_"+id).value;
        // alert(exper_now);
        if (exper_now == 0) {
            document.getElementById("exper_now_"+id).value = 1;
        } else {
            document.getElementById("exper_now_"+id).value = 0;
        }
    }
</script>
<script>
    function ChangeToSlug(){
        var title, slug;
        //alert ("a");
        //Lấy text từ thẻ input title 
        title = document.getElementById("keywordPosition").value;
        // document.getElementById('title_seo').value = title;
        //Đổi chữ hoa thành chữ thường
        slug = title.toLowerCase();
     
        //Đổi ký tự có dấu thành không dấu
        slug = slug.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, 'a');
        slug = slug.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, 'e');
        slug = slug.replace(/i|í|ì|ỉ|ĩ|ị/gi, 'i');
        slug = slug.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, 'o');
        slug = slug.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, 'u');
        slug = slug.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, 'y');
        slug = slug.replace(/đ/gi, 'd');
        //Xóa các ký tự đặt biệt
        slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
        //Đổi khoảng trắng thành ký tự gạch ngang
        slug = slug.replace(/ /gi, "-");
        slug = slug.replace(/[^a-z0-9\-]+/gi, '');
        //Đổi nhiều ký tự gạch ngang liên tiếp thành 1 ký tự gạch ngang
        //Phòng trường hợp người nhập vào quá nhiều ký tự trắng
        slug = slug.replace(/\-\-\-\-\-/gi, '-');
        slug = slug.replace(/\-\-\-\-/gi, '-');
        slug = slug.replace(/\-\-\-/gi, '-');
        slug = slug.replace(/\-\-/gi, '-');
        //Xóa các ký tự gạch ngang ở đầu và cuối
        slug = '@' + slug + '@';
        slug = slug.replace(/\@\-|\-\@|\@/gi, '');
        //In slug ra textbox có id “slug”
        document.getElementById('alias').value = slug;
        // document.getElementById('title_seo').value = title;
    }
</script>