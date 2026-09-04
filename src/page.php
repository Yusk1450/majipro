<?php
/*
Template Name: 下層ページ
*/
?>

<?php get_header(); ?>

<?php
	global $post;

	if (have_posts()):
		the_post();
?>


<?php remove_filter('the_content', 'wpautop'); ?>
<div id="<?php echo $post->post_name; ?>page" class="subpage">
	<main class="container-fluid">
<div class="breadcrumbs">
<?php if(function_exists('bcn_display'))
{
	bcn_display();
}?>
</div>

<?php
	the_content();
?>
	</main>
</div>

<?php
	endif;
?>

	<?php get_footer(); ?>
	<?php wp_footer(); ?>
</body>
</html>
