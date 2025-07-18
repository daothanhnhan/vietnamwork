<?php
    $action = new action();
    $action_service = new action_service();
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];

        $rowCatLang = $action_service->getServiceCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_service->getServiceCatDetail_byId($rowCatLang[$nameColIdServiceCat_serviceCatLanguage],$lang);
        $rows = $action_service->getServiceList_byMultiLevel_orderServiceId($rowCat[$nameColId_serviceCat],'desc',$trang,6,$slug);
    }else{
        $rows = $action->getList($nameTable_service,'','',$nameColId_service,'desc',$trang,6,'tu-van');
        
    }
?>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_VIECLAM_0001.php";?>
<div class="gb-page-blog_ruouvang">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <?php
                        $d = 0;
                        foreach ($rows['data'] as $row) {
                            $d++;
                            $action_service1 = new action_service(); 
                            $rowLang1 = $action_service1->getServiceLangDetail_byId($row['service_id'],$lang);
                            $row1 = $action_service1->getServiceDetail_byId($row['service_id'],$lang); 
                    ?>
                    <div class="col-sm-6">
                        <div class="gb-news-blog_ruouvang-item">
                            <div class="gb-news-blog_ruouvang-item-img">
                                <a href="/<?= $rowLang1['friendly_url'] ?>"><img src="/images/<?= $row1['service_img'] ?>" alt="<?= $rowLang1['lang_service_name'] ?>" class="img-responsive"></a>
                                <div class="caption caption-large">
                                    <time class="the-date"><?= date('d/m/Y', strtotime($row1['service_create_date'])) ?></time>
                                </div>
                            </div>
                            <div class="gb-news-blog_ruouvang-item-text">
                                <div class="gb-news-blog_ruouvang-item-title">
                                    <h3><a href="/<?= $rowLang1['friendly_url'] ?>"><?= $rowLang1['lang_service_name'] ?></a></h3>
                                </div>
                                <div class="gb-news-blog_ruouvang-item-text-des">
                                    <p><?= $rowLang1['lang_service_des'] ?></p>
                                </div>
                            </div>
                            <div class="gb-news-blog_ruouvang-item-button">
                                <a href="/<?= $rowLang1['friendly_url'] ?>">
                                    <button type="button" class="btn gb-btn-readmore">ĐỌC TIẾP</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    <?php 
                        if ($d%2==0) {
                            echo '<hr style="width:100%;border:0;margin:0;" />';
                        }
                    } ?>
                </div>
                <div><?= $rows['paging'] ?></div>
            </div>
            <div class="col-md-4">
                <?php include DIR_SIDEBAR."MS_SIDEBAR_VIECLAM_0001.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_VIECLAM_0007.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_VIECLAM_0003.php";?>
            </div>
        </div>
    </div>
</div>