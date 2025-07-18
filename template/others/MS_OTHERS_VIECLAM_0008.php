<?php 
	if (!isset($_SESSION['user_id_ntd_gbvn'])) {
    	echo '<script>alert(\'Bạn chưa đăng nhập\');window.location.href="/"</script>';
  	}
  	$ung_vien = $action_work->ung_vien_nop_don($_SESSION['user_id_ntd_gbvn'], $trang, 20);
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
    foreach ($ung_vien['data'] as $item) { 
    	$ungvien = $action->getDetail('ung_vien', 'id', $item['ung_vien_id']);
    ?>
      <tr>
        <td><a href="/thong-tin-ung-vien/<?= $item['ung_vien_id'] ?>"><?= $ungvien['first_name'].' '.$ungvien['last_name'] ?></a></td>
        <td><?= $action->getDetail('don_tuyen', 'id', $item['don_tuyen_id'])['name']; ?></td>
      </tr>
    <?php } ?>
    </tbody>
  </table>
  <div><?= $ung_vien['paging'] ?></div>
</div>