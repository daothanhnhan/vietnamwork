<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	function listDistrict () {
		global $conn_vn;
		$sql = "SELECT * FROM district";
		$result = mysqli_query($conn_vn, $sql);
		$rows = array();
		$num = mysqli_num_rows($result);
		if ($num > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				$rows[] = $row;
			}
		}
		return $rows;
	}

	$list_district = listDistrict();

	function duong ($id) {
		global $conn_vn;
		if (isset($_POST['add_duong'])) {
			// $src= "../images/";
			// $src = "uploads/";

			// if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

			// 	uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);

			// }

			$name = $_POST['name'];
			$district_id = $_POST['district_id'];

			$sql = "UPDATE street SET name = '$name', district_id = $district_id WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một Đường.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	duong($_GET['id']);

	$info = $action->getDetail('street', 'id', $_GET['id']);
?>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
<style type="text/css" media="screen">
	.selectpicker li {
		float: none;
	}
</style>
<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin Đường<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=duong">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên Đường</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $info['name'] ?>" required/>
            <select class="form-control selectpicker" name="district_id" data-show-subtext="true" data-live-search="true">
            	<?php foreach ($list_district as $item) { ?>
            	<option value="<?= $item['id'] ?>" <?= $item['id']==$info['district_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_duong">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>