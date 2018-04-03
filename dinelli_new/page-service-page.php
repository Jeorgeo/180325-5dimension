<?php
/**
 * Template Name: Услуги и предложения
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
				'post_type' => 'service',
				'post_parent' => '',
				'post_status' => 'publish'
		)
);
?>

<main class="content-area">
	<section class="service box-1">
		<div class="container">
			<h1 class="small-title box">
				<?php the_field('service-title'); ?>
			</h1>
			<div class="box-content">
				<?php
					foreach ($news as $obj) {
						if($obj->post_name == 'archive'){
								continue;
						}
				 ?>
				<div class="cols col-3 col-md-6">
					<a class="service__card" href="/service/<?php echo $obj->post_name; ?>" target="_blank">
						<img src="<?php echo get_field('events-image',$obj->ID); ?>" alt="<?php echo $obj->post_title; ?>">
						<p><?php echo get_field('events-description', $obj->ID); ?></p>
					</a>
					<a class="service__btn" href="<?php echo get_field('events-link', $obj->ID); ?>">Подробнее...</a>
				</div>

				<?php
					}
				 ?>

			</div>
		</div>
	</section>
	<section class="service box-2">
		<div class="container">
			<span class="box-title">
				аромат прибыли
			</span>
			<div class="box-content clearfix">
				<h4 class="small-title box">
					Пришла пора...
				</h4>
				<div class="row clearfix">
					<div class="cols col-6">
						<?php the_field('pole3'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-3 col-md-6 left_side">
						<a class="service__card" href="<?php echo get_field('cons'); ?>" target="_blank">
							<img src="<?php echo get_field('cons_img'); ?>">
						</a>
					</div>
					<div class="cols col-3 col-md-6">
						<a class="service__card" href="<?php echo get_field('audit'); ?>" target="_blank">
							<img src="<?php echo get_field('audit_img'); ?>">
						</a>
					</div>
					<div class="cols col-3 col-md-6 right_side">
						<a class="service__card" href="<?php echo get_field('coach'); ?>" target="_blank">
							<img src="<?php echo get_field('coach_img'); ?>">
						</a>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5">
						<?php the_field('pole4'); ?>
					</div>
					<div class="cols col-5 bottom-form">
						<form id="js_form" class="cloud-form order-form" method="post">
							<!-- Hidden Required Fields -->
							<input type="hidden" name="project_name" value="Dinelli.ru">
							<?php dynamic_sidebar( 'admin_mail' ); ?>
							<input type="hidden" name="form_subject" value="Заявка с сайта. Все услуги">
							<!-- END Hidden Required Fields -->
							<label class="cloud-form__phone" for="phone">Телефон</label>
							<input id="phone" class="cloud-form__phone" type="text" name="phone"
							value="" placeholder="+7(___) ___-__-__" required
							pattern="^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$">
							<label class="cloud-form__mail" for="mail">e-mail</label>
							<input id="mail"  class="cloud-form__mail" type="text" name="mail"
							value="" placeholder="iNfo@DiNelli.ru" required
							pattern="^([A-Za-z0-9_\.\-]{1,20})@([a-z0-9\.\-]{1,20})\.([a-z]{2,4})">

							<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER13'); return true;">
								Отправить заявку
							</button>
							<input id="сonsent" class="cloud-form__сonsent" type="checkbox" name="сonsent" value="" required>
							<label class="cloud-form__сonsent" for="сonsent">
								Согласие на обработку персональных данных
							</label>
						</form>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<img class="content-img full" src="<?php the_field('img-o'); ?>" alt="">
					</div>
					<div class="cols col-6 col-md-6 umbrella">
						<?php the_field('pole14'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
</main>

<?php
get_footer();
