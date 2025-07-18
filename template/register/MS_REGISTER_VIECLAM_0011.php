<?php 
  if (!isset($_SESSION['user_id_ntd_gbvn'])) {
    echo '<script>alert(\'Bạn chưa đăng nhập\');window.location.href="/"</script>';
  }

  function uploadPicture($src, $img_name, $img_temp){

        $src = $src.$img_name;//echo $src;

        if (!@getimagesize($src)){

            if (move_uploaded_file($img_temp, $src)) {

                return true;

            }

        }

    }

  function noi_bat () {
    global $conn_vn;
    if (isset($_POST['noibat'])) {
      $name = $_POST['name'];
      $tip = $_POST['tip'];
      $note = $_POST['note'];
      $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
      $banner = '';
      $logo = '';

      // $sql = "SELECT * FROM nha_tuyen_hot WHERE nha_tuyen_dung_id = $nha_tuyen_dung_id";
      // $result = mysqli_query($conn_vn, $sql);
      // $num = mysqli_num_rows($result);
      // if ($num > 0) {
      //   echo '<script type="text/javascript">alert(\'Đã tồn tại nhà tuyển dụng nổi bật.\')</script>';
      //   return false;
      // }

      $src= "images/";
        if(isset($_FILES['banner']) && $_FILES['banner']['name'] != ""){
          $banner = time().$nha_tuyen_dung_id.$_FILES['banner']['name'];
          uploadPicture($src, $banner, $_FILES['banner']['tmp_name']);
        }

        if(isset($_FILES['logo']) && $_FILES['logo']['name'] != ""){
          $logo = time().$nha_tuyen_dung_id.$_FILES['logo']['name'];
          uploadPicture($src, $logo, $_FILES['logo']['tmp_name']);
        }

      $image = '';
      if ($banner != '') {
        $image .= " , banner = '$banner'";
      }
      if ($logo != '') {
        $image .= " , logo = '$logo'";
      }

      $sql = "UPDATE nha_tuyen_hot SET name = '$name', tip = '$tip', note = '$note' $image WHERE nha_tuyen_dung_id = $nha_tuyen_dung_id";
      // echo $sql;
      $result = mysqli_query($conn_vn, $sql);
      if ($result) {
        echo '<script type="text/javascript">alert(\'Bạn đã sửa nhà tuyển dụng nổi bật thành công.\')</script>';
      } else {
        echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
      }
    }
  }
  noi_bat();

  $info = $action->getDetail('nha_tuyen_hot', 'nha_tuyen_dung_id', $_SESSION['user_id_ntd_gbvn']);
?>

<div class="container">
  <h2>Sửa nhà tuyển dụng nổi bật</h2>
  <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
    <div class="form-group">
      <label class="control-label col-sm-2" for="name">Tiêu đề:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" placeholder="Nhập tiêu đề" name="name" value="<?= $info['name'] ?>" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="tip">Chú thích:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="tip" placeholder="Nhập chú thích" name="tip" value="<?= $info['tip'] ?>" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="note">Mô tả:</label>
      <div class="col-sm-10">          
        <textarea class="form-control" rows="5" id="note" name="note" required><?= $info['note'] ?></textarea>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="banner">Banner:</label>
      <div class="col-sm-10">          
        <input type="file" class="form-control" id="banner" placeholder="" name="banner" >
        <img src="/images/<?= $info['banner'] ?>" alt="" width="400">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="logo">Logo:</label>
      <div class="col-sm-10">          
        <input type="file" class="form-control" id="logo" placeholder="" name="logo" >
        <img src="/images/<?= $info['logo'] ?>" alt="" width="100">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" name="noibat" class="btn btn-default">Cập nhật</button>
      </div>
    </div>
  </form>
</div>