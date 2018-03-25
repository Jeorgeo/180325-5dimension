<?php
/**
 * Template Name: Консультации
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
	<section class="consult box-1">
		<div class="container">
			<span class="box-title">
				Консультации
			</span>
		</div>
	</section>
	<section class="consult box-2">
		<div class="container">
			<div class="row clearfix">
				<h4 class="small-title box">
					Разовая Консультация
				</h4>
				<div class="cols col-5 col-md-6">
					<?php the_field('pole1'); ?>
				</div>
				<div class="cols col-5 col-md-6">
					<div class="consult-time">
						<p class="strong-text">
							Время
						</p>
						<p class="box-title">
							40 минут по skype
						</p>
						<a href="#" onclick="showPopup(); yaCounter39506875.reachGoal('ORDER22'); return true;">Заказать</a>
					</div>
					<div class="consult-price">
						<p class="strong-text">
							Стоимость
						</p>
						<p class="box-title">
							2 900 р.
						</p>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<h4 class="small-title box">
					Сессия
				</h4>
				<div class="cols col-5 col-md-6">
					<?php the_field('pole2'); ?>
				</div>
				<div class="cols col-5 col-md-6">
					<div class="consult-time">
						<p class="strong-text">
							Время
						</p>
						<p class="box-title">
							3-5 звонков по skype
						</p>
						<a href="#" onclick="showPopup(); yaCounter39506875.reachGoal('ORDER22'); return true;">Заказать</a>
					</div>
					<div class="consult-price">
						<p class="strong-text">
							Стоимость
						</p>
						<p class="box-title">
							10 400 р.
						</p>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<h4 class="small-title box">
					Мои мозги на прокат
				</h4>
				<div class="cols col-5 col-md-6">
					<?php the_field('pole3'); ?>
				</div>
				<div class="cols col-5 col-md-6">
					<div class="consult-time">
						<p class="strong-text">
							Время
						</p>
						<p class="box-title">
							1 месяц по skype
						</p>
						<a href="#" onclick="showPopup(); yaCounter39506875.reachGoal('ORDER22'); return true;">Заказать</a>
					</div>
					<div class="consult-price">
						<p class="strong-text">
							Стоимость
						</p>
						<p class="box-title">
							30 000 р.
						</p>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<div class="cols col-6 col-md-6">
					<img class="content-img full" src="<?php the_field('img-o'); ?>" alt="">
				</div>
				<div class="cols col-5 col-md-6 umbrella">
					<?php the_field('pole14'); ?>
				</div>
			</div>
			<h4 class="small-title box">
				Задать вопрос по настройке Яндекс.Директ вконтакте
				<a class="question_link" href="https://vk.com/topic-55517976_28337937" target="_blank" >бесплатно</a>
			</h4>
	 </div>
 </section>

</main>

<?php
get_footer();
