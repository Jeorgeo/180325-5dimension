<?php
/**
 * Template part for displaying posts
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Dinelli
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?> class="single-post">
	<div class="row clearfix">
		<div class="cols col-10">
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
