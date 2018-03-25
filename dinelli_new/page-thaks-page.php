<?php
/**
 * Template Name: Спасибо!
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

<main class="content-area">
	<section class="thanks">
		<div class="container">
			<div class="box-content clearfix">
				<div class="cols col-11">
					<?php the_post(); ?>
					<?php the_content(); ?>
					<ul class="sidebar-social clearfix">
						<li><?php dynamic_sidebar( 'social_vk' ); ?></a></li>
						<li><?php dynamic_sidebar( 'social_f' ); ?></a></li>
						<li><?php dynamic_sidebar( 'social_youtube' ); ?></a></li>
						<li><?php dynamic_sidebar( 'social_instagram' ); ?></a></li>
					</ul>
					<a href="https://dinelli.ru">Вернуться на главную</a>
				</div>
			</div>
		</div>
	</section>

</main>

<?php
get_footer();
