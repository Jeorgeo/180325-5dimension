<?php
/**
 * Template part for displaying posts
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Dinelli
 */

?>

<section class="blog box-1">
	<img src="<?php echo get_field('title-image' ); ?>" alt="5Dimansion - Университет физики сознания <?php echo get_field('title-text' ); ?>">
	<div class="title-text">
		<h1><?php echo get_field('title-text' ); ?></h1>
	</div>
</section>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?> class="single-post">
	<div class="blog">
		<div class="container">
			<div class="blog-title">
				<h2>
					<?php the_title(); ?>
				</h2>
			</div>
			<div class="blog-desc" >
				<?php the_content(); ?>
			</div>
		</div>
</div><!-- .entry-content -->

</article><!-- #post-<?php the_ID(); ?> -->
