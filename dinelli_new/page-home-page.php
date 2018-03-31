<?php
/**
 * Template Name: Главная
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

<?php the_field('pole1'); ?>

<main class="content-area">
	<section class="main box-1">
		<div class="container">
			<div class="main__box-content">
				<h1><?php the_field('title_d1'); ?></h1>
				<?php the_field('text_d1'); ?>
			</div>
		</div>
	</section>
	<section class="main box-2">
		<div class="container">
			<?php the_post(); ?>
			<?php the_content(); ?>
		</div>
	</section>
</main>

<?php
get_footer();
