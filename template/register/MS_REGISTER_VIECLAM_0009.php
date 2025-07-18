<?php 
  if (!isset($_SESSION['user_id_ntd_gbvn'])) {
    echo '<script>alert(\'Bạn chưa đăng nhập\');window.location.href="/"</script>';
  }
  if (!isset($_GET['trang'])) {
    echo '<script>alert(\'Lỗi không hợp lệ.\');window.location.href="/"</script>';
  }
  function uploadPicture($src, $img_name, $img_temp){

        $src = $src.$img_name;//echo $src;

        if (!@getimagesize($src)){

            if (move_uploaded_file($img_temp, $src)) {

                return true;

            }

        }

    }

  $cap_bac = $action->getList('cap_bac', '', '', 'id', 'asc', '', '', '');
  $city = $action->getList('city', '', '', 'id', 'asc', '', '', '');
    $career = $action->getList('career', '', '', 'id', 'asc', '', '', '');
    $search_name = array();
    foreach ($city as $key => $row)
    {
        $search_name[$key] = $row['name'];
    }
    array_multisort($search_name, SORT_ASC, $city);

    // $nha_tuyen_dung = $action->getDetail('nha_tuyen_dung', 'id', $_SESSION['user_id_ntd_gbvn']);
    // $career_ntd = json_decode($nha_tuyen_dung['career']);
    //////////
    function don_tuyen ($id) {
      global $conn_vn;
      if (isset($_POST['don_tuyen'])) {
        $name = $_POST['name'];
        $alias = $_POST['alias'];
        $cap_bac = $_POST['cap_bac'];
        $career = $_POST['career'];$career = json_encode($career);
        $city = $_POST['city'];$city = json_encode($city);
        $salary1 = $_POST['salary1'];$salary1 = str_replace(",", "", $salary1);
        $salary2 = $_POST['salary2'];$salary2 = str_replace(",", "", $salary2);
        $mota = $_POST['mota'];$mota = str_replace("'", "\'", $mota);
        $yeucau = $_POST['yeucau'];$yeucau = str_replace("'", "\'", $yeucau);
        $email = $_POST['email'];
        $company = $_POST['company'];
        $quymo = $_POST['quymo'];
        $address = $_POST['address'];
        $phucloi1 = $_POST['phucloi1'];
        $phucloi2 = $_POST['phucloi2'];
        $phucloi3 = $_POST['phucloi3'];
        // $nha_tuyen_dung_id = $_SESSION['user_id_ntd_gbvn'];
        $image = '';
        $it = isset($_POST['it']) ? 1 : 0;
        $district = $_POST['district'];
        $street = $_POST['street'];
        $ky_nang = $_POST['ky_nang'];
        $company_note = $_POST['company_note'];
        $deadline = $_POST['deadline'];

        $src= "images/";
        if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){
                $image = time().$email.$_FILES['image']['name'];
                uploadPicture($src, $image, $_FILES['image']['tmp_name']);
            }

        if ($image == '') {
          $sql = "UPDATE don_tuyen SET name = '$name', alias = '$alias', cap_bac = $cap_bac, career = '$career', city = '$city', salary1 = $salary1, salary2 = $salary2, mota = '$mota', yeucau = '$yeucau', email = '$email', company = '$company', quymo = '$quymo', address = '$address', phucloi1 = '$phucloi1', phucloi2 = '$phucloi2', phucloi3 = '$phucloi3', it = $it, district = $district, street = $street, ky_nang = '$ky_nang', company_note = '$company_note', deadline = '$deadline' WHERE id = $id";
        } else {
          $sql = "UPDATE don_tuyen SET name = '$name', alias = '$alias', cap_bac = $cap_bac, career = '$career', city = '$city', salary1 = $salary1, salary2 = $salary2, mota = '$mota', yeucau = '$yeucau', email = '$email', company = '$company', quymo = '$quymo', address = '$address', phucloi1 = '$phucloi1', phucloi2 = '$phucloi2', phucloi3 = '$phucloi3', it = $it, district = $district, street = $street, ky_nang = '$ky_nang', company_note = '$company_note', deadline = '$deadline', image = '$image' WHERE id = $id";
        }
        
        $result = mysqli_query($conn_vn, $sql);
        if ($result) {
          echo '<script type="text/javascript">alert(\'Bạn đã sửa đơn tuyển dụng thành công!\')</script>';
        } else {
          echo '<script type="text/javascript">alert(\'Có lỗi xảy ra!\')</script>';
        }
        //phi-tuyen-dung
      }
    }
    don_tuyen($_GET['trang']);
    // var_dump($_SESSION);
    $info = $action->getDetail('don_tuyen', 'id', $_GET['trang']);
    $career_ntd = json_decode($info['career']);
    $city_ntd = json_decode($info['city']);
    $quan_ntd = $action_work->get_quan($city_ntd);
    $quan_count = count($quan_ntd);
    $duong_ntd = $action_work->get_duong($info['district']);
    $duong_count = count($duong_ntd);
?>
<link rel='stylesheet' href='/css/chosen/chosen.css'>
<style class="cp-pen-styles">
#output {
  padding: 20px;
  background: #dadada;
  display: none;
}
</style>
<div class="gb-suadontuyen-vietnam">
  <div id="output"></div>
  <div class="container">
    <h2>Mô tả công việc</h2>
    <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
      <div class="form-group">
        <label class="control-label col-sm-2" for="name">Chức danh:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="name" placeholder="" name="name" onchange="ChangeToSlug()" value="<?= $info['name'] ?>" required>
          <input type="hidden" name="alias" id="alias" value="<?= $info['alias'] ?>">
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="cap_bac">Cấp bậc:</label>
        <div class="col-sm-10">
          <select class="form-control" id="cap_bac" name="cap_bac" required>
            <?php foreach ($cap_bac as $item) { ?>
            <option value="<?= $item['id'] ?>" <?= $item['id']==$info['cap_bac'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            <?php } ?>
          </select>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="career">Ngành nghề:</label>
        <div class="col-sm-10">
          <select class="form-control chosen-select" id="career" name="career[]" data-placeholder="Yêu cầu chọn ngành nghề" multiple required>
            <?php foreach ($career as $item) { ?>
            <option value="<?= $item['id'] ?>" <?= in_array($item['id'], $career_ntd) ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            <?php } ?>
          </select>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="it">Việc làm Ngành IT:</label>
        <div class="col-sm-10">
          <div class="checkbox">
            <label><input type="checkbox" value="1" name="it" style="width: 50px;" <?= $info['it']==1 ? 'checked' : '' ?> ></label>
          </div>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="city">Nơi làm việc:</label>
        <div class="col-sm-10">
          <select class="form-control chosen-select" id="city" name="city[]" onchange="cityf(this)" data-placeholder="Yêu cầu chọn nơi làm việc" multiple required>
            <?php foreach ($city as $item) { ?>
            <option value="<?= $item['id'] ?>" <?= in_array($item['id'], $city_ntd) ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            <?php } ?>
          </select>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="city">Quận/Huyện:</label>
        <div class="col-sm-10">
          <select class="form-control" id="district" name="district" onchange="quanf(this)" data-placeholder="Yêu cầu chọn quận huyện" >
            <?php
            if ($quan_count != 0) {
              foreach ($quan_ntd as $item) { ?>
                <option value="<?= $item['id'] ?>" <?= $item['id']==$info['district'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            <?php  }
            } else { ?>
            <option value="0">No result</option>
            <?php } ?>
          </select>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="city">Đường:</label>
        <div class="col-sm-10">
          <select class="form-control" id="street" name="street" data-placeholder="Yêu cầu chọn đường" >
            <?php
            if ($duong_count != 0) {
              foreach ($duong_ntd as $item) { ?>
                <option value="<?= $item['id'] ?>" <?= $item['id']==$info['street'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            <?php  }
            } else { ?>
            <option value="0">No result</option>
            <?php } ?>
          </select>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="salary1">Mức lương:</label>
        <div class="col-sm-5">          
          <input type="text" class="form-control " id="salary1" placeholder="Từ" name="salary1" onkeyup="money(this)" value="<?= number_format($info['salary1']) ?>" required>
        </div>
        <div class="col-sm-5">          
          <input type="text" class="form-control " id="salary2" placeholder="Đến" name="salary2" onkeyup="money(this)" value="<?= number_format($info['salary2']) ?>" required>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="ky_nang">Kỹ năng:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="ky_nang" placeholder="" name="ky_nang" value="<?= $info['ky_nang'] ?>" required>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="deadline">Hạn nộp hồ sơ:</label>
        <div class="col-sm-10">
          <input type="date" class="form-control" id="deadline" placeholder="" name="deadline" value="<?= $info['deadline'] ?>" required>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="mota">Mô tả:</label>
        <div class="col-sm-10">
          <textarea class="form-control" rows="10" id="mota" name="mota" required><?= $info['mota'] ?></textarea>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="yeucau">Yêu cầu công việc:</label>
        <div class="col-sm-10">
          <textarea class="form-control" rows="10" id="yeucau" name="yeucau" required><?= $info['yeucau'] ?></textarea>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="email">Địa chỉ email nhận hồ sơ:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="email" placeholder="" name="email" value="<?= $info['email'] ?>" required>
        </div>
      </div>
      <h2>Công ty</h2>
      <div class="form-group">
        <label class="control-label col-sm-2" for="company">Tên công ty:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="company" placeholder="" name="company" value="<?= $info['company'] ?>" required>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="quymo">Quy mô công ty:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="quymo" placeholder="" name="quymo" value="<?= $info['quymo'] ?>" >
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="company_note">Mô tả công ty:</label>
        <div class="col-sm-10">
          <textarea class="form-control" rows="10" id="company_note" name="company_note" ><?= $info['company_note'] ?></textarea>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="address">Địa chỉ công ty:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="address" placeholder="Không bắt buộc" name="address" value="<?= $info['address'] ?>" >
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="phucloi1">Phúc lợi từ công ty:</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="phucloi1" placeholder="Mức lương cạnh tranh" name="phucloi1" value="<?= $info['phucloi1'] ?>" >
          <input type="text" class="form-control" id="phucloi2" placeholder="Các chế độ ưu đãi đặc biệt từ mobifone" name="phucloi2" value="<?= $info['phucloi2'] ?>" >
          <input type="text" class="form-control" id="phucloi3" placeholder="Cơ hội thăng tiến" name="phucloi3" value="<?= $info['phucloi3'] ?>" >
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="image">Logo công ty:</label>
        <div class="col-sm-10">
          <input type="file" class="form-control" id="image" placeholder="" name="image" >
          <?php if ($info['image'] != '') { ?>
          <img src="/images/<?= $info['image'] ?>" alt="" width="100">
          <?php } else { ?>
          <img src="/images/nophoto/no_image.jpg" alt="" width="100">
          <?php } ?>
        </div>
      </div>
      <div class="form-group">        
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-default" name="don_tuyen">Sửa đơn tuyển</button>
        </div>
      </div>
    </form>
  </div>
</div>
<script src='/css/chosen/chosen.jquery.js'></script>
<script >
document.getElementById('output').innerHTML = location.search;
$(".chosen-select").chosen({max_selected_options: 3});
//# sourceURL=pen.js
</script>
<script>
    function money (data) {
        // alert('phi');
        var so = data.value;
        var rong = data.value;
        so = so.split(",").join("");
        so = so.replace(/[^\d]/,'');
        so = Number(so);

        if (rong === "") {
            document.getElementById(data.id).value = "";
        } else {
            document.getElementById(data.id).value = number_format(so);
        }      
    }

    function number_format (number, decimals, dec_point, thousands_sep) {
        var n = number, prec = decimals;

        var toFixedFix = function (n,prec) {
            var k = Math.pow(10,prec);
            return (Math.round(n*k)/k).toString();
        };

        n = !isFinite(+n) ? 0 : +n;
        prec = !isFinite(+prec) ? 0 : Math.abs(prec);
        var sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep;
        var dec = (typeof dec_point === 'undefined') ? '.' : dec_point;

        var s = (prec > 0) ? toFixedFix(n, prec) : toFixedFix(Math.round(n), prec); 
        //fix for IE parseFloat(0.55).toFixed(0) = 0;

        var abs = toFixedFix(Math.abs(n), prec);
        var _, i;

        if (abs >= 1000) {
            _ = abs.split(/\D/);
            i = _[0].length % 3 || 3;

            _[0] = s.slice(0,i + (n < 0)) +
                   _[0].slice(i).replace(/(\d{3})/g, sep+'$1');
            s = _.join(dec);
        } else {
            s = s.replace('.', dec);
        }

        var decPos = s.indexOf(dec);
        if (prec >= 1 && decPos !== -1 && (s.length-decPos-1) < prec) {
            s += new Array(prec-(s.length-decPos-1)).join(0)+'0';
        }
        else if (prec >= 1 && decPos === -1) {
            s += dec+new Array(prec).join(0)+'0';
        }
        return s; 
        // alert(s);
    }
</script>
<script>
    function ChangeToSlug(){
        var title, slug;
        //alert ("a");
        //Lấy text từ thẻ input title 
        title = document.getElementById("name").value;
        // document.getElementById('title_seo').value = title;
        //Đổi chữ hoa thành chữ thường
        slug = title.toLowerCase();
     
        //Đổi ký tự có dấu thành không dấu
        slug = slug.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, 'a');
        slug = slug.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, 'e');
        slug = slug.replace(/i|í|ì|ỉ|ĩ|ị/gi, 'i');
        slug = slug.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, 'o');
        slug = slug.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, 'u');
        slug = slug.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, 'y');
        slug = slug.replace(/đ/gi, 'd');
        //Xóa các ký tự đặt biệt
        slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
        //Đổi khoảng trắng thành ký tự gạch ngang
        slug = slug.replace(/ /gi, "-");
        slug = slug.replace(/[^a-z0-9\-]+/gi, '');
        //Đổi nhiều ký tự gạch ngang liên tiếp thành 1 ký tự gạch ngang
        //Phòng trường hợp người nhập vào quá nhiều ký tự trắng
        slug = slug.replace(/\-\-\-\-\-/gi, '-');
        slug = slug.replace(/\-\-\-\-/gi, '-');
        slug = slug.replace(/\-\-\-/gi, '-');
        slug = slug.replace(/\-\-/gi, '-');
        //Xóa các ký tự gạch ngang ở đầu và cuối
        slug = '@' + slug + '@';
        slug = slug.replace(/\@\-|\-\@|\@/gi, '');
        //In slug ra textbox có id “slug”
        document.getElementById('alias').value = slug;
        // document.getElementById('title_seo').value = title;
    }
</script>
<script type="text/javascript">
  function cityf (data) {
    var id = [];
    // alert(data.options[0].value);
    for (var i=0; i < data.options.length; i++) {
      if (data.options[i].selected) {
            id.push(data.options[i].value);
            // alert(data.options[i].value);
      }
    }
    // alert(id);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       // alert(out);
       document.getElementById("district").innerHTML = out;
       document.getElementById("street").innerHTML = '<option value="0">No result</option>';
      }
    };
    xhttp.open("GET", "/functions/ajax/get_quan.php?id="+id, true);
    xhttp.send();
  }

  function quanf (data) {
    var id = data.value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       // alert(out);
       document.getElementById("street").innerHTML = out;
      }
    };
    xhttp.open("GET", "/functions/ajax/get_duong.php?id="+id, true);
    xhttp.send();
  }
</script>