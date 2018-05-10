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
		<p><?php echo get_field('title-text' ); ?></p>
	</div>
</section>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?> class="single-post">
	<div class="blog">
		<div class="container">			
			<div class="blog-desc" >
				<?php the_content(); ?>
			</div>
		</div>
</div><!-- .entry-content -->

</article><!-- #post-<?php the_ID(); ?> -->
