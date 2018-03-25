<?php
/**
 * Template part for displaying posts
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Dinelli
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="row clearfix">
		<div class="cols col-10">
			<div class="blog-title">
				<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
			</div>
			<div class="blog-desc" >
				<?php the_content();?>

			</div>
		</div>
</div><!-- .entry-content -->

</article><!-- #post-<?php the_ID(); ?> -->
