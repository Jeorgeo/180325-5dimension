<?php
/**
 * Template Name: Блог
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
				'post_type' => 'post',
				'post_parent' => '',
				'post_status' => 'publish'
		)
);
?>

<main class="content-area">
	<section class="blog box-1">
		<div class="container">
			<div class="blog__box-content clearfix">
				<div class="cols col-6 blog_title">
					<h1>
						Блог
					</h1>
					<p>
						Интернет журнал Нели Давыдовой о  контекстной рекламе, обо всех аспектах торгового маркетинга, о продажах, рекламе, с практическими материалами.
					</p>
				</div>
			</div>
		</div>
	</section>
	<section class="blog box-2">
		<div class="container">
			<nav class="reviews__nav">
				<ul>
					<li>
						<a class="active_link">Блог</a>
					</li>
					<li>
						<a href="<?php the_field('vlog'); ?>" >Видео Блог</a>
					</li>
				</ul>
			</nav>
			<?php
				foreach ($news as $obj) {
					if($obj->post_name == 'archive'){
							continue;
					}
			 ?>
			<figure class="blog__box-content clearfix">
				<div class="cols col-5 col-4-md">
					<a href="/blog/<?php echo $obj->post_name; ?>" target="_blank">
						<img src="<?php echo get_field('image',$obj->ID); ?>" alt="">
					</a>
				</div>
				<div class="cols col-5 col-12-md">
					<h4 class="small-title"><?php echo $obj->post_title; ?></h4>
					<?php echo get_field('description', $obj->ID); ?>
					<a href="/blog/<?php echo $obj->post_name; ?>" target="_blank">Читать далее...</a>
				</div>
			</figure>
			<?php
}
			 ?>
		</div>
	</section>

</main>

<?php
get_footer();
