<?php 
    $sidebar_servicecat = $action->getList('servicecat', 'servicecat_parent', '0', 'servicecat_id', 'desc', '', '', '');
?>
<div class="gb-danhmuc-sidebar-ruouvang widget-sidebar">
    <aside class="widget">
        <h3 class="widget-title-sidebar-ruouvang">Danh mục tư vấn</h3>
        <div class="widget-content">
            <ul>
                <?php
                foreach ($sidebar_servicecat as $item) {
                    $servicecat_lang = $action_service->getServiceCatLangDetail_byId($item['servicecat_id'], $lang);
                ?>
                <li><a href="/<?= $servicecat_lang['friendly_url'] ?>"><i class="fa fa-angle-right" aria-hidden="true"></i> <?= $servicecat_lang['lang_servicecat_name'] ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </aside>
</div>