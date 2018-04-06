<?php
/**
 * The template for displaying all pages
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

get_header(); ?>

		<main id="main" class="content-area">
			<section class="blog box-1">
				<img src="<?php echo get_field('title-image' ); ?>" alt="5Dimansion - Университет физики сознания <?php echo get_field('title-text' ); ?>">
				<div class="title-text">
					<h1><?php echo get_field('title-text' ); ?></h1>
				</div>
			</section>

			<?php the_post(); ?>
			<?php the_content(); ?>

		</main><!-- #main -->


<?php
get_footer();
