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
					<?php dynamic_sidebar( 'mail' ); ?>
					<li>
						<a href="#" id="js_modal" onclick="showPopup()" class="show_modal">
							<span class="color-text">[ </span>
							Заказать звонок
							<span class="color-text"> ]</span>
						</a>
					</li>
				</ul>

			</div>

			<div class="sidebar-delim"></div><!-- #линия-разделитель -->

			<ul class="sidebar-social clearfix">
				<li><?php dynamic_sidebar( 'social_vk' ); ?></li>
				<li><?php dynamic_sidebar( 'social_t' ); ?></li>
				<li><?php dynamic_sidebar( 'social_youtube' ); ?></li>
				<li><?php dynamic_sidebar( 'social_instagram' ); ?></li>
				<li><?php dynamic_sidebar( 'social_f' ); ?></li>
			</ul>

			<div class="sidebar-delim"></div><!-- #линия-разделитель -->

			<div class="left-panel__events">
				<?php dynamic_sidebar( 'events' ); ?>
			</div>
		</div>

	</header><!-- #masthead -->

	<div id="content" class="site-content">
