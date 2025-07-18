<?php
//phpinfo();die;
session_start();
ob_start();
$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$folder = dirname(__FILE__);
include_once('config.php');
include_once('__autoload.php');
$action = new action();
include_once dirname(__FILE__).DIR_FUNCTIONS."database.php";
// $urlAnalytic = $action->showabc();    
include_once dirname(__FILE__).'/'.DIR_FUNCTIONS_PAGING."Pagination.php";
include_once 'functions/phpmailer/class.smtp.php';
include_once 'functions/phpmailer/class.phpmailer.php';
include_once "functions/vi_en.php";
// // LÀM RÕ NHỮNG THƯ VIỆN NÀY
// // include_once('lib/vi_en.php');
// // include_once('lib/nganLuong/NL_Checkoutv3.php');

// // LÀM RÕ Install Cart

// Install MultiLanguage
include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE."lang_config.php";
include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE.$lang_file;
// Install Friendly Url
include_once dirname(__FILE__).DIR_FUNCTIONS_URL."url_config.php";
// Configure Website
include_once dirname(__FILE__).DIR_FUNCTIONS."website_config.php";
// echo $translate['link_contact'];die;
$trang = isset($_GET['trang']) ? $_GET['trang'] : '1';
// $action = new action();
$cart = new action_cart();
$menu = new action_menu();
$action_product = new action_product();
$action_news = new action_news();
$action_page = new action_page();
$action_work = new action_work();
$action_service = new action_service();
if($lang == "vn"){
    $rowConfig_lang = $action->getDetail('config_languages','id',1);
}else{
    $rowConfig_lang = $action->getDetail('config_languages','id',2);
}


$rowConfig = $action->getDetail('config','config_id',1);
$action_work->set_hang_tuan();
$action_work->set_hang_ngay();
$action_work->lam_moi_tin();
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="<?= $meta_des ?>"> 
    <meta name="keywords" content="<?= $meta_key ?>">
    <title><?= $title ?></title>
    <link rel="icon" href="/images/<?= $rowConfig['icon_web'] ?>" type="image/gif" sizes="16x16">

    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap-theme.css">
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css'>
    <link rel="stylesheet" href="/plugin/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/style-ruouvang.css">
    <script src="/plugin/jquery/jquery-2.0.2.min.js"></script>
    <script src="/plugin/bootstrap/js/bootstrap.js"></script>
</head>

<body>
<?php include_once dirname(__FILE__).DIR_THEMES."header.php";?>

<div class="gb-content">
    <?php
    if (isset($_GET['page'])){

        $urlAnalytic = $action->getTypePage_byUrl($_GET['page'],$lang);
        // echo $urlAnalytic;
        switch ($urlAnalytic) {

            case 'tu-van':

                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;

            case 'servicecat_languages':
                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;

            case 'search-service':
                include_once dirname(__FILE__) . DIR_THEMES . "search-service.php";break;

            case 'service_languages':
                include_once dirname(__FILE__) . DIR_THEMES . "chitiet_tuvan.php";break;

            case 'news_languages':

                include_once dirname(__FILE__).DIR_THEMES."chitiet_congty.php"; break;
            case 'lien-he':

                include_once dirname(__FILE__).DIR_THEMES."lienhe.php"; break;

            case 'gio-hang':

                include_once dirname(__FILE__).DIR_THEMES."giohang.php"; break;

            case 'khuyen-mai':

                include_once dirname(__FILE__).DIR_THEMES."khuyenmai.php"; break;
            case 'tat-ca-viec-lam':

                include_once dirname(__FILE__) . DIR_THEMES . "tatcavieclam.php"; break;
            case 'hang-thanh-ly':

                include_once dirname(__FILE__).DIR_THEMES."hangthanhly.php"; break;

            case 'thanh-toan':

                include_once dirname(__FILE__).DIR_THEMES."thanhtoan.php"; break;
            case 'chi-tiet-san-pham':

                include_once dirname(__FILE__).DIR_THEMES."chitietsanpham.php"; break;
            case 'huong-dan-dat-hang':

                include_once dirname(__FILE__).DIR_THEMES."huongdanmuahang.php"; break;
            case 'huong-dan-thanh-toan':

                include_once dirname(__FILE__).DIR_THEMES."cachthucthanhtoan.php"; break;

            case 'danh-muc-tin-tuc':

                include_once dirname(__FILE__).DIR_THEMES."danhmuctintuc.php"; break;
            case 'page_language':

                include_once dirname(__FILE__).DIR_THEMES."gioithieu.php"; break;
            case 'ung-vien':

                include_once dirname(__FILE__).DIR_THEMES."ungvien.php"; break;
            case 'nha-tuyen-dung-dang-tuyen-tim-kiem-nhan-tai':

                include_once dirname(__FILE__).DIR_THEMES."nhatuyendungdangtuyenkiemnhantai.php"; break;
            case 'dang-ky-ung-vien':

                include_once dirname(__FILE__).DIR_THEMES."dangkyungvien.php"; break;
            case 'viec-lam-cap-quan-ly':

                include_once dirname(__FILE__).DIR_THEMES."vieclamcapquanly.php"; break;
            case 'cong-ty':

                include_once dirname(__FILE__).DIR_THEMES."congty.php"; break;
            case 'phi-tuyen-dung':

                include_once dirname(__FILE__).DIR_THEMES."phituyendung.php"; break;
            case 'dang-nhap':

                include_once dirname(__FILE__).DIR_THEMES."dangnhap.php"; break;
            case 'dang-ky':

                include_once dirname(__FILE__).DIR_THEMES."dangky.php"; break;
            case 'wow-cv':

                include_once dirname(__FILE__).DIR_THEMES."wowcv.php"; break;
            case 'tao-ho-so':

                include_once dirname(__FILE__).DIR_THEMES."taohoso.php"; break;

            case 'dang-ky-nha-tuyen-dung':
                include_once dirname(__FILE__) . DIR_THEMES . "dang-ky-nha-tuyen-dung.php";break;

            case 'dang-xuat':
                include_once dirname(__FILE__) . DIR_THEMES . "dang-xuat.php";break;

            case 'dang-nhap-nha-tuyen-dung':
                include_once dirname(__FILE__) . DIR_THEMES . "dang-nhap-nha-tuyen-dung.php";break;

            case 'them-don-tuyen':
                include_once dirname(__FILE__) . DIR_THEMES . "them-don-tuyen.php";break;

            case 'sua-don-tuyen':
                include_once dirname(__FILE__) . DIR_THEMES . "sua-don-tuyen.php";break;

            case 'thong-tin-nha-tuyen-dung':
                include_once dirname(__FILE__) . DIR_THEMES . "thong-tin-nha-tuyen-dung.php";break;

            case 'viec-lam-theo-nganh-nghe':
                include_once dirname(__FILE__) . DIR_THEMES . "viec-lam-theo-nganh-nghe.php";break;

            case 'tim-kiem-ung-vien':
                include_once dirname(__FILE__) . DIR_THEMES . "tim-kiem-ung-vien.php";break;

            case 'thong-tin-ung-vien':
                include_once dirname(__FILE__) . DIR_THEMES . "thong-tin-ung-vien.php";break;

            case 'cac-goi-khac':
                include_once dirname(__FILE__) . DIR_THEMES . "cac-goi-khac.php";break;

            case 'viec-lam-theo-dia-diem':
                include_once dirname(__FILE__) . DIR_THEMES . "viec-lam-theo-dia-diem.php";break;

            case 'cac-nganh-nghe':
                include_once dirname(__FILE__) . DIR_THEMES . "cac-nganh-nghe.php";break;

            case 'cac-dia-diem':
                include_once dirname(__FILE__) . DIR_THEMES . "cac-dia-diem.php";break;

            case 'viec-lam-nganh-it':
                include_once dirname(__FILE__) . DIR_THEMES . "viec-lam-nganh-it.php";break;

            case 'moi-tot-nghiep':
                include_once dirname(__FILE__) . DIR_THEMES . "moi-tot-nghiep.php";break;

            case 'tim-kiem';
                include_once dirname(__FILE__) . DIR_THEMES . "tim-kiem.php";break;

            case 'chi-tiet-don-tuyen':
                include_once dirname(__FILE__).DIR_THEMES."chitietsanpham.php"; break;

            case 'nha-tuyen-dung':
                include_once dirname(__FILE__) . DIR_THEMES . "nha-tuyen-dung.php";break;

            case 'them-nha-tuyen-noi-bat':
                include_once dirname(__FILE__) . DIR_THEMES . "them-nha-tuyen-noi-bat.php";break;

            case 'sua-nha-tuyen-noi-bat':
                include_once dirname(__FILE__) . DIR_THEMES . "sua-nha-tuyen-noi-bat.php";break;

            case 'ung-vien-nop-don':
                include_once dirname(__FILE__) . DIR_THEMES . "ung-vien-nop-don.php";break;

            case 'viec-ung-tuyen':
                include_once dirname(__FILE__) . DIR_THEMES . "viec-ung-tuyen.php";break;

            case 'viec-da-luu':
                include_once dirname(__FILE__) . DIR_THEMES . "viec-da-luu.php";break;

            case 'xoa-luu-viec':
                include_once dirname(__FILE__) . DIR_THEMES . "xoa-luu-viec.php";break;
        }
    }
    else include_once dirname(__FILE__).DIR_THEMES."home.php";
    ?>
</div>


<?php include_once dirname(__FILE__).DIR_THEMES."footer.php"; ?>
</body>

</html>

