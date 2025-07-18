<?php 
$rows = $action->getList('nha_tuyen_hot','','','id','desc',$trang,20,'noi-bat');//var_dump($rows_lien_he);die();
?>
<div class="container">
  <h2>Bảng nhà tuyển dụng nổi bật.</h2>            
  <table class="table">
    <thead>
      <tr>
      	<th>Nhà tuyển</th>
        <th>Trạng thái duyệt</th>
      </tr>
    </thead>
    <tbody>
    <?php foreach ($rows['data'] as $item) { ?>
      <tr>
        <td><?php echo $action->getDetail('nha_tuyen_dung', 'id', $item['nha_tuyen_dung_id'])['company'];?></td>
        <td><input type="checkbox" name="" onclick="nha_tuyen_hot(<?= $item['id'] ?>)" <?= $item['state']==1 ? 'checked' : '' ?> ></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
<?php
    echo $rows['paging']; 
?>
<script type="text/javascript">
  function nha_tuyen_hot (id) {
    // alert(id);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       // document.getElementById("demo").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", "/functions/ajax/nha_tuyen_hot.php?id="+id, true);
    xhttp.send();
  }
</script>