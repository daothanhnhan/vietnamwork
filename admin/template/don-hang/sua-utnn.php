<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	function nganh_nghe ($uu_tien_nganh_nghe_id) {
		global $conn_vn;
		$sql = "SELECT * FROM uu_tien_nganh_nghe WHERE id = $uu_tien_nganh_nghe_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		$dang_tuyen_dung_id = $row['dang_tuyen_dung_id'];

		$sql = "SELECT * FROM dang_tuyen_dung WHERE id = $dang_tuyen_dung_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		$don_tuyen_id = $row['don_tuyen_id'];

		$sql = "SELECT * FROM don_tuyen WHERE id = $don_tuyen_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		$career = $row['career'];
		$career = json_decode($career);
		$career = implode(',', $career);

		$sql = "SELECT * FROM career WHERE id IN ($career)";
		$result = mysqli_query($conn_vn, $sql);
		$rows = array();

		while ($row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}

		return $rows;
	}

	function uu_tien_nganh_nghe () {
		global $conn_vn;
		if (isset($_POST['edit_utnn'])) {
			$src= "../images/";
			// $src = "uploads/";

			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);

			}

			$date_start_ut = $_POST['date_start_ut'];
			$date_end_ut = $_POST['date_end_ut'];
			$id = $_POST['id'];
			$career_id = $_POST['career_id'];

			$sql = "UPDATE uu_tien_nganh_nghe SET date_start_ut = '$date_start_ut', date_end_ut = '$date_end_ut', career_id = $career_id WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một ưu tien ngành nghề.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	uu_tien_nganh_nghe();

	$utnn = $action->getDetail('uu_tien_nganh_nghe_phu', 'id', $_GET['id']);
	$info = $action->getDetail('uu_tien_nganh_nghe', 'id', $utnn['uu_tien_nganh_nghe_id']);

	$nganh_nghe = nganh_nghe($info['id']);//var_dump($nganh_nghe);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=sua-don-hang&id=<?= $utnn['don_hang_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
        	<input type="hidden" name="id" value="<?= $info['id'] ?>">
            <p class="titleRightNCP">Ngày bắt đầu</p>
            <input type="date" class="txtNCP1" name="date_start_ut" value="<?= $info['date_start_ut'] ?>" required/>
            <p class="titleRightNCP">Ngày kết thúc</p>
            <input type="date" class="txtNCP1" name="date_end_ut" value="<?= $info['date_end_ut'] ?>" required/>
            <p class="titleRightNCP">Ngành nghề</p>
            <select name="career_id" class="txtNCP1">
            	<?php foreach ($nganh_nghe as $item) { ?>
            	<option value="<?= $item['id'] ?>" <?= $item['id']==$info['career_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="edit_utnn">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>