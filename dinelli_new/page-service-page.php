<?php
/**
 * Template Name: Услуги и предложения
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
				'post_type' => 'service',
				'post_parent' => '',
				'post_status' => 'publish'
		)
);
?>

<main class="content-area">
	<section class="service box-1">
		<?php the_post(); ?>
		<?php the_content(); ?>
	</section>
	<section class="service box-2">
		<div class="container">
			<div class="box-content">
				<?php
					foreach ($news as $obj) {
						if($obj->post_name == 'archive'){
								continue;
						}
				 ?>
				<div class="cols col-3 col-md-6">
					<a class="service__card" href="<?php echo get_field('service-link', $obj->ID); ?>" target="_blank">
						<figure>
							<img src="<?php echo get_field('service-image',$obj->ID); ?>" alt="<?php echo $obj->post_title; ?>">
						</figure>
						<p>
							<?php echo get_field('service-description', $obj->ID); ?>
							<span class="service__price"><?php echo get_field('service-price', $obj->ID); ?></span>
						</p>
					</a>
					<a class="service__btn" href="<?php echo get_field('service-link', $obj->ID); ?>">Подробнее...</a>
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
