<?php
/**
 * Template Name: VK отзывы
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
	<section class="reviews box-2">
		<div class="container">
			<div class="box-content">

				<div class="row clearfix">

					<div class="reviews_vk">
						<?php the_vk_topik(); ?>

					</div>
				</div>
			</div>
			<?php the_post(); ?>
			<?php the_content(); ?>
			<!-- кнопка еще пока заглушена
			<button class="reviews-next" type="button" name="button">Показать ещё</button>
			!-->
		</div>
	</section>

</main>

<?php
get_footer();
