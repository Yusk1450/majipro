<?php
/*
Template Name: トリガーカード詳細
*/
get_header(null, [
		'ogp_image' => get_field('card_image'),
		'ogp_title' => get_the_title() . '｜【公式】Majicayo Project「怪人カード」',
		'ogp_url' => get_permalink(),
	]
);

if ( have_posts() ) {
	the_post();
}
?>
<div id="trigger" class="carddetail">
	<div class="container innerarea">
		<div class="contants">
			<div class="name sp_only">
				<div class="card_name fw-bold fs_32 black_color">
					<?php the_title(); ?>
				</div>
			</div>
			<div class="card_item black_glow">
				<img src="<?php the_field('card_image'); ?>" alt="<?php the_field('card_name'); ?>">
			</div>
			<div class="info">
				<div class="name pc_only">
					<div class="card_name fw-bold fs_32 black_color">
						<?php the_title(); ?>
					</div>
				</div>
				<div class="detail">
                    <div class="item">
						<div class="subject">
							<img src="<?php bloginfo('template_directory') ?>/imgs/details_subject.png">
							<div class="subject_title fw-bold fs_20">
								トリガー
							</div>
						</div>
						<div class="content fw-bold fs_20 frame">
							<?php the_field('condition'); ?>
						</div>
					</div>
					<div class="item">
						<div class="subject">
							<img src="<?php bloginfo('template_directory') ?>/imgs/details_subject.png">
							<div class="subject_title fw-bold fs_20">
								能力
							</div>
						</div>
						<div class="content fw-bold fs_20 frame">
							<?php the_field('effect'); ?>
						</div>
					</div>
				</div>
			</div>
		</div>

		<?php if (get_field('faq_field')): ?>
			<div class="faq">
				<div class="faq_title fw-bold fs_20 black_color">
					このカードについての質問
				</div>
				<div class="faq_item_list fs_20 fw-bold">
					<?php foreach (get_field('faq_field') as $faq): ?>
						<div class="faq_item">
							<div class="text_wrapper">
								<div class="gold_color">
									Q.
								</div>
								<div class="text">
									<?php echo $faq['question']; ?>
								</div>
							</div>
							<div class="border_line"></div>
							<div class="text_wrapper">
								<div class="gold_color">
									A.
								</div>
								<div class="text gold_color">
									<?php echo $faq['answer']; ?>
								</div>
							</div>
						</div>
					<?php endforeach; ?>
				</div>
			</div>
		<?php endif; ?>

		<div class="btns d-flex justify-content-center">
			<a href="<?php echo esc_url(home_url()); ?>/cardlist" class="back_btn">
				<div class="d-flex">
					<div class="gold_color">
						<i class="fas fa-chevron-left"></i>
					</div>
					<div class="gold_color fw-bold">
						カードリストにもどる
					</div>
				</div>
			</a>
			<a href="<?php echo home_url('/'); ?>" class="back_btn">
				<div class="d-flex home">
					<div class="gold_color">
						<i class="fas fa-chevron-left"></i>
					</div>
					<div class="gold_color fw-bold">
						ホームに戻る
					</div>
				</div>
			</a>
		</div>
	</div>
</div>
<?php get_footer(); ?>