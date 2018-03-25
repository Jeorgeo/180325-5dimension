<?php
/**
 * Template Name: Видео отзывы
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
				'post_type' => 'reviews_video',
				'post_parent' => '',
				'post_status' => 'publish'
		)
);?>

<main class="content-area">
	<section class="reviews box-1">
		<div class="container">
			<span class="box-title">
				Отзывы и результаты
			</span>
			<nav class="reviews__nav">
				<ul>
					<li>
						<a href="<?php the_field('t_reviews'); ?>">благодарственные письма</a>
					</li>
					<li>
						<a class="active_link">Видео отзывы</a>
					</li>
					<li><a href="<?php the_field('vk_reviews'); ?>">Отзывы с ВК</a></li>
				</ul>
			</nav>
		</div>
	</section>
	<section class="reviews blog box-2">
		<div class="container">
			<?php
				foreach ($news as $obj) {
					if($obj->post_name == 'archive'){
							continue;
					}
			 ?>
			<figure class="blog__box-content clearfix">
				<div class="cols col-5 col-4-md">
					<?php echo get_field('video', $obj->ID); ?>
				</div>
				<div class="cols col-5 col-12-md">
					<h2 class="small-title">
						<?php echo $obj->post_title; ?>
					</h2>
					<?php echo get_field('description', $obj->ID); ?>
					<a href="<?php echo $obj->post_name; ?>">Читать далее...</a>
				</div>
			</figure>
			<?php } ?>
			<!-- для пагинации
			<button class="reviews-next" type="button" name="button">Показать ещё</button>
			!-->
		</div>
	</div>
</section>

</main>

<?php
get_footer();
