<?php
/**
 * Template Name: Фото
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

 $photo	= get_posts(
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
        'post_type' => 'photo',
        'post_parent' => '',
        'post_status' => 'publish'
    )
 );

get_header(); ?>




<main class="content-area photo">
  <section class="blog box-1">
		<img src="<?php echo get_field('title-image' ); ?>" alt="5Dimansion - Университет физики сознания <?php echo get_field('title-text' ); ?>">
		<div class="title-text">
			<h1><?php echo get_field('title-text' ); ?></h1>
		</div>
		<?php the_post(); ?>
		<?php the_content(); ?>
	</section>
  <section>
    <div class="clearfix mosaicflow">
  		<?php
  		foreach ($photo as $obj) {
  				if($obj->post_name == 'archive'){
  						continue;
  				}

  		?>
  	  <div class="mosaicflow__item">
  			<a href="<?php echo get_field('link-photo',$obj->ID); ?>">
  				<img src="<?php echo get_field('img-photo',$obj->ID); ?>">
  				<div class="mosaicflow__shadow">
  					<h4><?php echo get_field('title-photo',$obj->ID); ?></h4>
  			    <p><?php echo get_field('description-photo',$obj->ID); ?></p>
  				</div>
  			</a>
  	  </div>

  		<?php
  			};
  		 ?>

  	</div>
  </section>

</main>



<?php
get_footer();
