<?php
/**
 * Template Name: Настройка Яндекс.Директ
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
	<section class="yd-1 box-1">
		<div class="container">
			<div class="box-title">
				<span class="title_left">
					Настройка
				</span>
				<span class="title_left">
					Яндекс.Директ
				</span>
			</div>
			<div class="box-content">
				<div class="row clearfix">
					<?php the_field('pole1'); ?>
					<div class="cols col-5 col-md-6 padding_right">
						<?php the_field('pole2'); ?>
						<img class="content-img yd1-img-2" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-ya1-img-2.svg" alt="">
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole3'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole4'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="content-img yd1-img-3" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-ya1-img-3.svg" alt="">
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole5'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="yd-1 box-2">
		<div class="container">
			<span class="box-title">
				настройка forever
			</span>
			<div class="box-content">
				<div class="container">
					<div class="row clearfix">
						<?php the_field('pole6'); ?>
						<div class="cols padding_right col-5">
							<?php the_field('pole7'); ?>
						</div>
						<div class="cols padding_right col-5">
							<?php the_field('pole8'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<?php the_field('pole9'); ?>
						<div class="cols padding_right col-5 col-md-6">
							<?php the_field('pole10'); ?>
							<img class="content-img yd1-img-4" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-ya1-img-4.svg" alt="">
						</div>
						<div class="cols col-5 col-md-6 padding_top">
							<?php the_field('pole11'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols col-5 col-md-6">
							<?php the_field('pole12'); ?>
						</div>
						<div class="cols col-5 col-md-6">
							<?php the_field('pole13'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols col-5 col-md-6">
							<img class="content-img yd1-img-5" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-ya1-img-5.svg" alt="">
						</div>
						<div class="cols col-5 col-md-6">
							<?php the_field('pole14'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols padding_right col-5 col-md-6 ">
							<?php the_field('pole15'); ?>
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols col-5 col-md-6">
							<?php the_field('pole16'); ?>
							<img class="content-img yd1-img-6" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-13.svg" alt="">
						</div>
						<div class="cols padding_right col-5 col-md-6">
							<img class="content-img yd1-img-7" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-12.svg" alt="">
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols padding_right col-5 col-md-6 ">
							<?php the_field('pole18'); ?>
						</div>
						<div class="cols col-5 col-md-6 float_right">
							<img class="content-img yd1-img-8" src="<?php bloginfo('template_url'); ?>/img/coach/dn_couch-img-14.svg" alt="">
						</div>
					</div>
					<div class="row clearfix">
						<div class="cols col-5">
							<?php the_field('pole19'); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="yd-1 box-3">
		<div class="container">
			<div class="box-title">
				<span class="title_left">
					цена
				</span>
				<span class="title_center">
					контекстной
				</span>
				<span class="title_right">
					рекламы
				</span>
			</div>
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole20'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole21'); ?>
						<div class="details-form">
							<form class="cloud-form order-form" method="post">
								<!-- Hidden Required Fields -->
								<input type="hidden" name="project_name" value="Dinelli.ru">
								<?php dynamic_sidebar( 'admin_mail' ); ?>
								<input type="hidden" name="form_subject" value="Заявка с сайта. Настройка ЯД верх">
								<!-- END Hidden Required Fields -->
								<label class="cloud-form__phone" for="phone">Телефон</label>
								<input id="phone" class="cloud-form__phone" type="text" name="phone"
								value="" placeholder="+7(___) ___-__-__" required>
								<label class="cloud-form__mail" for="mail">e-mail</label>
								<input id="mail"  class="cloud-form__mail" type="text" name="mail"
								value="" placeholder="ivanov@ivan.ru" required>
								<label  class="cloud-form__message" for="message">сообщение</label>
								<textarea id="message" class="cloud-form__message" name="message"
								rows="5" cols="80" placeholder=""
								></textarea>
								<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER17'); return true;">
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
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole22'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole23'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole24'); ?>
						<img class="content-img yd1-img-9" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-ya1-img-8.svg" alt="">
						<?php the_field('pole25'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="content-img yd1-img-10" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-ya1-img-7.svg" alt="">
						<?php the_field('pole26'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole27'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="content-img yd1-img-11" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-ya1-img-9.svg" alt="">
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole28'); ?>
					</div>
					<div class="cols col-5 col-md-6 bottom-form">
						<form class="cloud-form order-form" method="post">
							<!-- Hidden Required Fields -->
							<input type="hidden" name="project_name" value="Dinelli.ru">
							<?php dynamic_sidebar( 'admin_mail' ); ?>
							<input type="hidden" name="form_subject" value="Заявка с сайта. Настройка ЯД середина">
							<!-- END Hidden Required Fields -->
							<label class="cloud-form__phone" for="phone">Телефон</label>
							<input id="phone" class="cloud-form__phone" type="text" name="phone"
							value="" placeholder="+7(___) ___-__-__" required>
							<label class="cloud-form__mail" for="mail">e-mail</label>
							<input id="mail"  class="cloud-form__mail" type="text" name="mail"
							value="" placeholder="ivanov@ivan.ru" required>
							<label  class="cloud-form__message" for="message">сообщение</label>
							<textarea id="message" class="cloud-form__message" name="message"
							rows="5" cols="80" placeholder=""
							></textarea>
							<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER21'); return true;">
								Отправить заявку
							</button>
							<input id="сonsent2" class="cloud-form__сonsent" type="checkbox" name="сonsent" value="" required>
							<label class="cloud-form__сonsent" for="сonsent2">
								Согласие на обработку персональных данных
							</label>
						</form>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole29'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole30'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="yd-1 box-4">
		<div class="container">
			<div class="box-title">
				<span>
					гарантии
				</span>
			</div>
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole31'); ?>
						<img class="content-img yd1-img-12" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-ya1-img-12.svg" alt="">
						<?php the_field('pole32'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="content-img yd1-img-13" src="<?php bloginfo('template_url'); ?>/img/yd/dn_service-ya1-img-11.svg" alt="">
						<?php the_field('pole33'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole34'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole35'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<h4 class="small-title">
							Задать вопрос
						</h4>
						<p>
							Уточнить или спросить по теме настройки рекламной кампании в Яндекс.Директ можно через эту простую форму. Не забудьте написать ваше имя и контакты, и я лично свяжусь с вами.
						</p>
					</div>
					<div class="cols col-5 col-md-6 bottom-form">
						<form class="cloud-form order-form" method="post">
							<!-- Hidden Required Fields -->
							<input type="hidden" name="project_name" value="Dinelli.ru">
							<?php dynamic_sidebar( 'admin_mail' ); ?>
							<input type="hidden" name="form_subject" value="Заявка с сайта. Настройка ЯД низ">
							<!-- END Hidden Required Fields -->
							<label class="cloud-form__phone" for="phone">Телефон</label>
							<input id="phone" class="cloud-form__phone" type="text" name="phone"
							value="" placeholder="+7(___) ___-__-__" required>
							<label class="cloud-form__mail" for="mail">e-mail</label>
							<input id="mail"  class="cloud-form__mail" type="text" name="mail"
							value="" placeholder="ivanov@ivan.ru" required>
							<label  class="cloud-form__message" for="message">сообщение</label>
							<textarea id="message" class="cloud-form__message" name="message"
							rows="5" cols="80" placeholder="Очень хочу получить аудит РК для сайта Dinelli.ru..."
							></textarea>
							<button id="submit" class="cloud-form__submit" type="submit" name="submit">
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
