<?php
/**
 * Template Name: Мероприятия
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
				'post_type' => 'events',
				'post_parent' => '',
				'post_status' => 'publish'
		)
);
?>

<main class="content-area main-events">
	<section class="blog box-1">
		<img src="<?php echo get_field('title-image' ); ?>" alt="5Dimansion - Университет физики сознания <?php echo get_field('title-text' ); ?>">
		<div class="title-text">
			<h1><?php echo get_field('title-text' ); ?></h1>
		</div>
	</section>
	<section class="events box-1">
		<div class="container">
			<h2>
				<?php the_post(); ?>
				<?php the_content(); ?>
			</h2>
		</div>
	</section>
	<section class="events box-2">
		<div class="container">
			<?php
				foreach ($news as $obj) {
					if($obj->post_name == 'archive'){
							continue;
					}
			 ?>
			<figure class="events__box-content">
				<div class="cols col-3 col-4-md">
					<h3 class="small-title"><?php echo $obj->post_title; ?></h3>
				</div>
				<div class="cols col-7 col-12-md">
					<?php echo get_field('events-description', $obj->ID); ?>
					<a class="events__btn" href="<?php echo get_field('events-link', $obj->ID); ?>">Подробнее...</a>
				</div>
			</figure>
			<?php
}
			 ?>
			 <figure class="events__box-content">
				 <div class="cols col-3 col-4-md">
					 <h3 class="events__stub"></h3>
				 </div>

			 </figure>
		</div>
	</section>

</main>

<?php
get_footer();
