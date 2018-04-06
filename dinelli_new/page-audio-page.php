<?php
/**
 * Template Name: Аудио
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
				'post_type' => 'aud',
				'post_parent' => '',
				'post_status' => 'publish'
		)
);
?>

<main class="content-area">
	<section class="blog box-1">
		<img src="<?php echo get_field('title-image' ); ?>" alt="5Dimansion - Университет физики сознания <?php echo get_field('title-text' ); ?>">
		<div class="title-text">
			<h1><?php echo get_field('title-text' ); ?></h1>
		</div>
		<?php the_post(); ?>
		<?php the_content(); ?>
	</section>
	<section class="service blog box-2">
		<div class="container">
			<div class="box-content">
			<?php
				foreach ($news as $obj) {
					if($obj->post_name == 'archive'){
							continue;
					}
			 ?>
				<div class="cols col-3 col-md-6">
					<figure>
						<img src="<?php echo get_field('blog-image',$obj->ID); ?>" alt="<?php echo $obj->post_title; ?>">
					</figure>
					<h4 class="small-title"><?php echo $obj->post_title; ?></h4>
					<?php echo get_field('blog-description', $obj->ID); ?>
				</div>
			<?php
}
			 ?>
		 </div>
		</div>
	</section>

</main>

<?php
get_footer();
