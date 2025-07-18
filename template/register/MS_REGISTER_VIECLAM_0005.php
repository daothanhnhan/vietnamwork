<?php 
    $city = $action->getList('city', '', '', 'id', 'asc', '', '', '');
    $career = $action->getList('career', '', '', 'id', 'asc', '', '', '');
    $search_name = array();
    foreach ($city as $key => $row)
    {
        $search_name[$key] = $row['name'];
    }
    array_multisort($search_name, SORT_ASC, $city);
    //////////////////
    $message = '';
    function dang_ky () {
        global $conn_vn;
        global $message;
        if (isset($_POST['dang_ky'])) {
            $email = $_POST['email'];
            $pass1 = $_POST['pass1'];
            $pass2 = $_POST['pass2'];
            $company = $_POST['company'];
            $career = $_POST['career'];
            $career = json_encode($career);
            $address = $_POST['address'];
            $phone = $_POST['phone'];

            $ok = 'true';
            // check email
            $sql = "SELECT * FROM nha_tuyen_dung WHERE email = '$email'";
            $result = mysqli_query($conn_vn, $sql);
            $num = mysqli_num_rows($result);
            if ($num > 0) {
                $ok = 'false';
                $message .= "Email đã tồn tài. ";
            }

            // ckeck password
            if ($pass1 != $pass2) {
                $ok = 'false';
                $message .= "Mật khẩu không khớp.";
            }

            if ($ok == 'true') {
                $pass = password_hash($pass1, PASSWORD_DEFAULT); 
                $sql = "INSERT INTO nha_tuyen_dung (email, password, company, career, address, phone) VALUES ('$email', '$pass', '$company', '$career', '$address', '$phone')";
                $result = mysqli_query($conn_vn, $sql);
                if ($result) {
                    $_SESSION['user_id_ntd_gbvn'] = mysqli_insert_id($conn_vn);
                    echo '<script type="text/javascript">alert(\'Bạn đã đăng ký thàng công.\');window.location.href="/thong-tin-nha-tuyen-dung"</script>';
                } else {
                    echo '<script type="text/javascript">alert(\'Có lỗi xảy ra!\')</script>';
                }
            }
        }
    }
    dang_ky();

    if (isset($_POST['address'])) {
        $address = $_POST['address'];
    } else {
        $address = 0;
    }
    if (isset($_POST['career'])) {
        $nganhnghe = $_POST['career'];
    } else {
        $nganhnghe = array();
    }
    // var_dump($_SESSION);
?>
<link rel='stylesheet' href='/css/chosen/chosen.css'>
<style class="cp-pen-styles">
#output {
  padding: 20px;
  background: #dadada;
  display: none;
}
</style>
<div id="output"></div>
<div class="gb-dangky-vnwork">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-offset-2">
                <div class="gb-dangnhap-vnwork-form">
                    <form action="" method="post">
                        <h1>Hãy Tham Gia Cùng Hàng Ngàn Công Ty Đang Sử Dụng VietnamWorks Mỗi Ngày</h1>
                        <p style="color:red;text-align: left;"><?= $message ?></p>
                        <div class="form-group">
                            <label>Địa chỉ Email</label>
                            <input type="email" name="email" class="form-control" value="<?= isset($_POST['email']) ? $_POST['email'] : '' ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu</label>
                            <input type="password" name="pass1" class="form-control" pattern=".{6,}" placeholder="Từ 6 ký tự trở lên" required>
                        </div>
                        <div class="form-group">
                            <label>Nhập lại mật khẩu</label>
                            <input type="password" name="pass2" class="form-control" placeholder="Từ 6 ký tự trở lên" required>
                        </div>
                        <div class="form-group">
                            <label>Tên công ty</label>
                            <input type="text" name="company" class="form-control" value="<?= isset($_POST['company']) ? $_POST['company'] : '' ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Ngành nghề</label>
                            <select name="career[]" class="form-control chosen-select" data-placeholder="Yêu cầu chọn ngành nghề" multiple required>
                                <?php foreach ($career as $item) { ?>
                                <option value="<?= $item['id'] ?>" <?= in_array($item['id'], $nganhnghe) ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ</label>
                            <select name="address" class="form-control" required>
                                <?php foreach ($city as $item) { ?>
                                <option value="<?= $item['id'] ?>" <?= $address==$item['id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Điện thoại</label>
                            <input type="text" name="phone" class="form-control" value="<?= isset($_POST['phone']) ? $_POST['phone'] : '' ?>" required>
                        </div>
                        <div class="checkbox">
                          <label><input type="checkbox" value="1" required>Tôi đã đọc và đồng ý với các Quy định bảo mật và Thỏa thuận sử dụng </label>
                        </div>
                        <div class="form-group" style="text-align: center">
                            <button class="btn btn-warning" name="dang_ky"> Đăng ký</button>
                        </div>
                        <p>Already have an account?  <a href="/dang-nhap-nha-tuyen-dung">Sign In</a></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src='/css/chosen/chosen.jquery.js'></script>
<script >
document.getElementById('output').innerHTML = location.search;
$(".chosen-select").chosen({max_selected_options: 3});
//# sourceURL=pen.js
</script>