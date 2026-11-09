<?php
/*
Template Name: ニュース一覧
*/
?>
<?php get_header();?>


    <div id="newslist">
        <div class="container-fluid innerarea">
            <a href="<?php echo esc_url(home_url()); ?>" class="home_btn">
                <div class="d-flex">
                    <div class="gold_color">
                        <i class="fas fa-chevron-left"></i>
                    </div>
                    <div class="gold_color fw-bold">
                        ホームに戻る
                    </div>
                </div>
            </a>
            <div class="title">
				<img src="<?php bloginfo('template_directory') ?>/imgs/newslist_title.png" alt="ニュース一覧">
			</div>

            <div class="news_container">
                <?php
                    $query = new WP_Query(array(
                        'post_type' => 'post',
                        'post_status' => 'publish',
                        'posts_per_page' => -1,
                        'orderby' => 'date',
                        'order' => 'DESC',
                    ));
                    if ($query->have_posts()):
                        while ($query->have_posts()):
                            $query->the_post();
				?>
                    <div class="news_item">
                        <div class="news_date fw-bold fs_20 black_color">
                            <?php the_time('Y/m/d'); ?>
                        </div>
                        <a href="<?php the_permalink(); ?>" class="news_content fs_20 fw-bold gold_color">
                            <?php the_title(); ?>
                        </a>
                    </div>
                <?php
						endwhile;
					endif;
				?>

<div class="news_item">
                        <div class="news_date fw-bold fs_20 black_color">
                            2026/08/22
                        </div>
                        <a href="<?php the_permalink(); ?>" class="news_content fs_20 fw-bold gold_color">
                            稲沢夏まつり2026にてカード配布！端まで文字が来てしまった場合は折り返していただきたいです。端まで文字が来てしまった場合は折り返していただきたいです
                        </a>
                    </div>
            </div>
        </div>
    </div>

<?php get_footer(); ?>