<?php
/*
Template Name: カード詳細
*/
get_header();

if ( have_posts() ) {
	the_post();
}
?>

	<div id="details">
		<div class="container-fluid innerarea">
			<div class="name sp_only">						
				<div class="bg">
					<img src="<?php bloginfo('template_directory') ?>/imgs/details_name.png" alt="<?php the_title(); ?>">
				</div>
				<div class="name_detail">
					<?php if (get_field('company')): ?>
					<div class="company_name_bg">
						<div class="company_name fw-bold fs_20 gold_color">
							<?php the_field('company'); ?>
						</div>
					</div>
					<?php endif; ?>
					<div class="kaijin_name fw-bold fs_32 black_color">
						<?php the_title(); ?>
					</div>
				</div>
			</div>
			<div class="d-flex card_container">
				<div class="card_item
					<?php echo (get_field('attribute')['value']).'_glow'; ?>">
					<img src="<?php the_field('card_image'); ?>" alt="<?php the_field('card_name'); ?>">
				</div>
				<div class="info">
					<div class="name pc_only">						
						<div class="bg">
							<img src="<?php bloginfo('template_directory') ?>/imgs/details_name.png" alt="<?php the_field('card_name'); ?>">
						</div>
						<div class="name_detail">
							<?php if (get_field('company')): ?>
							<div class="company_name_bg">
								<div class="company_name fw-bold fs_20 gold_color">
									<?php the_field('company'); ?>
								</div>
							</div>
							<?php endif; ?>
							<div class="kaijin_name fw-bold fs_32 black_color">
								<?php the_title(); ?>
							</div>
						</div>
					</div>
					<div class="kaijin_detail">
						<div class="item d-flex align-items-center">
							<div class="subject">
								<img src="<?php bloginfo('template_directory') ?>/imgs/details_subject.png">
								<div class="subject_title fw-bold fs_20">
									属性
								</div>
							</div>
							<div class="detail_item fw-bold fs_20">
								<?php echo get_field('attribute')['label']; ?>
							</div>
						</div>

						<div class="item d-flex align-items-center">
							<div class="subject">
								<img src="<?php bloginfo('template_directory') ?>/imgs/details_subject.png">
								<div class="subject_title fw-bold fs_20">
									戦闘力
								</div>
							</div>
							<div class="detail_item fw-bold fs_20">
								<?php the_field('power'); ?>
							</div>
						</div>

						<div class="item d-flex align-items-center">
							<div class="subject">
								<img src="<?php bloginfo('template_directory') ?>/imgs/details_subject.png">
								<div class="subject_title fw-bold fs_20">
									コスト
								</div>
							</div>
							<div class="detail_item fw-bold fs_20">
								<?php the_field('cost'); ?>
							</div>
						</div>

						<div class="item d-flex">
							<div class="subject">
								<img src="<?php bloginfo('template_directory') ?>/imgs/details_subject.png">
								<div class="subject_title fw-bold fs_20">
									能力
								</div>
							</div>
							<div class="detail_item fw-bold fs_20 detail_border">
								<?php the_field('effect'); ?>
							</div>
						</div>

						<?php if (get_field('pr')): ?>
							<div class="item d-flex">
								<div class="subject">
									<img src="<?php bloginfo('template_directory') ?>/imgs/details_subject.png">
									<div class="subject_title fw-bold fs_20">
										企業の強み
									</div>
								</div>
								<div class="detail_item fw-bold fs_20 detail_border">
									<?php the_field('pr'); ?>
								</div>
							</div>
						<?php endif; ?>

						<?php if (get_field('industry')): ?>
							<div class="item d-flex align-items-center">
								<div class="subject">
									<img src="<?php bloginfo('template_directory') ?>/imgs/details_subject.png">
									<div class="subject_title fw-bold fs_20">
										業種
									</div>
								</div>
								<div class="detail_item fw-bold fs_20">
									<?php the_field('industry'); ?>
								</div>
							</div>
						<?php endif; ?>

					</div>
				</div>
			</div>
		</div>
		<?php if (get_field('website')): ?>
			<div class="d-flex justify-content-center">
				<div class="link">
					<img src="<?php bloginfo('template_directory') ?>/imgs/link_decoration.png">
					<a href="<?php the_field('website'); ?>" target="_blank">
						<i class="fas fa-link"></i>
					</a>
				</div>
			</div>
			<div class="text-center fw-bold fs_20">
				Web
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

<?php get_footer(); ?>