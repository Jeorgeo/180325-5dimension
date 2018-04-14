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
  <section class="blog box-2">

  		<?php
  		foreach ($photo as $obj) {
  				if($obj->post_name == 'archive'){
  						continue;
  				}

  		?>
    <a class="foobox" data-caption-title="<?php echo get_field('title-photo',$obj->ID); ?>" data-caption-desc="<?php echo get_field('description-photo',$obj->ID); ?>" href="<?php echo get_field('img-photo',$obj->ID); ?>" rel="gallery" >
			<?php echo get_the_post_thumbnail( $obj->ID, array(330, 330)); ?>
      <div class="shadow-image">
        <h4><?php echo get_field('title-photo',$obj->ID); ?></h4>
      </div>
    </a>


  		<?php
  			};
  		 ?>

  </section>

</main>



<?php
get_footer();
