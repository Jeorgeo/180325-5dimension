<?php
/**
 * Template Name: Текстовые отзывы
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
				'post_type' => 'reviews_text',
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
						<a class="active_link">благодарственные письма</a>
					</li>
					<li>
						<a href="<?php the_field('v_reviews'); ?>">Видео отзывы</a>
					</li>
					<li><a href="<?php the_field('vk_reviews'); ?>">Отзывы с ВК</a></li>
				</ul>
			</nav>
		</div>
	</section>
	<section class="reviews box-2">
		<div class="container">
			<div class="box-content">
				<?php
					foreach ($news as $obj) {
						if($obj->post_name == 'archive'){
								continue;
						}
				 ?>
				<div class="row clearfix">
					<div class="cols col-3 col-md-6">
						<h4 class="small-title">
							<?php echo $obj->post_title; ?>
						</h4>
						<figure class="reviews-photo">
							<a href="/t_reviews-page/<?php echo $obj->post_name; ?>" target="_blank">
								<div class="reviews-photo_mantle"></div>
								<img src="<?php echo get_field('image',$obj->ID); ?>" alt="<?php echo $obj->post_title; ?>">								
							</a>
						</figure>
						<div class="reviews-text">
							<?php echo get_field('description', $obj->ID); ?>
							<a href="<?php echo $obj->post_name; ?> " target="_blank">Читать далее...</a>
						</div>
					</div>
				<?php } ?>
				</div>
			</div>
			<!-- для пагинации
			<button class="reviews-next" type="button" name="button">Показать ещё</button>
			!-->
		</div>
	</section>

</main>

<?php
get_footer();
