<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Dinelli
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="yandex-verification" content="a84b2d3269d3a3d1" />
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<?php wp_head(); ?>

</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<header id="masthead" class="site-header left-panel">
		<div class="box-menu-toggle">
			<div id="js-toggle" class="left-panel__menu-toggle">
				<button class="header-menu-toggle"><span>menu</span></button>
			</div>
			<div id="logo" class="site-branding">
			<?php	the_custom_logo(); ?>
			</div>
			<nav id="site-navigation" class="left-panel__primary-menu">

				<?php
					wp_nav_menu( array(
						'theme_location' => 'menu-1',
						'menu_id'        => 'primary-menu',
					) );
				?>
			</nav><!-- #site-navigation -->
			<div class="sidebar-delim"></div><!-- #линия-разделитель -->
			<div class="left-panel__contacts">
				<ul class="sidebar-contacts">
					<li><?php dynamic_sidebar( 'mail' ); ?></li>
					<li><?php dynamic_sidebar( 'phone' ); ?></li>
					<li><?php dynamic_sidebar( 'phone_b' ); ?></li>
					<li>
						<a href="#" id="js_modal" onclick="showPopup()" class="show_modal">
							<span class="color-text">[ </span>
							Заказать звонок
							<span class="color-text"> ]</span>
						</a>
						<a href="#" id="js_modal" onclick="showPopupR()" class="show_modal">
							<span class="color-text">[ </span>
							Оставить отзыв
							<span class="color-text"> ]</span>
						</a>
					</li>
				</ul>
				<ul class="sidebar-social clearfix">
					<li><?php dynamic_sidebar( 'social_vk' ); ?></a></li>
					<li><?php dynamic_sidebar( 'social_f' ); ?></a></li>
					<li><?php dynamic_sidebar( 'social_youtube' ); ?></a></li>
					<li><?php dynamic_sidebar( 'social_instagram' ); ?></a></li>
				</ul>
			</div>

			<div class="sidebar-delim"></div><!-- #линия-разделитель -->

			<div class="left-panel__certification">
				<ul class="sidebar_list">
					<li><p>Сертифицировано</p></li>
					<?php dynamic_sidebar( 'yd_icon' ); ?>
				</ul>
			</div>

			<div class="sidebar-delim"></div><!-- #линия-разделитель -->

			<div class="left-panel__events">
				<?php dynamic_sidebar( 'events' ); ?>
			</div>
		</div>

	</header><!-- #masthead -->

	<div id="content" class="site-content">
