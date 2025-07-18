<?php

if (isset($_GET['search']) && !empty($_GET['search']))
{
    $rows = $action->getSearchAdmin('cart', array(
            'name_buyer', 'mail_buyer', 'phone_buyer', 'address_buyer', 'note_buyer'
    ), $_GET['search'], $trang, 20, $_GET['page']);
    // $rows = $rows['data'];
}
else
{
    // $rows = $order->getListOrder();
     if (isset($_GET['trang'])) {
        $trang = $_GET['trang'];
        $start = $trang -1;
        $start = $start*20;
    } else {
        $trang = 1;
        $start = 0;
    }
    // $rows = $order->getListOrder();
    $sql = "SELECT * From don_hang Order By id DESC Limit $start,20";
    $result = mysqli_query($conn_vn, $sql);
    $rows1 = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $rows1[] = $row;
    }
    $rows = array('data' => $rows1);
}
?>

<div class="boxPageNews">
    
    <div class="titleNP">
        <p class="colNP0"><input type="checkbox" name="" value=""></p>
        <p class="colNP1">Đơn hàng</p>
        <p class="colNP2">Ngày đặt</p>
        <p class="colNP3">Khách hàng</p>
        <p class="colNP4">Tổng tiền</p>
        <p class="colNP6">Có VAT</p>
    </div>
    <ul class="titleNP">
        <?php foreach($rows['data'] as $rowOrder) :?>
            <li>
                <p class="colNP0_2"><input type="checkbox" name="ckAction" id="ckAction" value=""></p>
                <div class="colNP1_2">
                    <a href="index.php?page=sua-don-hang&id=<?php echo $rowOrder['id']; ?>" title="">#<?php echo $rowOrder['id']; ?></a>
                </div>
                <p class="colNP2_2"><?php echo $rowOrder['ngay']; ?></p>
                <p class="colNP3_2"><?php echo $action->getDetail('nha_tuyen_dung', 'id', $rowOrder['nha_tuyen_dung_id'])['company'];?></p>
                <p class="colNP4_2"><?php echo number_format($rowOrder['total']);?> đ</p>
                <p class="colNP6_2"><?php echo number_format($rowOrder['vat'],"0","",".");?> đ</p>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
<?php  

if (isset($_GET['search']) && !empty($_GET['search'])) {
    echo '<div>'.$rows["paging"].'</div>';

    } else {
        if (isset($_GET['trang'])) {
                $trang = $_GET['trang'];
            } else {
                $trang = 1;
            }

            $sql_pagin = "SELECT * From don_hang";
            $result_pagin = mysqli_query($conn_vn, $sql_pagin);
            $num_pagin = mysqli_num_rows($result_pagin);


            $config = array(
                'current_page'  => $trang, // Trang hiện tại
                'total_record'  => $num_pagin, // Tổng số record
                'total_page'    => 1, // Tổng số trang
                'limit'         => 20,// limit
                'start'         => 0, // start
                'link_full'     => '',// Link full có dạng như sau: domain/com/page/{page}
                'link_first'    => '',// Link trang đầu tiên
                'range'         => 9, // Số button trang bạn muốn hiển thị 
                'min'           => 0, // Tham số min
                'max'           => 0  // tham số max, min và max là 2 tham số private
            );

            $pagination = new Pagination;
            $pagination->init($config);

            echo $pagination->htmlPaging_tuan($_GET['page']);
        }
?>

<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>