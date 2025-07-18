<?php
    $rows = $acc->getList("street","","","id","asc",$trang, 20, "duong");//var_dump($rows);

    function getDistrict ($id) {
        global $conn_vn;
        $sql = "SELECT * FROM district WHERE id = $id";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        return $row;
    }
?>	
    <div class="boxPageNews">
        <h1><a href="/admin/index.php?page=them-duong">Thêm</a></h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên Đường</th>
                    <th>Quận huyện</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['name']?></td>
                            <td><?= getDistrict($row['district_id'])['name'] ?></td>
                            <td style="float: none;"><a href="/admin/index.php?page=xoa-duong&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="/admin/index.php?page=sua-duong&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>             