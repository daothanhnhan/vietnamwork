<nav class="visible-sm visible-xs mobile-menu-container mobile-nav">
    <div class="menu-mobile-nav">
        <span class="icon-bar"><i class="fa fa-bars" aria-hidden="true"></i></span>
    </div>
    <div id="cssmenu" class="animated">
        <div class="uni-icons-close"><i class="fa fa-times" aria-hidden="true"></i></div>
        <ul>
            <li><a href="/tat-ca-viec-lam" class="slide-section">Tất cả các việc làm</a></li>
            <li><a href="/viec-lam-cap-quan-ly">Việc làm cấp quản lý <span>HOT</span></a></li>
            <li><a href="/cong-ty">Công ty</a></li>
            <li><a href="/wow-cv">Wow CV</a></li>
            <li><a href="/tu-van">Tư Vấn</a></li>
        </ul>
        <div class="gb-header-login-logout">
            <ul>
                <?php if (!isset($_SESSION['user_id_ntd_gbvn']) && !isset($_SESSION['user_id_uv_gbvn'])) { ?>
                <li><a href="/dang-nhap"><i class="fa fa-fw fa-lg fa-sign-in"></i> Đăng nhập</a></li>
                <li><a href="/dang-ky">Đăng ký</a></li>
                <?php } else { ?>
                <li><a href="/dang-xuat"><i class="fa fa-fw fa-lg fa-sign-out"></i> Đăng xuất</a></li>
                <?php } ?>
                <li class="horizontal-navbar__employer-site">
                    <a href="/nha-tuyen-dung-dang-tuyen-tim-kiem-nhan-tai">
                        <strong class="text-white hidden-xs">NHÀ TUYỂN DỤNG</strong><br>
                        <span class="text-white">Đăng Tuyển &amp; Kiếm Nhân Tài</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</nav>

<script>
    $(document).ready(function () {
        //-----------------menu mobile---------------------
        $('.mobile-menu-container .menu-mobile-nav').on('click', function (e) {
            $('#cssmenu').slideToggle();
            $('#cssmenu ul').slideToggle();
            $('#cssmenu ul ul').hide();
        });
        $('.uni-icons-close'). on('click', function (e) {
            $('#cssmenu').hide( 500);
            $('#cssmenu ul').hide(500);
        });

        (function($) {

            $.fn.menumaker = function(options) {

                var cssmenu = $(this), settings = $.extend({
                    title: "Menu",
                    format: "dropdown",
                    sticky: false
                }, options);

                return this.each(function() {

                    cssmenu.find('li ul').parent().addClass('has-sub');

                    var multiTg = function() {
                        cssmenu.find(".has-sub").prepend('<span class="submenu-button"></span>');
                        cssmenu.find('.submenu-button').on('click', function() {
                            $(this).toggleClass('submenu-opened');
                            $(this).toggleClass('active');
                            if ($(this).siblings('ul').hasClass('open')) {
                                $(this).siblings('ul').removeClass('open').slideToggle();
                            }
                            else {
                                $(this).siblings('ul').addClass('open').slideToggle();
                            }
                        });
                    };

                    if (settings.format === 'multitoggle') multiTg();
                    else cssmenu.addClass('dropdown');

                    if (settings.sticky === true) cssmenu.css('position', 'fixed');

                    var resizeFix = function() {
                        if ($( window ).width() > 768) {
                            cssmenu.find('ul').show();
                        }

                        if ($(window).width() <= 768) {
                            cssmenu.find('ul').hide().removeClass('open');
                        }
                    };
                    // resizeFix();
                    // return $(window).on('resize', resizeFix);

                });
            };
        })(jQuery);

        (function($){
            $(document).ready(function() {
                $("#cssmenu").menumaker({
                    title: "",
                    format: "multitoggle"
                });

                $("#cssmenu").prepend("<div id='menu-line'></div>");

                var foundActive = false, activeElement, linePosition = 0, menuLine = $("#cssmenu #menu-line"), lineWidth, defaultPosition, defaultWidth;

                $("#cssmenu > ul > li").each(function() {
                    if ($(this).hasClass('active')) {
                        activeElement = $(this);
                        foundActive = true;
                    }
                });

                if (foundActive === false) {
                    activeElement = $("#cssmenu > ul > li").first();
                }

                defaultWidth = lineWidth = activeElement.width();

                // defaultPosition = linePosition = activeElement.position().left;

                menuLine.css("width", lineWidth);
                menuLine.css("left", linePosition);

                $("#cssmenu > ul > li").on('mouseenter', function () {
                        activeElement = $(this);
                        lineWidth = activeElement.width();
                        linePosition = activeElement.position().left;
                        menuLine.css("width", lineWidth);
                        menuLine.css("left", linePosition);
                    },
                    function() {
                        menuLine.css("left", defaultPosition);
                        menuLine.css("width", defaultWidth);
                    });
            });
        })(jQuery);
    });
</script>