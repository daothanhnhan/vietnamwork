<?php 
    $home_career = $action->getList('career', '', '', 'id', 'asc', '', '10', '');
    $home_city = $action->getList('city', '', '', 'id', 'asc', '', '', '');
?>
<div class="gb-vieclamtheonganh-vieclamtai">
    <div class="container">
        <div class="row">
            
            <div class="col-sm-12">
                <h5><a href="/cac-dia-diem">VIỆC LÀM TẠI</a></h5>
                <ul>
                    <?php foreach ($home_city as $item) { ?>
                    <li><a href="/viec-lam-theo-dia-diem/1/<?= $item['id'] ?>">Việc làm tại <?= $item['name'] ?></a></li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </div>
</div>