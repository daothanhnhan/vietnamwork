<?php 
  if (!isset($_SESSION['user_id_ntd_gbvn'])) {
    echo '<script>alert(\'Bạn chưa đăng nhập\');window.location.href="/"</script>';
  }
	$don_tuyen = $action->getList('don_tuyen', 'nha_tuyen_dung_id', $_SESSION['user_id_ntd_gbvn'], 'id', 'asc', '', '', '');
  $check_hot = $action_work->check_nhatuyen_hot($_SESSION['user_id_ntd_gbvn'])
	// var_dump($_SESSION);
?>

<div class="gb-thongtinnhanhatuyendung">
  <div class="container">
    <div class="gb-thongtinnhanhatuyendung-title">
      <p><a href="/them-don-tuyen"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Thêm đơn tuyển</a></p>
      <p><a href="/phi-tuyen-dung"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Các gói dịch vụ</a></p>
      <p><a href="/tim-kiem-ung-vien"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Tìm kiếm ứng viên</a></p>
      <?php if ($check_hot) { ?>
      <p><a href="/sua-nha-tuyen-noi-bat"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Sửa nhà tuyển dụng nổi bật</a></p>
      <?php } else { ?>
      <p><a href="/them-nha-tuyen-noi-bat"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Thêm nhà tuyển dụng nổi bật</a></p>
      <?php } ?>
      <p><a href="/ung-vien-nop-don"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Ứng viên nộp đơn</a></p>
    </div>
    <h4>Danh sách đơn tuyển dụng</h4>            
    <table class="table">
      <thead>
        <tr>
          <th>Chức danh</th>
          <th>Hết hạn</th>
          <th>Hoạt động</th>
        </tr>
      </thead>
      <tbody>
      <?php foreach ($don_tuyen as $item) { ?>
        <tr>
          <td><?= $item['name'] ?></td>
          <td>Từ <?= $action_work->dang_tuyen_dung($item['id'])['date_start_dtd'] ?> Đến <?= $action_work->dang_tuyen_dung($item['id'])['date_end_dtd'] ?></td>
          <td><a href="/sua-don-tuyen/<?= $item['id'] ?>">Sửa</a> | <span style="cursor: pointer;" onclick="mua_dichvu(<?= $item['id'] ?>)">Mua dịch vụ</span> | <a href="/cac-goi-khac/<?= $item['id'] ?>" title="">Các gói khác</a></td>
        </tr>
      <?php } ?>
      </tbody>
    </table>
  </div>
</div>
<script type="text/javascript">
  function mua_dichvu (id) {
     var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
         // var out = this.responseText;
         window.location.href = "/phi-tuyen-dung";
        }
      };
      xhttp.open("GET", "/functions/ajax/mua_dichvu.php?id="+id, true);
      xhttp.send();
  }
</script>