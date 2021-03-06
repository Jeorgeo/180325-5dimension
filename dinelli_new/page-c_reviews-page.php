<?php
/**
 * Template Name: Отзывы после консультации
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
				'post_type' => 'reviews_c',
				'post_parent' => '',
				'post_status' => 'publish'
		)
);?>

<main class="content-area">
	<section class="blog box-1">
		<img src="<?php echo get_field('title-image' ); ?>" alt="5Dimansion - Университет физики сознания <?php echo get_field('title-text' ); ?>">
		<div class="title-text">
			<h1><?php echo get_field('title-text' ); ?></h1>
		</div>
		<?php the_post(); ?>
		<?php the_content(); ?>
	</section>
	<section class="reviews box-1">
		<div class="container">
			<nav class="reviews__nav">
				<?php
					wp_nav_menu( array(
						'theme_location' => 'menu-2',
						'menu_id'        => 'reviews-menu',
					) );
				?>
			</nav>
		</div>
	</section>
	<section class="service box-2 blog">
		<div class="container">
			<div class="box-content">
				<?php
					foreach ($news as $obj) {
						if($obj->post_name == 'archive'){
								continue;
						}
				 ?>
				<div class="cols col-3 col-md-6">
					<a class="service__card" href="/t_reviews-page/<?php echo $obj->post_name; ?>">
						<figure>
							<img src="<?php echo get_field('reviews-image',$obj->ID); ?>" alt="<?php echo $obj->post_title; ?>">
						</figure>
						<h4 class="small-title">
							<?php echo $obj->post_title; ?>
						</h4>
						<p>
							<?php echo get_field('reviews-description', $obj->ID); ?>
						</p>
					</a>

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
