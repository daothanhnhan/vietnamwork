<?php
    $rows = $acc->getList("goi_dich_vu","","","id","asc",$trang, 20, "goi-dich-vu");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <!-- <h1><a href="index.php?page=them-goi-dich-vu">Thêm gói dịch vụ</a></h1> -->
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên dịch vụ</th>
                    <th>Giá</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        if ($d==13) {
                            break;
                        }
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['name']?></td>
                            <td><?= number_format($row['price']) ?></td>
                            <td style="float: none;"><a href="index.php?page=xoa-goi-dich-vu&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')"></a>  <a href="index.php?page=sua-goi-dich-vu&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
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