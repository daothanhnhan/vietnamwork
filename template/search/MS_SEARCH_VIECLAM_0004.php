<?php 
    $find_career = $action->getList('career', '', '', 'id', 'asc', '', '', '');
    $find_city = $action->getList('city', '', '', 'id', 'asc', '', '', '');
    $find_salary = $action->getList('muc_luong', '', '', 'id', 'asc', '', '', '');
    $cap_bac = $action->getList('cap_bac', '', '', 'id', 'asc', '', '', '');
?>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
<div class="gb-search-filter-vieclam">
    <div class="container">
        <div class="gb-search-filter-vieclam-bg">
            <h4>Tìm Công Việc Mơ Ước. Nâng Bước Thành Công!</h4>
            <form action="/index.php" method="get" accept-charset="utf-8">
                <input type="hidden" name="page" value="tim-kiem">
                <div class="row">
                    <!-- <div class="col-md-2 padding-5px ">
                        <div class="form-group">
                            <input type="text" name="name" placeholder="Tiêu đề công việc, vị trí, địa điểm làm việc ...." class="form-control">
                        </div>
                    </div> -->
                    <div class="col-md-3 padding-5px">
                        <div class="form-group">
                            <select class="selectpicker form-control" name="career" data-show-subtext="true" data-live-search="true">
                                <option value="0">Tất cả công việc...</option>
                                <?php foreach ($find_career as $item) { ?>
                                <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2 padding-5px">
                        <div class="form-group">
                            <select class="selectpicker form-control" name="cap_bac" data-show-subtext="true" data-live-search="true">
                                <option value="0">Tất cả chức danh...</option>
                                <?php foreach ($cap_bac as $item) { ?>
                                <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2 padding-5px">
                        <div class="form-group">
                            <select class="selectpicker form-control" name="city" onchange="cityf(this)" data-show-subtext="true" data-live-search="true">
                                <option value="0">Tất cả thành phố</option>
                                <?php foreach ($find_city as $item) { ?>
                                <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2 padding-5px">
                        <div class="form-group">
                            <select class="selectpicker form-control" id="district" name="district" onchange="quanf(this)" data-show-subtext="true" data-live-search="true">
                                <option value="0">Tất cả Quận</option>
                            </select>
                        </div>
                    </div>
                    <!-- <div class="col-md-2 padding-5px">
                        <div class="form-group">
                            <select class="selectpicker form-control" id="street" name="street" data-show-subtext="true" data-live-search="true">
                                <option value="0">Tên Phường</option>
                                
                            </select>
                        </div>
                    </div> -->
                    <div class="col-md-2 padding-5px">
                        <div class="form-group">
                            <select class="selectpicker form-control" name="salary" data-show-subtext="true" data-live-search="true">
                                <option value="0">Chọn mức lương</option>
                                <?php foreach ($find_salary as $item) { ?>
                                <option value="<?= $item['tu'] . '-' . $item['den'] ?>"><?= number_format($item['tu']) . ' - ' . number_format($item['den']) ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2 padding-5px">
                        <div class="form-group">
                            <button class="btn btn-timkiem-vieclam">Tìm kiếm</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>
<script type="text/javascript">
    function cityf (data) {
        var id = data.value;
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           var out = this.responseText;
           // alert(out);
           document.getElementById("district").innerHTML = '<option value="0">Tất cả Quận</option>' + out;
           // document.getElementById("street").innerHTML = '<option value="0">No result</option>';
           $('.selectpicker').selectpicker('refresh');
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
           document.getElementById("street").innerHTML = '<option value="0">Tên đường</option>' + out;
           $('.selectpicker').selectpicker('refresh');
          }
        };
        xhttp.open("GET", "/functions/ajax/get_duong.php?id="+id, true);
        xhttp.send();
    }
</script>