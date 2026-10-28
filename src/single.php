<?php get_header();
    if (have_posts()):
        the_post();
?>

    <div id="news_detail">
        <div class="container-fluid innerarea">
            <a href="<?php echo esc_url(home_url()); ?>" class="home_btn">
                <div class="d-flex">
                    <div class="gold_color">
                        <i class="fas fa-chevron-left"></i>
                    </div>
                    <div class="gold_color fw-bold">
                        ニュース一覧に戻る
                    </div>
                </div>
            </a>
            <div class="news_bg"></div>

            <div class="news_innerarea">
                <div class="news_header pb-4 mb-4">
                    <div class="fw-bold fs_32 gold_color mb-4">
                        <?php the_title(); ?>
                    </div>
                    <div class="news_date gold_color fs_20 fw-bold">
                        <?php the_time('Y/m/d'); ?>
                    </div>
                </div>
                <div class="news_content fs_20 fw-bold">
                    <?php the_content(); ?>
                </div>
            </div>
        </div>
    </div>

<?php
    endif;
    get_footer();
?>