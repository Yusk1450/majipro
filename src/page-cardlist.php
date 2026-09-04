<?php
/*
Template Name: カードリスト
*/
?>
<?php get_header();?>


    <div class="card_list">
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
            <div class="title" id="card_list">
                <div class="text">
                    <img src="<?php bloginfo('template_directory') ?>/imgs/cardList_title.png" alt="カードリスト">
                </div>
            </div>
            <div class="content_title">
                <img src="<?php bloginfo('template_directory') ?>/imgs/kaijin_title.png" alt="怪人カード">
            </div>
            
            <div class="content">
                <?php
                    $kaijin_cards = get_posts(array(
                        'post_type' => 'kaijin',
                        'posts_per_page' => -1
                    ));
                ?>
                <?php foreach ($kaijin_cards as $card): ?>
                    <a href="<?php echo get_permalink($card->ID); ?>" class="card_item kaijin
                        <?php echo get_field('attribute', $card->ID)['value'].'_glow'; ?>">
                        <img src="<?php the_field('card_image', $card->ID); ?>" alt="<?php echo get_the_title($card->ID); ?>">
                    </a>
                <?php endforeach; ?>
            </div>

            <div class="content_title">
                <img src="<?php bloginfo('template_directory') ?>/imgs/support_title.png" alt="サポートカード">
            </div>

            <div class="content">
                <?php
                    $support_cards = get_posts(array(
                        'post_type' => 'support',
                        'posts_per_page' => -1
                    ));
                ?>
                <?php foreach ($support_cards as $card): ?>
                    <div class="card_item gold_glow">
                    <img src="<?php the_field('card_image', $card->ID); ?>" alt="<?php echo get_the_title($card->ID); ?>">
                    </div>
                <?php endforeach; ?>
            </div>

            <div class="content_title">
                <img src="<?php bloginfo('template_directory') ?>/imgs/trigger_title.png" alt="トリガーカード">
            </div>

            <div class="content trigger">
                <?php
                    $trigger_cards = get_posts(array(
                        'post_type' => 'trigger',
                        'posts_per_page' => -1
                    ));
                ?>
                <?php foreach ($trigger_cards as $card): ?>
                    <div class="card_item black_glow">
                    <img src="<?php the_field('card_image', $card->ID); ?>" alt="<?php echo get_the_title($card->ID); ?>">
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>

<?php get_footer(); ?>