<?php
/**
 * Template Name: Услуги и предложения Google.Adwords
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

get_header(); ?>

<main class="content-area">
	<section class="service ga-service box-1">
		<div class="container">
			<span class="box-title box">
				Услуги<br>и предложения
			</span>
			<div class="box-content clearfix">
				<div class="row clearfix">
					<h4 class="yd-service small-title box">
						Google Adwords
					</h4>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole1'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole2'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-3 col-md-6 left_side">
						<a class="service__card" href="<?php echo get_field('link1'); ?>" target="_blank">
							<img src="<?php echo get_field('link1_img'); ?>">
						</a>
					</div>
					<div class="cols col-3 col-md-6">
						<a class="service__card" href="<?php echo get_field('link2'); ?>" target="_blank">
							<img src="<?php echo get_field('link2_img'); ?>">
						</a>
					</div>
					<div class="cols col-3 col-md-6 right_side">
						<a class="service__card" href="<?php echo get_field('link3'); ?>" target="_blank">
							<img src="<?php echo get_field('link3_img'); ?>">
						</a>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<h4 class="small-title">Заявка на консультацию</h4>
						<p>Напишите ваши контакты и пожелания, и я,
Нелли Давыдова, лично свяжусь с вами в ближайшее рабочее время.</p>

					</div>
					<div class="cols col-5 bottom-form col-md-6">
						<form class="cloud-form order-form" method="post">
							<!-- Hidden Required Fields -->
							<input type="hidden" name="project_name" value="Dinelli.ru">
							<?php dynamic_sidebar( 'admin_mail' ); ?>
							<input type="hidden" name="form_subject" value="Заявка с сайта. Услуги по ГА">
							<!-- END Hidden Required Fields -->
							<label class="cloud-form__phone" for="phone">Телефон</label>
							<input id="phone" class="cloud-form__phone" type="text" name="phone"
							value="" placeholder="+7(___) ___-__-__" required>
							<label class="cloud-form__mail" for="mail">e-mail</label>
							<input id="mail"  class="cloud-form__mail" type="text" name="mail"
							value="" placeholder="ivanov@ivan.ru" required>
							<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER7'); return true;">
								Отправить заявку
							</button>
							<input id="сonsent" class="cloud-form__сonsent" type="checkbox" name="сonsent" value="" required>
							<label class="cloud-form__сonsent" for="сonsent">
								Согласие на обработку персональных данных
							</label>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</main>

<?php
get_footer();
