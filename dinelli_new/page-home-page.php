<?php
/**
 * Template Name: Главная
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
	<section class="main box-1">
		<div class="container">
			<div class="box-content clearfix">
				<div class="cols col-5 col_right">
					<?php the_field('pole1'); ?>
				</div>
				<div class="cols col-5 title-img">
					<img src="<?php bloginfo('template_url'); ?>/img/nelli_davydova_yandex-direct.png" alt="">
				</div>
			</div>
		</div>
	</section>
	<section class="main box-2">
		<div class="container">
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole2'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole3'); ?>
					</div>
				</div>
			</div>
			<span class="box-title">
				ступайте за мной!
			</span>
		</div>
	</section>
	<section class="main box-3">
		<div class="container">
			<div class="box-content ">
				<h4 class="small-title box">
					Вложения без торможения
				</h4>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6 ">
						<?php the_field('pole4'); ?>
					</div>
					<div class="cols col-4 col-md-6">
						<?php the_field('pole5'); ?>
					</div>
				</div>
			</div>
			<span class="box-title">наша цель</span>
		</div>
	</section>
	<section class="main box-4">
		<div class="container">
			<div class="box-content ">
				<div class="row clearfix">
					<div class="cols col-6 col-md-6 no-padding_right">
						<?php the_field('pole6'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="main box-5 no-padding_right">
		<div class="container">
			<div class="box-content ">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<img src="<?php bloginfo('template_url'); ?>/img/dn_img-5-atmosphere.svg" alt="">
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole7'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="main box-6">
		<div class="container">
			<div class="box-content ">
				<div class="row clearfix">
					<div class="cols col-4 col-md-6">
						<figure class="advantages clearfix">
							<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-1-pin.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Пунктуальность</span>
								<p>Держим сроки в узде</p>
							</div>
						</figure>
						<figure class="advantages clearfix">
							<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-2-responsibility.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Ответственность</span>
								<p>Вникаем в суть ещё до того как вы решите работать с DiNelli</p>
							</div>
						</figure>
					</div>
					<div class="cols col-4 col-md-6">
						<figure class="advantages clearfix">
							<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-3-hard_work.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Усердие</span>
								<p>Доводим рекламную кампанию до совершенства</p>
							</div>
						</figure>
						<figure class="advantages clearfix">
							<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-4-tactic.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Тактичность</span>
								<p>Персонализация работы по вашему заказу</p>
							</div>
						</figure>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="main box-7">
		<div class="container">
			<div class="box-content ">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<img src="<?php bloginfo('template_url'); ?>/img/dn_img-6-red_army.svg" alt="">
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole8'); ?>
					</div>
				</div>
			</div>
			<span class="box-title">начнём прямо сейчас?</span>
		</div>
	</section>
	<section class="main box-8">
		<div class="container">
			<div class="box-content ">
				<div class="row clearfix">
					<div class="cols col-6 col-md-6 cloth_off">
						<img src="<?php bloginfo('template_url'); ?>/img/dn_img-8-cloth_off.svg" alt="">
					</div>
					<div class="cols col-6 col-md-6 no-padding_right">
						<?php the_field('pole9'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="main box-9">
		<div class="container">
			<div class="box-content ">
				<h4 class="small-title box">
					Детали работы:
				</h4>
				<div class="row clearfix">
					<div class="cols col-3 col-md-6">
						<figure class="details margin_left">
							<div class="details_img">
								<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-5-site_analise.svg" alt="">
							</div>
							<p>Анализ сайта и источников трафика, переходов на него</p>
						</figure>
					</div>
					<div class="cols col-3 col-md-6">
						<figure class="details">
							<div class="details_img">
								<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-6-offer_analise.svg" alt="">
							</div>
							<p>Анализ существующих рекламных кампаний в Яндекс.Директ, Google при их наличии</p>
						</figure>
					</div>
					<div class="cols col-3 col-md-6">
						<figure class="details margin_right">
							<div class="details_img">
								<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-7-recomendations.svg" alt="">
							</div>
							<p>Рекомендации по улучшению сайта с точки зрения его восприятия
								посетителями и удобству пользования</p>
						</figure>
					</div>
					<div class="cols col-3 col-md-6">
						<figure class="details margin_left">
							<div class="details_img">
								<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-8-monitoring.svg" alt="">
							</div>
							<p>Мониторинг всех объявлений и контроль цены на рекламу</p>
						</figure>
					</div>
					<div class="cols col-3 col-md-6">
						<figure class="details">
							<div class="details_img">
								<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-9-everyday.svg" alt="">
							</div>
							<p>Ежедневное ведение рекламной кампании после настройки и оплаты</p>
						</figure>
					</div>
					<div class="cols col-3 col-md-6 details-form">
						<h4 class="small-title">
							Начинаем?
						</h4>
						<form id="js_form" class="cloud-form order-form" method="post">
							<!-- Hidden Required Fields -->
							<input type="hidden" name="project_name" value="Dinelli.ru">
							<?php dynamic_sidebar( 'admin_mail' ); ?>
							<input type="hidden" name="form_subject" value="Заявка с сайта. Главная верх">
							<!-- END Hidden Required Fields -->
							<label class="cloud-form__phone" for="phone">Телефон</label>
							<input id="phone" class="cloud-form__phone" type="text" name="phone"
							value="" placeholder="+7(___) ___-__-__" required
							pattern="^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$">
							<label class="cloud-form__mail" for="mail">e-mail</label>
							<input id="mail"  class="cloud-form__mail" type="text" name="mail"
							value="" placeholder="iNfo@DiNelli.ru" required
							pattern="^([A-Za-z0-9_\.\-]{1,20})@([a-z0-9\.\-]{1,20})\.([a-z]{2,4})">

							<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER8'); return true;">
								Отправить заявку
							</button>
							<input id="сonsent1" class="cloud-form__сonsent" type="checkbox" name="сonsent" value="" required>
							<label class="cloud-form__сonsent" for="сonsent1">
								Согласие на обработку персональных данных
							</label>
						</form>
					</div>
				</div>
			</div>
			<span class="box-title">не жизнь, а малина</span>
		</div>
	</section>
	<section class="main box-10">
		<div class="container">
			<div class="box-content ">
				<div class="row clearfix">
					<div class="cols col-6 no-padding_right">
						<?php the_field('pole10'); ?>
					</div>
				</div>
				<div class="row assist clearfix">
					<div class="cols col-5 col-md-6 woman">
						<figure class="advantages flip">
							<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-10-flip.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Фиксирует</span>
								<p>причину возможного повышения цен</p>
							</div>
						</figure>
						<figure class="advantages">
							<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-11-broom.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Убирает</span>
								<p>ненужные объявления</p>
							</div>
						</figure>
					</div>
					<div class="cols col-3 col-md-6">
						<figure class="advantages">
							<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-12-grasp.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Держит</span>
								<p>цены за клик в вашей кампании на должном уровне</p>
							</div>
						</figure>
						<figure class="advantages">
							<img src="<?php bloginfo('template_url'); ?>/img/dn_icon-13-pult.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Регулирует</span>
								<p>показ объявлений</p>
							</div>
						</figure>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="main box-11">
		<div class="container">
			<span class="box-title">наши клиенты<br>
				красный <span class="color-text">уголок*</span>
			</span>
			<div class="box-content ">
				<h4 class="small-title box">Сотрудничество с компаниями</h4>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole11'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole12'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="main box-12">
		<div class="container">
			<span class="box-title">ну что, погружаемся?</span>
			<div class="box-content">
				<div class="row clearfix">
					<div class="col-5 content_center">
						<?php the_field('pole13'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-4">
						<?php the_field('pole14'); ?>
					</div>
					<div class="cols col-6 bottom-form">
						<form id="js_form" class="cloud-form order-form" method="post">
							<!-- Hidden Required Fields -->
							<input type="hidden" name="project_name" value="Dinelli.ru">
							<?php dynamic_sidebar( 'admin_mail' ); ?>
							<input type="hidden" name="form_subject" value="Заявка с сайта. Главная низ">
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

							<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER9'); return true;">
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
