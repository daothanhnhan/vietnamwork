<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function viec_lam_cap_quan_ly () {
		global $conn_vn;
		if (isset($_POST['edit_dtd'])) {
			$src= "../images/";
			// $src = "uploads/";

			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);

			}

			$date_start = $_POST['date_start'];
			$date_end = $_POST['date_end'];
			$id = $_POST['id'];

			$sql = "UPDATE viec_lam_cap_quan_ly SET date_start_ql = '$date_start', date_end_ql = '$date_end' WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một Việc làm cấp quản lý.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	viec_lam_cap_quan_ly();

	$vlcql = $action->getDetail('viec_lam_cap_quan_ly_phu', 'id', $_GET['id']);
	$info = $action->getDetail('viec_lam_cap_quan_ly', 'id', $vlcql['viec_lam_cap_quan_ly_id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=sua-don-hang&id=<?= $vlcql['don_hang_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
        	<input type="hidden" name="id" value="<?= $info['id'] ?>">
            <p class="titleRightNCP">Ngày bắt đầu</p>
            <input type="date" class="txtNCP1" name="date_start" value="<?= $info['date_start_ql'] ?>" required/>
            <p class="titleRightNCP">Ngày kết thúc</p>
            <input type="date" class="txtNCP1" name="date_end" value="<?= $info['date_end_ql'] ?>" required/>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="edit_dtd">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>