<?php 
	$ngay = json_decode($item['city']);
?>
<ul class="price-khuvuc-ngaydang">
    <li class="prices_ruouvang">
        Lương:  <strong>$ <?= number_format($item['salary1'], '0', ',', '.') ?> - $ <?= number_format($item['salary2'], '0', ',', '.') ?></strong>
    </li>
    <li class="khuvuc-vnwork">
        Khu vực: <strong><?= $action->getDetail('city', 'id', $ngay[0])['name']; ?></strong>
    </li>
    <li class="ngaydang">
        Đã đăng : <strong> <?= date('d/m/Y', strtotime($item['ngay'])) ?></strong>
    </li>
</ul>