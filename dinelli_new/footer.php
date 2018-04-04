<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Dinelli
 */

?>

		<div id="footer" class="main footer">
			<div class="container">
				<div class="top-footer">
					<div class="cols col-4 col-md-6 footer_links">
						<?php dynamic_sidebar( 'footer_links' ); ?>
					</div>
					<div class="cols col-2 col-md-6 footer-contacts">
						<div id="logo" class="site-branding">
						<?php	the_custom_logo(); ?>
						</div>
						<?php dynamic_sidebar( 'phone' ); ?>
						<?php dynamic_sidebar( 'phone_b' ); ?>
						<div class="contacts_icon">
							<span class="contacts_icon-w"></span>
							<span class="contacts_icon-v"></span>
							<span class="contacts_icon-t"></span>
						</div>
						<?php dynamic_sidebar( 'footer_contacts' ); ?>
					</div>
					<div class="cols col-5">
						<?php dynamic_sidebar( 'footer_courses' ); ?>
					</div>
				</div>
				<div class="bottom-footer">
					<div class="cols col-4 col-md-6 footer_about">
						<?php dynamic_sidebar( 'footer_about' ); ?>
					</div>
					<div class="cols col-2 col-md-6">
						<?php dynamic_sidebar( 'footer_policy' ); ?>
					</div>
					<div class="cols col-5">
						<?php dynamic_sidebar( 'footer_copy' ); ?>
					</div>
				</div>
			</div>
		</div><!--/#footer-->

	<!-- popup form -->

	<div class="wrap"></div>
	<div class="popup-question-thanks">
		<div class="popup-question-close">
	    close
	  </div>
	  <div class="box-content">
	  	<p>
				Спасибо! Мы перезвоним вам в самое ближайшее время!
			</p>
			<p>
				С уважением, Нелли Давыдова.
	  	</p>
	  </div>
	</div>

	<div id="window" class="popup-question">
	  <div class="popup-question-close">
	    close
	  </div>
		<div class="details-form">
			<form id="js_form" method="post" class="cloud-form order-form">
				<!-- Hidden Required Fields -->
				<input type="hidden" name="project_name" value="Dinelli.ru">
				<!--input type="hidden" name="admin_email" value=""!-->
				<?php dynamic_sidebar( 'admin_mail' ); ?>
				<input type="hidden" name="form_subject" value="Заявка с сайта.Консультация">
				<!-- END Hidden Required Fields -->
				<label class="cloud-form__phone" for="phone">Телефон</label>
				<input id="phone" class="cloud-form__phone" type="text" name="phone"
				value="" placeholder="+7(___) ___-__-__" required
				pattern="^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$">
				<label  class="cloud-form__message" for="message">сообщение</label>
				<textarea id="message" class="cloud-form__message" name="message"
				rows="3" cols="60" placeholder=""></textarea>
				<button id="submit" class="cloud-form__submit" type="submit" name="submit">
					Заказать звонок
				</button>
				<input id="сonsent-p" class="cloud-form__сonsent" type="checkbox" name="сonsent" value="" required>
				<label class="cloud-form__сonsent" for="сonsent-p">
					Согласие на обработку персональных данных
				</label>
			</form>
		</div>
	</div>

	<script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script src="http://code.jquery.com/jquery-migrate-3.0.1.min.js" integrity="sha256-F0O1TmEa4I8N24nY0bya59eP6svWcshqX1uzwaWC4F4=" crossorigin="anonymous"></script>
	<script src="<?php bloginfo('template_url'); ?>/js/jquery.mosaicflow.min.js"></script>
	<?php wp_footer(); ?>

</body>
</html>
