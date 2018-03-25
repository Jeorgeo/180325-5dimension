<?php
/**
 * Template Name: Аудит сайта, SEO и контекстной рекламы
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
	<section class="audit box-1">
		<div class="container">
			<span class="box-title">
				Аудит сайта, SEO <br> и контекстной рекламы
			</span>
			<div class="box-content">
				<h4 class="small-title box">
					Статистика
				</h4>
				<p class="audit__description box">
					Всех наших клиентов волнует вопрос:
					как сделать дешевые клики? Реальное увеличение продаж:
				</p>
				<div class="row clearfix">
					<div class="cols col-3 col-md-a-4">
						<span class="audit_statistics">
							523
						</span>
						<p>
							проведённых аудита и оптимизации
						</p>
					</div>
					<div class="cols col-3 col-md-a-4">
						<span class="audit_statistics">
							300-410%
						</span>
						<p>
							увеличение продаж у 36% компаний
						</p>
					</div>
					<div class="cols col-3 col-md-a-4">
						<span class="audit_statistics">
							100-300%
						</span>
						<p>
							увеличение продаж у 58% компаний
						</p>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole1'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole2'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole3'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="content-img" src="<?php bloginfo('template_url'); ?>/img/audit/dn_service-ya-audit-img-2.svg" alt="">
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole4'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole4-1'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-6 col-md-6">
						<?php the_field('pole5'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="audit box-2">
		<div class="container">
			<div class="box-title">
				<span class="title_right">формат</span>
				<span class="title_left">проведения аудита</span>
			</div>
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole6'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="content-img" src="<?php bloginfo('template_url'); ?>/img/audit/dn_service-ya-audit-img-4.svg" alt="">
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole7'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="content-img" src="<?php bloginfo('template_url'); ?>/img/audit/dn_service-ya-audit-img-5.svg" alt="">
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole7-f'); ?>
					</div>
					<div class="cols col-5 bottom-form">
						<form id="js_form" class="cloud-form order-form" method="post">
							<!-- Hidden Required Fields -->
							<input type="hidden" name="project_name" value="Dinelli.ru">
							<?php dynamic_sidebar( 'admin_mail' ); ?>
							<input type="hidden" name="form_subject" value="Заявка с сайта.Аудит сайта.Верх">
							<!-- END Hidden Required Fields -->
							<label class="cloud-form__phone" for="phone">Телефон</label>
							<input id="phone" class="cloud-form__phone" type="text" name="phone"
							value="" placeholder="+7(___) ___-__-__" required
							pattern="^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$">
							<label class="cloud-form__mail" for="mail">e-mail</label>
							<input id="mail"  class="cloud-form__mail" type="text" name="mail"
							value="" placeholder="iNfo@DiNelli.ru" required
							pattern="^([A-Za-z0-9_\.\-]{1,20})@([a-z0-9\.\-]{1,20})\.([a-z]{2,4})">
							<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER1'); return true;">
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
					<div class="cols col-6 col-md-6">
						<?php the_field('pole8'); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="audit box-3">
		<div class="container">
			<span class="box-title">
				что входит в аудит?
			</span>
			<div class="box-content">
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole9'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole10'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole11'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<img class="content-img" src="<?php bloginfo('template_url'); ?>/img/audit/dn_service-ya-audit-img-7.svg" alt="">
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole12'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole13'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<img class="content-img" src="<?php bloginfo('template_url'); ?>/img/audit/dn_service-ya-audit-img-8.svg" alt="">
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole14'); ?>
						<img class="content-img" src="<?php bloginfo('template_url'); ?>/img/audit/dn_service-ya-audit-img-9.svg" alt="">
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole15'); ?>
					</div>
				</div>
				<div class="row clearfix">
					<div class="cols col-5 col-md-6">
						<?php the_field('pole16'); ?>
					</div>
					<div class="cols col-5 col-md-6">
						<?php the_field('pole17'); ?>
						<img class="content-img" src="<?php bloginfo('template_url'); ?>/img/audit/dn_service-ya-audit-img-10.svg" alt="">
					</div>
				</div>
				<div class="row clearfix clock">
					<div class="cols col-5 col-md-6 float_right">
						<?php the_field('pole18'); ?>
					</div>
				</div>
				<div class="row clearfix">
				 <div class="cols col-5 col-md-6">
					 <?php the_field('pole19'); ?>
				 </div>
				 <div class="cols col-4 bottom-form">
					 <form id="js_form" class="cloud-form order-form" method="post">
		 				<!-- Hidden Required Fields -->
		 				<input type="hidden" name="project_name" value="Dinelli.ru">
		 				<?php dynamic_sidebar( 'admin_mail' ); ?>
		 				<input type="hidden" name="form_subject" value="Заявка с сайта.Аудит сайта.Низ">
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

		 				<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER2'); return true;">
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
