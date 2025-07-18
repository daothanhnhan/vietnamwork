<?php 
  if (!isset($_SESSION['user_id_ntd_gbvn'])) {
    echo '<script>alert(\'Bạn chưa đăng nhập\');window.location.href="/"</script>';
  }
	if (!isset($_GET['trang'])) {
		echo '<script type="text/javascript">alert(\'Lỗi không hợp lệ.\');window.location.href="/"</script>';
	}

	$don_tuyen = $action->getDetail('don_tuyen', 'id', $_GET['trang']);
	$career = $don_tuyen['career'];
	$career = json_decode($career);
  $arr_dtd = $action->getList('dang_tuyen_dung', 'don_tuyen_id', $don_tuyen['id'], 'id', 'asc', '', '', '');
  $count_dtd = count($arr_dtd);
	$dang_tuyen_dung = $action->getDetail('dang_tuyen_dung', 'don_tuyen_id', $_GET['trang']);
	$utnn = $action->getList("uu_tien_nganh_nghe","dang_tuyen_dung_id",$dang_tuyen_dung['id'],"id","asc",'', '', '');
	$gtddd = $action->getList("gia_tang_do_dam_do","dang_tuyen_dung_id",$dang_tuyen_dung['id'],"id","asc",'', '', '');
	$gtut = $action->getList("gia_tang_uu_tien","dang_tuyen_dung_id",$dang_tuyen_dung['id'],"id","asc",'', '', '');
	$tdlmht = $action->getList("tu_dong_lam_moi_hang_tuan","dang_tuyen_dung_id",$dang_tuyen_dung['id'],"id","asc",'', '', '');
	$tdlmhn = $action->getList("tu_dong_lam_moi_hang_ngay","dang_tuyen_dung_id",$dang_tuyen_dung['id'],"id","asc",'', '', '');
	$vlcql = $action->getList("viec_lam_cap_quan_ly","dang_tuyen_dung_id",$dang_tuyen_dung['id'],"id","asc",'', '', '');
	$vltc = $action->getList("viec_lam_trang_chu","dang_tuyen_dung_id",$dang_tuyen_dung['id'],"id","asc",'', '', '');
	$lmt = $action->getList("lam_moi_tin","dang_tuyen_dung_id",$dang_tuyen_dung['id'],"id","asc",'', '', '');
	$vlth = $action->getList("viec_lam_thu_hut","dang_tuyen_dung_id",$dang_tuyen_dung['id'],"id","asc",'', '', '');
  $tkuv = $action->getList("tim_kiem_ung_vien","nha_tuyen_dung_id",$don_tuyen['nha_tuyen_dung_id'],"id","asc",'', '', '');
	$banner = $action->getList("banner_trang_chu","nha_tuyen_dung_id",$don_tuyen['nha_tuyen_dung_id'],"id","asc",'', '', '');
    
?>

<div class="container">
  <h2>Các gói khác</h2>
          
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Gói dịch vụ</th>
        <th>Ngày hết hạn</th>
        <th>Khác</th>
      </tr>
    </thead>
    <?php if ($count_dtd > 0) { ?> 
    <tbody>
    <?php foreach ($utnn as $item) { ?>
      <tr>
        <td>Ưu tiên ngành nghề</td>
        <td>Từ <?= $item['date_start_ut'] ?> Đến <?= $item['date_end_ut'] ?></td>
        <td>
        	<span id="nghe_ut"><?= $action->getDetail('career', 'id', $item['career_id'])['name'] ?></span>
        	<select name="" onchange="nghe(this, <?= $item['id'] ?>)">
        		<?php foreach ($career as $id) { ?>
        		<option value="<?= $id ?>" <?= $id==$item['career_id'] ? 'selected' : '' ?> ><?= $action->getDetail('career', 'id', $id)['name'] ?></option>
        		<?php } ?>
        	</select>
        </td>
      </tr>
    <?php } ?>
    <?php foreach ($gtddd as $item) { ?>
      <tr>
        <td>Gia tăng độ đậm & đỏ</td>
        <td>Từ <?= $item['date_start'] ?> Đến <?= $item['date_end'] ?></td>
        <td></td>
      </tr>
    <?php } ?>
    <?php foreach ($gtut as $item) { ?>
      <tr>
        <td>Gia tăng ưu tiên ngành nghề</td>
        <td>Từ <?= $item['date_start_gtut'] ?> Đến <?= $item['date_end_gtut'] ?></td>
        <td>
        	<?php 
        	foreach ($career as $id) { 
        		echo $action->getDetail('career', 'id', $id)['name'].'<br>';
			}
			?>
        </td>
      </tr>
    <?php } ?>
    <?php foreach ($tdlmht as $item) { ?>
      <tr>
        <td>Tự động làm mới tin tuyển dủng hàng tuần</td>
        <td>Từ <?= $item['date_start_ht'] ?> Đến <?= $item['date_end_ht'] ?></td>
        <td>làm mới vào ngày 7<br>làm mới vào ngày 14<br>làm mới vào ngày 21</td>
      </tr>
    <?php } ?>
    <?php foreach ($tdlmhn as $item) { ?>
      <tr>
        <td>Tự động làm mới tin tuyển dủng hàng ngày</td>
        <td>Từ <?= $item['date_start_hn'] ?> Đến <?= $item['date_end_hn'] ?></td>
        <td></td>
      </tr>
    <?php } ?>
    <?php foreach ($vlcql as $item) { ?>
      <tr>
        <td>Việc làm cấp quản lý</td>
        <td>Từ <?= $item['date_start_ql'] ?> Đến <?= $item['date_end_ql'] ?></td>
        <td></td>
      </tr>
    <?php } ?>
    <?php foreach ($vltc as $item) { ?>
      <tr>
        <td>Việc làm trên trang chủ</td>
        <td>Từ <?= $item['date_start_tc'] ?> Đến <?= $item['date_end_tc'] ?></td>
        <td></td>
      </tr>
    <?php } ?>
    <?php foreach ($lmt as $item) { ?>
      <tr>
        <td>Làm mới tin tuyển dụng</td>
        <td>Từ <?= $item['date_start_lmt'] ?> Đến <?= $item['date_end_lmt'] ?></td>
        <td></td>
      </tr>
    <?php } ?>
    <?php foreach ($vlth as $item) { ?>
      <tr>
        <td>Việc làm thu hút</td>
        <td>Từ <?= $item['date_start_th'] ?> Đến <?= $item['date_end_th'] ?></td>
        <td></td>
      </tr>
    <?php } ?>
    <?php foreach ($tkuv as $item) { ?>
      <tr>
        <td>Tìm kiếm ưng viên</td>
        <td>Từ <?= $item['date_start_tk'] ?> Đến <?= $item['date_end_tk'] ?></td>
        <td>Điểm : <?= $item['diem'] ?></td>
      </tr>
    <?php } ?>
    <?php foreach ($banner as $item) { ?>
      <tr>
        <td>Banner ở trang chủ</td>
        <td>Từ <?= $item['date_start_b1'] ?> Đến <?= $item['date_end_b1'] ?></td>
        <td></td>
      </tr>
    <?php } ?>
    </tbody>
    <?php } ?>
  </table>

</div>
<script type="text/javascript">
	function nghe (data, id) {
		// alert(data.value);
		var career = data.value;
		var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		     document.getElementById("nghe_ut").innerHTML = this.responseText;
		    }
		  };
		  xhttp.open("GET", "/functions/ajax/set_nghe_uutien.php?id="+id+"&career="+career, true);
		  xhttp.send();
	}
</script>