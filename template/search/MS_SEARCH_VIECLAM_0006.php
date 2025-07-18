<?php 
  if (!isset($_SESSION['user_id_ntd_gbvn'])) {
    echo '<script>alert(\'Bạn chưa đăng nhập\');window.location.href="/"</script>';
  }
  $tim_kiem = $action_work->search_ungvien($trang, 20);
  
  if (isset($_GET['find'])) {
    $action_work->down_diem($_SESSION['user_id_ntd_gbvn']);
  }
  $info_timkien = $action_work->show_info_timkiem($_SESSION['user_id_ntd_gbvn']);
  $check = $action_work->check_timkiem($_SESSION['user_id_ntd_gbvn']);
?>
<div class="container">
  <h2>Tìm kiếm ứng viên</h2>
  <p>Điểm: <span><?= $info_timkien['diem'] ?></span></p>
  <?php if ($check) { ?>
  <form action="/index.php" method="get">
    <div class="form-group">
      <input type="hidden" name="page" value="tim-kiem-ung-vien">
      <input type="text" class="form-control" id="q" placeholder="Enter search" name="q">
    </div>
    <button type="submit" class="btn btn-default" name="find">Tìm kiến</button>
  </form>   
  <?php } else { ?>
    <h1>Bạn không đủ điều kiện để tìm kiếm</h1>
  <?php } ?>  
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Chức danh</th>
        <th>Chi tiết</th>
      </tr>
    </thead>
    <?php if (isset($_GET['q'])) { ?>
    <tbody>
      <?php foreach ($tim_kiem['data'] as $item) { ?>
      <tr>
        <td><?= $item['first_name'] ?></td>
        <td><?= $item['last_name'] ?></td>
        <td><?= $item['position'] ?></td>
        <td><a href="/thong-tin-ung-vien/<?= $item['id'] ?>">Chi tiết</a></td>
      </tr>
      <?php } ?>
    </tbody>
    <?php } ?>
  </table>
  <?= $tim_kiem['paging'] ?>
</div>