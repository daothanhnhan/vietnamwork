<nav class="gb-main-menu_ldpvinhome" >
    <div class="main-navigation uni-menu-text_ldpvinhome">
        <div class="cssmenu">
            <ul>
                <li><a href="/tat-ca-viec-lam" class="slide-section">Tất cả các việc làm</a></li>
                <li><a href="/viec-lam-cap-quan-ly">Việc làm cấp quản lý <span>HOT</span></a></li>
                <li><a href="/cong-ty">Công ty</a></li>
                <li><a href="/wow-cv">Wow CV</a></li>
                <!-- <li><a href="">Khóa học <span>HOT</span></a></li> -->
                <li><a href="/tu-van">Tư Vấn</a></li>
            </ul>
        </div>
    </div>
</nav>

<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>
    $(document).ready(function () {
        var headerHeight = $('.gb-main-menu_ldpvinhome').outerHeight();

        $('.slide-section').click(function () {
            var linkHref = $(this).attr('href');
            $('html, body').animate({
                scrollTop: $(linkHref).offset().top - headerHeight
            }, 1000);
            e.preventDefault();
        });

        $(".sticky-menu").sticky({topSpacing:0});
    });
</script>