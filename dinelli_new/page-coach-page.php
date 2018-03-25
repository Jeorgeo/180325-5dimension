<?php
/**
 * Template Name: Индивидуальный коучинг по Яндекс.Директ
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
	<section class="coach box-1">
		<div class="container">
			<span class="box-title">
				Индивидуальный коучинг<br> по Яндекс.Директ
			</span>
			<div class="box-content">
				<p class="coach__description">
					индивидуальный подход за 2-3 месяца обучения у  Нелли Давыдовой
				</p>
				<h4 class="small-title box">
					Интерактив вместо теории
				</h4>
				<div class="row clearfix learning">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole2'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<img class="img_small" class="img_small" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-3.svg" alt="">
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole3'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="coach box-2">
		<div class="container">
			<span class="box-title">цель обучения</span>
			<div class="box-content">
				<div class="row clearfix strategy">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole4'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<img class="img_small" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-5.svg" alt="">
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole5'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole6'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="img_small" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-6.svg" alt="">
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="coach box-3">
		<div class="container">
			<span class="box-title">
				<span class="title_left">
					из рук в руки
				</span>
				<span class="title_right">
					из уст в уста
				</span>
			</span>
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole7'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole8'); ?>
					</div>
				</div>
				<h4 class="small-title box">
					Плюсы бизнеса
				</h4>
				<div class="row clearfix">
					<div class="cols col-3 col-md-6">
						<figure class="advantages clearfix">
							<img src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-icon-1.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Окупаемость</span>
								<p>2-3 месяца</p>
							</div>
						</figure>
						<figure class="advantages clearfix">
							<img src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-icon-2.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Стабильный доход</span>
								<p>минимум в 2 раза больше средненькой зарплаты</p>
							</div>
						</figure>
					</div>
					<div class="cols col-3 col-md-6">
						<figure class="advantages clearfix">
							<img src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-icon-3.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Статус</span>
								<p>сам себе командир</p>
							</div>
						</figure>
						<figure class="advantages clearfix">
							<img src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-icon-4.svg" alt="">
							<div class="figure-title">
								<span class="list-title">Вложения</span>
								<p>вкладывать свои средства будут другие</p>
							</div>
						</figure>
					</div>
					<div class="cols col-3 col-md-6">
						<figure class="palm advantages clearfix">
							<img src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-icon-5.png" alt="">
							<div class="figure-title">
								<span class="list-title">Свобода</span>
								<p>
									Вы, как и я, можете жить на островах или путешествовать
									круглый год по планете Земля с ноутбуком!
								</p>
							</div>
						</figure>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-4 col-md-6">
						<?php the_field('pole9'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-4 col-md-6">
						<?php the_field('pole10'); ?>
					</div>
					<div class="cols col-4 col-md-6">
						<?php the_field('pole11'); ?>
					</div>
				</div>
				<div class="row graph clearfix">
					<div class="cols col-4">
						<?php the_field('pole-graph'); ?>
					</div>
					<div class="cols col-12">
						<img class="content-img" src="<?php the_field('img-graph'); ?>" alt="">
					</div>
				</div>
				<h4 class="small-title box">
					Особый подход
				</h4>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole12'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="img_small" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-8.svg" alt="">
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="coach box-4">
		<div class="container">
			<span class="box-title">
				чему научу
			</span>
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
					<div class="cols col-5 col-md-6">
						<?php the_field('pole16'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<img class="img_small" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-10.svg" alt="">
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole17'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="coach box-5">
		<div class="container">
			<span class="box-title">
				что входит в курс?
			</span>
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole18'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole19'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole20'); ?>
						<img class="img_small" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-13.svg" alt="">
						<?php the_field('pole21'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="img_small" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-12.svg" alt="">
						<?php the_field('pole22'); ?>
						<img class="img_small" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-14.svg" alt="">
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole23'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole24'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="coach box-6">
		<div class="container">
			<span class="box-title">
				работа с партнерами
			</span>
			<div class="box-content">
				<h4 class="small-title box">
					Как эти знания можно применить на практике?
				</h4>
				<div class="row clearfix">
					<div class="cols col-3 col-md-6">
						<p>
							- Привлекать трафик  клиентам и получать процент
						</p>
					</div>
					<div class="cols col-3 col-md-6">
						<p>
							- Привлекать трафик  клиентам и получать  фиксированную оплату
						</p>
					</div>
					<div class="cols col-3 col-md-6">
						<p>
							- Рекомендовать заказчику программистов - дизайнеров и получать свой %
						</p>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-3 col-md-6">
						<p>
							- Рекомендовать заказчика  программистам - дизайнерам  и получать свой %
						</p>
					</div>
					<div class="cols col-3 col-md-6">
						<p>
							- Привлекать трафик в бизнес, грамотно экономя бюджет  при максимальном охвате ЦА
						</p>
					</div>
					<div class="cols col-3 col-md-6">
						<p>
							- Экономить бюджет от деятельности «горе- специалистов по КР»
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="coach box-7">
		<div class="container">
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole25'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="img_small" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-16.svg" alt="">
						<?php the_field('pole26'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="coach box-8">
		<div class="container">
			<div class="box-title">
				<span class="title_left">
					решились?
				</span>
				<span class="title_right">тогда <span class="color-text">вперед!</span></span>
			</div>
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole27'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole28'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-4">
						<?php the_field('pole29'); ?>
					</div>
					<div class="cols col-6 bottom-form">
						<form id="js_form" class="cloud-form order-form" method="post">
							<!-- Hidden Required Fields -->
							<input type="hidden" name="project_name" value="Dinelli.ru">
							<?php dynamic_sidebar( 'admin_mail' ); ?>
							<input type="hidden" name="form_subject" value="Заявка с сайта. Коучинг">
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

							<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER4'); return true;">
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
