<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Dinelli
 */

 $news = get_posts(
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
 				'post_type' => 'reviews_video',
 				'post_parent' => '',
 				'post_status' => 'publish'
 		)
 );

?>

<section class="blog box-1">
  <img src="<?php echo get_field('title-image' ); ?>" alt="5Dimansion - Университет физики сознания <?php echo get_field('title-text' ); ?>">
  <div class="title-text">
    <p><?php echo get_field('title-text' ); ?></p>
  </div>
</section>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="reviews-video entry-content">
		<div class="container">
			<h1 class="blog-title">
				<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
			</h1>
			<div class="blog-desc clearfix">
				<div class="cols col-5 col-4-md">
					<?php echo get_field('reviews-video', $obj->ID); ?>
				</div>
				<div class="cols col-5 col-12-md">
					<?php the_content();?>
          <!-- Код для соцсетей-->
          <script type="text/javascript">(function() {
  if (window.pluso)if (typeof window.pluso.start == "function") return;
  if (window.ifpluso==undefined) { window.ifpluso = 1;
    var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
    s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
    s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
    var h=d[g]('body')[0];
    h.appendChild(s);
  }})();</script>
<div class="pluso" data-background="transparent" data-options="big,round,line,horizontal,counter,theme=06" data-services="facebook,twitter,vkontakte,odnoklassniki,google,pinterest,livejournal,moimir,email,print"></div>
<!-- Конец Кода для соцсетей-->
				</div>
			</div>
      <h2>
        Посмотреть еще
      </h2>
			<div class="news-slider">
				<?php
					foreach ($news as $obj) {
						if($obj->post_name == 'archive'){
								continue;
						}
				 ?>
				 <a href="<?php echo $obj->post_name; ?>">
					 <div class="reviews-photo_mantle">
             <h3 class="small-title">
   						<?php echo $obj->post_title; ?>
   					</h3>
           </div>
 					<img src="<?php echo get_field('reviews-image',$obj->ID); ?>" alt="<?php echo $obj->post_title; ?>">
				 </a>
				 <?php } ?>
			</div>

		</div>

</div><!-- .entry-content -->

</article><!-- #post-<?php the_ID(); ?> -->
