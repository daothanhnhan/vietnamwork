<?php 
	if (!isset($_SESSION['user_id_uv_gbvn'])) {
    	echo '<script>alert(\'Bạn chưa đăng nhập\');window.location.href="/"</script>';
  	}
  	$dontuyen = $action_work->viec_ung_tuyen($_SESSION['user_id_uv_gbvn']);
?>
<div class="container">
  <h2>Ứng viên nộp đơn</h2>
           
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Ứng viên</th>
        <th>Đơn tuyển</th>
      </tr>
    </thead>
    <tbody>
    <?php 
    foreach ($dontuyen as $item) { 
    	$ungvien = $action->getDetail('ung_vien', 'id', $item['ung_vien_id']);
    ?>
      <tr>
        <td><?= $ungvien['first_name'].' '.$ungvien['last_name'] ?></td>
        <td><a href="/chi-tiet-don-tuyen/<?= $item['don_tuyen_id'] ?>"><?= $action->getDetail('don_tuyen', 'id', $item['don_tuyen_id'])['name']; ?></a></td>
      </tr>
    <?php } ?>
    </tbody>
  </table>
</div>