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

		</div><!--/#content-->
		<div id="footer" class="main footer">
			<div class="container">
				<div class="row clearfix">
					<div class="cols col-4 col-md-6">
						<div class="footer_content">
							<?php dynamic_sidebar( 'footer_al' ); ?>
							<?php dynamic_sidebar( 'footer_pl' ); ?>
							<?php dynamic_sidebar( 'footer_copy' ); ?>
						</div>
					</div>
					<div class="cols col-7 col-md-6 footer__footer-copy">
						<div class="footer__middle-box">
							<div id="logo" class="site-branding">
							<?php	the_custom_logo(); ?>
							</div>
							<div class="footer-contacts">
								<?php dynamic_sidebar( 'phone' ); ?>
								<?php dynamic_sidebar( 'phone_b' ); ?>
								<div class="contacts_icon">
									<span class="contacts_icon-w"></span>
									<span class="contacts_icon-v"></span>
									<span class="contacts_icon-t"></span>
								</div>
							</div>
							<div class="footer_content">
								<?php dynamic_sidebar( 'footer_about' ); ?>
							</div>
						</div>
						<div class="footer__left-box">
							<div class="footer_content">
								<?php dynamic_sidebar( 'footer_content' ); ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--/#footer-->
	</div><!-- #page -->

	<!-- popup form -->

	<div class="wrap"></div>
	<div class="popup-question-thanks-r">
		<div class="popup-question-close">
	    close
	  </div>
	  <div class="box-content">
	  	<p>
				Спасибо за ваш отзыв!
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
				rows="4" cols="80" placeholder=""></textarea>
				<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER19'); return true;">
					Заказать звонок
				</button>
				<input id="сonsent-p" class="cloud-form__сonsent" type="checkbox" name="сonsent" value="" required>
				<label class="cloud-form__сonsent" for="сonsent-p">
					Согласие на обработку персональных данных
				</label>
			</form>
		</div>
	</div>
	<div id="window" class="popup-question reviews-popup-question">
	  <div class="popup-question-close">
	    close
	  </div>
		<div class="details-form">
			<form id="js_form" method="post" class="cloud-form reviews-form">
				<!-- Hidden Required Fields -->
				<input type="hidden" name="project_name" value="Dinelli.ru">
				<?php dynamic_sidebar( 'admin_mail' ); ?>
				<input type="hidden" name="form_subject" value="Отзыв с сайта">
				<!-- END Hidden Required Fields -->
				<label class="cloud-form__phone" for="phone">Телефон</label>
				<input id="phone" class="cloud-form__phone" type="text" name="phone"
				value="" placeholder="+7(___) ___-__-__" required
				pattern="^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$">
				<label class="cloud-form__mail" for="mail">e-mail</label>
				<input id="mail"  class="cloud-form__mail" type="text" name="mail"
				value="" placeholder="iNfo@DiNelli.ru" required
				pattern="^([A-Za-z0-9_\.\-]{1,20})@([a-z0-9\.\-]{1,20})\.([a-z]{2,4})">
				<label  class="cloud-form__message" for="message">отзыв</label>
				<textarea id="message" class="cloud-form__message" name="message"
				rows="4" cols="80" placeholder=""></textarea>
				<button id="submit" class="cloud-form__submit" type="submit" name="submit" onclick="yaCounter39506875.reachGoal('ORDER20'); return true;">
					Оставить отзыв
				</button>
				<input id="сonsent-r" class="cloud-form__сonsent" type="checkbox" name="сonsent" value="" required>
				<label class="cloud-form__сonsent" for="сonsent-r">
					Согласие на обработку персональных данных
				</label>
			</form>
		</div>
	</div>


	<?php wp_footer(); ?>
	<!-- Yandex.Metrika counter --> <script type="text/javascript" > (function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter39506875 = new Ya.Metrika({ id:39506875, clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true }); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = "https://mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks"); </script> <noscript><div><img src="https://mc.yandex.ru/watch/39506875" style="position:absolute; left:-9999px;" alt="" /></div></noscript> <!-- /Yandex.Metrika counter -->
</body>
</html>
