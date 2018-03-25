<?php
/**
 * Template Name: SEO продвижение
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
	<section class="seo box-1">
		<div class="container">
			<div class="box-title">
				<span class="title_left">
					SEO
				</span>
				<span class="title_left">
					продвижение
				</span>
			</div>
			<div class="box-content">
				<div class="row clearfix box-1_1">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole1'); ?>
					</div>
					<div class="cols col-5 col-md-6 bottom-form">
						<form id="js_form" class="cloud-form order-form" method="post">
							<!-- Hidden Required Fields -->
							<input type="hidden" name="project_name" value="Dinelli.ru">
							<?php dynamic_sidebar( 'admin_mail' ); ?>
							<input type="hidden" name="form_subject" value="Заявка с сайта">
							<!-- END Hidden Required Fields -->
							<label class="cloud-form__phone" for="phone">Телефон</label>
							<input id="phone" class="cloud-form__phone" type="text" name="phone"
							value="" placeholder="+7(___) ___-__-__" required
							pattern="^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$">
							<label class="cloud-form__mail" for="mail">e-mail</label>
							<input id="mail"  class="cloud-form__mail" type="text" name="mail"
							value="" placeholder="iNfo@DiNelli.ru" required
							pattern="^([A-Za-z0-9_\.\-]{1,20})@([a-z0-9\.\-]{1,20})\.([a-z]{2,4})">

							<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER10'); return true;">
								Отправить заявку
							</button>
							<input id="сonsent1" class="cloud-form__сonsent" type="checkbox" name="сonsent" value="" required>
							<label class="cloud-form__сonsent" for="сonsent1">
								Согласие на обработку персональных данных
							</label>
						</form>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6 padding_right">
						<img class="content-img seo-img-2" src="<?php bloginfo('template_url'); ?>/img/seo/dn_service-seo-img-2.svg" alt="">
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole2'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="seo box-2">
		<div class="container">
			<span class="box-title">
				начало начал
			</span>
			<div class="box-content">
				<div class="container">
					<div class="row clearfix">
						<div class="cols padding_right col-5 col-md-6">
						<?php the_field('pole3'); ?>
						</div>
						<div class="cols col-5 col-md-6">
							<?php the_field('pole4'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols col-5 col-md-6 padding_right">
							<img class="content-img seo-img-4" src="<?php bloginfo('template_url'); ?>/img/seo/dn_service-seo-img-4.svg" alt="">
						</div>
						<div class="cols col-5 col-md-6">
							<?php the_field('pole5'); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="seo box-3">
		<div class="container">
			<div class="box-title">
				<span class="title_left">
					итак, разберемся
				</span>
				<span class="title_left">
					в SEO поподробнее
				</span>
			</div>
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole6'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole7'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<img class="content-img seo-img-6" src="<?php bloginfo('template_url'); ?>/img/seo/dn_service-seo-img-6.svg" alt="">
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole8'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole9'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="content-img seo-img-7" src="<?php bloginfo('template_url'); ?>/img/seo/dn_service-seo-img-7.svg" alt="">
						<?php the_field('pole10'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<img class="content-img seo-img-8" src="<?php bloginfo('template_url'); ?>/img/seo/dn_service-seo-img-8.svg" alt="">
						<?php the_field('pole11'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole12'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="seo box-4">
		<div class="container">
			<div class="box-title">
				<span class="title_left">
					инвестируйте
				</span>
				<span class="title_left">
					в будущую прибыль
				</span>
			</div>
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole13'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="content-img seo-img-10" src="<?php bloginfo('template_url'); ?>/img/seo/dn_service-seo-img-10.svg" alt="">
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole14'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole15'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole16'); ?>
					</div>
					<div class="cols col-5 col-md-6 bottom-form">
						<form id="js_form" class="cloud-form order-form" method="post">
							<!-- Hidden Required Fields -->
							<input type="hidden" name="project_name" value="Dinelli.ru">
							<?php dynamic_sidebar( 'admin_mail' ); ?>
							<input type="hidden" name="form_subject" value="Заявка с сайта">
							<!-- END Hidden Required Fields -->
							<label class="cloud-form__phone" for="phone">Телефон</label>
							<input id="phone" class="cloud-form__phone" type="text" name="phone"
							value="" placeholder="+7(___) ___-__-__" required
							pattern="^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$">
							<label class="cloud-form__mail" for="mail">e-mail</label>
							<input id="mail"  class="cloud-form__mail" type="text" name="mail"
							value="" placeholder="iNfo@DiNelli.ru" required
							pattern="^([A-Za-z0-9_\.\-]{1,20})@([a-z0-9\.\-]{1,20})\.([a-z]{2,4})">
							<label  class="cloud-form__message" for="message">сообщение</label>
							<textarea id="message" class="cloud-form__message" name="message"
							rows="4" cols="80" placeholder=""></textarea>

							<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER11'); return true;">
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
