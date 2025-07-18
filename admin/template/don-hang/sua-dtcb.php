<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function dang_tuyen_dung () {
		global $conn_vn;
		if (isset($_POST['edit_dtd'])) {
			$src= "../images/";
			// $src = "uploads/";

			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);

			}

			$date_start_dtd = $_POST['date_start_dtd'];
			$date_end_dtd = $_POST['date_end_dtd'];
			$id = $_POST['id'];

			$sql = "UPDATE dang_tuyen_dung SET date_start_dtd = '$date_start_dtd', date_end_dtd = '$date_end_dtd' WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một đăng tuyển cơ bản.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	dang_tuyen_dung();

	$dtcb = $action->getDetail('dang_tuyen_co_ban', 'id', $_GET['id']);
	$info = $action->getDetail('dang_tuyen_dung', 'id', $dtcb['dang_tuyen_dung_id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=sua-don-hang&id=<?= $dtcb['don_hang_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
        	<input type="hidden" name="id" value="<?= $info['id'] ?>">
            <p class="titleRightNCP">Ngày bắt đầu</p>
            <input type="date" class="txtNCP1" name="date_start_dtd" value="<?= $info['date_start_dtd'] ?>" required/>
            <p class="titleRightNCP">Ngày kết thúc</p>
            <input type="date" class="txtNCP1" name="date_end_dtd" value="<?= $info['date_end_dtd'] ?>" required/>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="edit_dtd">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>