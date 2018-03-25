<?php
/**
 * Template Name: Эффективный Яндекс.Директ
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
	<section class="yd box-1">
		<div class="container">
			<div class="box-title">
				<span class="title_left">
					Эффективный Яндекс.Директ
				</span>
				<span class="title_left">
					для Ваших продаж
				</span>
			</div>
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5">
						<?php the_field('pole1'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6 padding_right">
						<?php the_field('pole2'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<img class="content-img yd-img-2" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-yd-img-2.svg" alt="">
					</div>
					<div class="cols padding_right col-5 col-md-6">
						<?php the_field('pole3'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="yd box-2">
		<div class="container">
			<span class="box-title">
				а теперь детали
			</span>
			<div class="box-content">
				<div class="container">
					<div class="row clearfix">
						<div class="cols padding_right col-5 col-md-6">
						<?php the_field('pole4'); ?>
						</div>
						<div class="cols padding_right col-5 col-md-6">
						<?php the_field('pole4-1'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols padding_right col-5 col-md-6">
							<?php the_field('pole5'); ?>
						</div>
						<div class="cols col-5 col-md-6">
							<?php the_field('pole6'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols col-6">
							<?php the_field('pole7'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols col-5 col-md-6 float_right">
							<img class="content-img yd-img-3" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-yd-img-3.svg" alt="">
						</div>
						<div class="cols padding_right col-5 col-md-6 ">
							<?php the_field('pole8'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols padding_right col-5 col-md-6">
							<img class="content-img yd-img-4" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-yd-img-4.svg" alt="">
						</div>
						<div class="cols col-5 col-md-6">
							<?php the_field('pole9'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols col-5 col-md-6 float_right">
							<img class="content-img" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-yd-img-5.svg" alt="">
						</div>
						<div class="cols padding_right col-5 col-md-6 ">
							<?php the_field('pole10'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols padding_right col-5 col-md-6">
							<img class="content-img" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-yd-img-6.svg" alt="">
						</div>
						<div class="cols col-5 col-md-6">
							<?php the_field('pole11'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols col-5 col-md-6 float_right">
							<img class="content-img yd-img-7" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-yd-img-7.svg" alt="">
						</div>
						<div class="cols padding_right col-5 col-md-6 ">
							<?php the_field('pole12'); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="yd box-3">
		<div class="container">
			<div class="box-title">
				<span class="title_left">
					гарантии
				</span>
				<span class="title_right">
					и ответственность
				</span>
			</div>
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole13'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole14'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole15'); ?>
					</div>
					<div class="cols col-5 col-md-6 bottom-form">
						<form id="js_form" class="cloud-form order-form" method="post">
							<!-- Hidden Required Fields -->
							<input type="hidden" name="project_name" value="Dinelli.ru">
							<?php dynamic_sidebar( 'admin_mail' ); ?>
							<input type="hidden" name="form_subject" value="Заявка с сайта. Эффективный ЯД">
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

							<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER15'); return true;">
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
