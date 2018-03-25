<?php
/**
 * Template Name: Политика конфиденциальности
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
	<section class="policy box-1">
		<div class="container">
			<span class="box-title box">
				Политика<br>конфиденциальности
			</span>
			<div class="box-content clearfix">
				<div class="row clearfix">
					<div class="cols col-11 policy_text">
						<?php the_field('pole1'); ?>
					</div>
					<div class="cols col-11">
						<?php the_field('pole2'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
</main>

<?php
get_footer();
