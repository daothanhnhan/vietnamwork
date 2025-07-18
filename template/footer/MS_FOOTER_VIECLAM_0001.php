<footer class="site-footer footer-default">
    <div class="footer-main-content_ruouvang">
        <div class="footer-main-content_ruouvang-top">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="footer-main-content_ruouvang-element">
                            <aside class="widget-footer">
                                <h3 class="widget-title-footer-ruouvang uni-uppercase">Về VietnamWorks</h3>
                                <div class="widget-content">
                                    <div class="footer-link-ruouvang">
                                        <ul>
                                            <?= $rowConfig['content_home7'] ?>
                                        </ul>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="footer-main-content_ruouvang-element">
                            <aside class="widget-footer">
                                <h3 class="widget-title-footer-ruouvang uni-uppercase">Về chúng tôi</h3>
                                <div class="widget-content">
                                    <div class="footer-link-ruouvang">
                                        <ul>
                                            <?= $rowConfig['content_home8'] ?>
                                        </ul>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="footer-main-content_ruouvang-element">
                            <aside class="widget-footer">
                                <h3 class="widget-title-footer-ruouvang uni-uppercase">Kết nối với Việc làm 12h</h3>
                                <div class="widget-content">
                                    <?php include DIR_SOCIAL."MS_SOCIAL_VIECLAM_0001.php"?>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<script type="text/javascript">
    function luu_viecf (don_tuyen_id) {
        // alert(don_tuyen_id)
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             alert(out);
            }
          };
          xhttp.open("GET", "/functions/ajax/luu_viec.php?don_tuyen_id="+don_tuyen_id, true);
          xhttp.send();
    }
</script>