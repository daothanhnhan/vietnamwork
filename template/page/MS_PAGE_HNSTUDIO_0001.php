<?php 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_news->getNewsLangDetail_byUrl($slug,$lang);
    $row = $action_news->getNewsDetail_byId($rowLang['news_id'],$lang);
    $_SESSION['sidebar'] = 'newsDetail';
?>
<div class="gb-page-gioithieu">
    <?php include DIR_BREADCRUMBS."MS_BREADCRUMS_HNSTUDIO_0001.php";?>
    <div class="container">
        <div class="gb-page-gioithieu-right">
            <h2 style="font-size: 2em;"><?= $rowLang['lang_news_name'] ?></h2>
            <?= $rowLang['lang_news_content'] ?>
        </div>
    </div>
</div>