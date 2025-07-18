<?php 
    $message = '';
    function dang_nhap () {
        global $conn_vn;
        global $message;
        if (isset($_POST['dang_nhap'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];

            $sql = "SELECT * FROM nha_tuyen_dung WHERE email = '$email'";//echo $sql;
            $result = mysqli_query($conn_vn, $sql);
            $num = mysqli_num_rows($result);
            if ($num == 0) {
                $message = "Email hoặc mật khẩu không đúng.";
            } else {
                $row = mysqli_fetch_assoc($result);
                $passhash = $row['password'];
                if (password_verify($password, $passhash)) {
                    $_SESSION['user_id_ntd_gbvn'] = $row['id'];
                    echo '<script type="text/javascript">alert(\'Bạn đã đăng nhập thành công!\');window.location.href="/thong-tin-nha-tuyen-dung"</script>';
                } else {
                    $message = "Email hoặc mật khẩu không đúng.";
                }
            }
        }
    }
    dang_nhap();
?>
<div class="gb-dangnhap-vnwork">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-offset-2">
                <div class="gb-dangnhap-vnwork-form">
                    <form action="" method="post">
                        <h1>Đăng Nhập Vào Trang Quản Lý Tuyển Dụng</h1>

                        <p style="color: red;text-align: left;"><?= $message ?></p>
                        <div class="form-group">
                            <label>Địa chỉ Email</label>
                            <input type="email" name="email" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu</label>
                            <input type="password" name="password" class="form-control" required>
                        </div>
                        <div class="form-group"  style="text-align: center">
                            <button class="btn btn-warning" name="dang_nhap"> Đăng nhập</button>
                        </div>
                        <p>Chưa có tài khoản? <a href="/dang-ky-nha-tuyen-dung">Đăng ký!</a></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>