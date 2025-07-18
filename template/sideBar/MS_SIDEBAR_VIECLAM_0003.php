<?php 
    $sidebar_service_new = $action->getList('service', '', '', 'service_id', 'desc', '', '4', '');
?>
<div class="gb-recenpost-sidebar-ruouvang widget-sidebar">
    <aside class="widget">
        <h3 class="widget-title-sidebar-ruouvang">Bài viết mới nhất</h3>
        <div class="widget-content">
            <div class="gb-blog-left-recent-posts_ruouvang">
                <ul>
                    <?php 
                    foreach ($sidebar_service_new as $item) {
                        $service_lang = $action_service->getServiceLangDetail_byId($item['service_id'], $lang);
                    ?>
                    <li>
                        <div class="gb-item-recent-posts_ruouvang">
                            <div class="gb-item-recent-posts_ruouvang-img">
                                <a href="/<?= $service_lang['friendly_url'] ?>"><img src="/images/<?= $item['service_img'] ?>" alt="<?= $service_lang['lang_service_name'] ?>"></a>
                            </div>
                            <div class="gb-item-recent-posts_ruouvang-text">
                                <h2><a href="/<?= $service_lang['friendly_url'] ?>"><?= $service_lang['lang_service_name'] ?></a></h2>
                                <div class="gb-item-recent-post-time_ruouvang">
                                    <span><i class="fa fa-calendar" aria-hidden="true"></i> <?= date('d/m/Y', strtotime($item['service_create_date'])) ?></span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </aside>
</div>