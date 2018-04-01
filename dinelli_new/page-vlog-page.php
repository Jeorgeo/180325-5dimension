<?php
/**
 * Template Name: Видео Блог
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Dinelli
 */

get_header();

$news = get_posts(
		array(
				'numberposts' => -1,
				'offset' => 0,
				'orderby'     => 'date',
				'order'       => 'DESC',
				'category' => '',
				'include' => '',
				'exclude' => '',
				'meta_key' => '',
				'meta_value' => '',
				'post_type' => 'vlog',
				'post_parent' => '',
				'post_status' => 'publish'
		)
);?>
?>

<main class="content-area">
	<section class="blog box-1">
		<?php the_post(); ?>
		<?php the_content(); ?>
	</section>
	<section class="blog vlog box-2">
		<div class="container">

			<?php
				foreach ($news as $obj) {
					if($obj->post_name == 'archive'){
							continue;
					}
			 ?>
				<figure class="cols col-3 col-6-md">
					<a href="/vlog/<?php echo $obj->post_name; ?>" target="_blank">
						<div class="vlog_bg-play">
						</div>
						<img src="<?php echo get_field('blog-image',$obj->ID); ?>" alt="">
					</a>
					<h4 class="small-title"><?php echo $obj->post_title; ?></h4>
					<?php echo get_field('blog-description', $obj->ID); ?>
				</figure>
			<?php
}
			 ?>
		</div>
	</section>

</main>

<?php
get_footer();
