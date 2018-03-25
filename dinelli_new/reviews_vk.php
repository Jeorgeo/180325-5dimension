<?php
/* Template Name: Отзывы Вконтакте */ 
?><?php get_header(); ?>
	<?php /*
		if (have_posts()){
			while (have_posts()) : the_post();
			the_content();
			endwhile;
		} */?>
				<div class="content-padding">

					<div class="row" style="margin:85px 0 0 0;text-align:left;">
						<div class="col-md-12 col-sm-12 col-xs-12 wow bounceIn">
							<img src="<?php bloginfo('template_url'); ?>/i/data/reviews/header.png" alt="">
						</div>
					</div>

					<div class="row" style="margin:51px 0 0 0;">
						<div class="col-md-12 col-sm-12 col-xs-12 wow bounceIn">
							<ul class="reviews-menu" style="margin:0 0 0 -16px;">
								<li><a href="<?php bloginfo('url'); ?>/reviews_text/">Письменные отзывы</a></li>
								<li><a href="<?php bloginfo('url'); ?>/reviews_video/">Видео отзывы</a></li>
								<li>Отзывы Вконтакте</li>
							</ul>
						</div>
					</div>


					<div class="reviews_vk">
						<?php the_vk_topik(); ?>

					</div>

					<?php
						/*if(get_reviews_count('reviews_video') > get_reviews_per_page('reviews_video') ){ 
					?>
					<div class="reviews-items-more">
						<input type="hidden" id="reviews-items-paged" value="0">
						<a href="#" class="dinelli_button" style="margin: 0 auto;" onclick="get_reviews('reviews_video'); return false;">Показать еще</a>
						<div class="reviews-items-more-load"></div>
					</div>
					<?php } else { ?>
					<div class="reviews-items-more"></div>


					<?php } */ ?>



				</div><!--/.content-padding-->


<?php get_footer(); ?>