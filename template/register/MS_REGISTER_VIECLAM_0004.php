<?php 
    $message = '';
    function dang_ky () {
        global $conn_vn;
        global $message;
        if (isset($_POST['dang_ky'])) {
            $first_name = $_POST['first_name'];
            $last_name = $_POST['last_name'];
            $email = $_POST['email'];
            $pass1 = $_POST['pass1'];
            $pass2 = $_POST['pass2'];

            $ok = 'true';
            // check email.
            $sql = "SELECT * FROM ung_vien WHERE email = '$email'";
            $result = mysqli_query($conn_vn, $sql);
            $num = mysqli_num_rows($result);
            if ($num > 0) {
                $ok = 'false';
                $message .= "Email đã tồn tại. ";
            }

            if ($pass1 != $pass2) {
                $ok = 'false';
                $message .= "Mật khẩu không khớp. ";
            }

            if ($ok == 'true') {
                $password = password_hash($pass1, PASSWORD_DEFAULT);
                $sql = "INSERT INTO ung_vien (first_name, last_name, email, password, position, level, experience, moi_tot_nghiep, phone, birthday, quoc_tich, sex, wedding, quoc_gia, city, district, address, note, image, alias) VALUES ('$first_name', '$last_name', '$email', '$password', '', 0, 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0, '', '', '', '')";
                $result = mysqli_query($conn_vn, $sql);
                if ($result) {
                    $_SESSION['user_id_uv_gbvn'] = mysqli_insert_id($conn_vn);
                    echo '<script type="text/javascript">alert(\'Bạn đã đăng ký thành công!\');window.location.href="/tao-ho-so";</script>';
                } else {
                    echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
                }
            }
        }
    }
    dang_ky();
?>
<div class="gb-dangky-vnwork">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-offset-2">
                <div class="gb-dangnhap-vnwork-form">
                    <form action="" method="post">
                        <h1>Join Us Today!</h1>
                        <p>More than 1.000.000 Job Seekers found their dream jobs on VietnamWorks.</p>
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="" class="btn btn-default full-width facebook-btn">
                                    <span class="img-container m-r-xs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48">
                                            <path d="M44,38.44A5.56,5.56,0,0,1,38.44,44H9.56A5.56,5.56,0,0,1,4,38.44V9.56A5.56,5.56,0,0,1,9.56,4H38.44A5.56,5.56,0,0,1,44,9.56Z" style="fill:#3f51b5"></path>
                                            <path d="M35.52,25.11H31.78V39.56H26.22V25.11H22.89V20.67h3.33V18c0-3.9,1.62-6.21,6.22-6.21h3.78v4.44H33.68c-1.79,0-1.91.67-1.91,1.91v2.53h4.44Z" style="fill:#fff"></path>
                                        </svg>
                                    </span>
                                    <span>với tài khoản Facebook </span>
                                </a>
                            </div>
                            <div class="col-sm-6">
                                <a href="" class="btn btn-default full-width google-btn m-r-sm">
                                    <span class="img-container m-r-xs">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" version="1.1">
                                            <path style=" fill:#FFC107;" d="M 43.609375 20.082031 L 42 20.082031 L 42 20 L 24 20 L 24 28 L 35.304688 28 C 33.652344 32.65625 29.222656 36 24 36 C 17.371094 36 12 30.628906 12 24 C 12 17.371094 17.371094 12 24 12 C 27.058594 12 29.84375 13.152344 31.960938 15.039063 L 37.617188 9.382813 C 34.046875 6.054688 29.269531 4 24 4 C 12.953125 4 4 12.953125 4 24 C 4 35.046875 12.953125 44 24 44 C 35.046875 44 44 35.046875 44 24 C 44 22.660156 43.863281 21.351563 43.609375 20.082031 Z "></path>
                                            <path style=" fill:#FF3D00;" d="M 6.304688 14.691406 L 12.878906 19.511719 C 14.65625 15.109375 18.960938 12 24 12 C 27.058594 12 29.84375 13.152344 31.960938 15.039063 L 37.617188 9.382813 C 34.046875 6.054688 29.269531 4 24 4 C 16.316406 4 9.65625 8.335938 6.304688 14.691406 Z "></path>
                                            <path style=" fill:#4CAF50;" d="M 24 44 C 29.164063 44 33.859375 42.023438 37.410156 38.808594 L 31.21875 33.570313 C 29.210938 35.089844 26.714844 36 24 36 C 18.796875 36 14.382813 32.683594 12.71875 28.054688 L 6.195313 33.078125 C 9.503906 39.554688 16.226563 44 24 44 Z "></path>
                                            <path style=" fill:#1976D2;" d="M 43.609375 20.082031 L 42 20.082031 L 42 20 L 24 20 L 24 28 L 35.304688 28 C 34.511719 30.238281 33.070313 32.164063 31.214844 33.570313 C 31.21875 33.570313 31.21875 33.570313 31.21875 33.570313 L 37.410156 38.808594 C 36.972656 39.203125 44 34 44 24 C 44 22.660156 43.863281 21.351563 43.609375 20.082031 Z "></path>
                                        </svg>
                                    </span>
                                    <span>với tài khoản Google </span>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <span style="color: red;"><?= $message ?></span>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>First Name</label>
                                    <input type="text" name="first_name" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <input type="text" name="last_name" class="form-control" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" name="email" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="pass1" pattern=".{6,50}" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Password Confirm</label>
                            <input type="password" name="pass2" class="form-control" required>
                        </div>
                        <p>Passwords with : 6 to 50 characters, 1 uppercase, 1 number.</p>
                        <div class="form-group" style="text-align: center">
                            <button class="btn btn-warning" name="dang_ky"> Đăng ký</button>
                        </div>
                        <p>Already have an account?  <a href="/dang-nhap">Sign In</a></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>