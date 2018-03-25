<?php
/**
 * Dinelli functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Dinelli
 */

if ( ! function_exists( 'dinelli_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function dinelli_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on Dinelli, use a find and replace
		 * to change 'dinelli' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'dinelli', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'dinelli' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'dinelli_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'dinelli_setup' );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
 function dinelli_widgets_init() {
	 register_sidebar( array(
	 	'name'          => esc_html__( 'admin_mail', 'dinelli' ),
	 	'id'            => 'admin_mail',
	 	'description'   => esc_html__( 'Майл отправки корреспонденции', 'dinelli' ),
	 	'before_widget' => '<div>',
	 	'after_widget'  => '</div>',
	 	'before_title'  => '<h2 class="widget-title">',
	 	'after_title'   => '</h2>',
	 ) );
 	register_sidebar( array(
 		'name'          => esc_html__( 'mail', 'dinelli' ),
 		'id'            => 'mail',
 		'description'   => esc_html__( 'Add widgets here.', 'dinelli' ),
 		'before_widget' => '<div id="%1$s" class="widget %2$s">',
 		'after_widget'  => '</div>',
 		'before_title'  => '<h2 class="widget-title">',
 		'after_title'   => '</h2>',
 	) );
 	register_sidebar( array(
 		'name'          => esc_html__( 'phone-top', 'dinelli' ),
 		'id'            => 'phone',
 		'description'   => esc_html__( 'Add widgets here.', 'dinelli' ),
 		'before_widget' => '<div id="%1$s" class="widget phone">',
 		'after_widget'  => '</div>',
 		'before_title'  => '<h2 class="widget-title">',
 		'after_title'   => '</h2>',
 	) );
 	register_sidebar( array(
 		'name'          => esc_html__( 'phone-bottom', 'dinelli' ),
 		'id'            => 'phone_b',
 		'description'   => esc_html__( 'Add widgets here.', 'dinelli' ),
 		'before_widget' => '<div id="%1$s" class="widget phone">',
 		'after_widget'  => '</div>',
 		'before_title'  => '<h2 class="widget-title">',
 		'after_title'   => '</h2>',
 	) );
 	register_sidebar( array(
 		'name'          => esc_html__( 'social_vk', 'dinelli' ),
 		'id'            => 'social_vk',
 		'description'   => esc_html__( 'Add widgets here. <a href="#" class="social_vk" target="_blanck">
		</a>', 'dinelli' ),
 		'before_widget' => '<div id="%1$s" class="widget %2$s">',
 		'after_widget'  => '</div>',
 		'before_title'  => '<h2 class="widget-title">',
 		'after_title'   => '</h2>',
 	) );
 	register_sidebar( array(
 		'name'          => esc_html__( 'social_f', 'dinelli' ),
 		'id'            => 'social_f',
 		'description'   => esc_html__( 'Add widgets here.<a href="#" class="social_f" target="_blanck">
		</a>', 'dinelli' ),
 		'before_widget' => '<div id="%1$s" class="widget %2$s">',
 		'after_widget'  => '</div>',
 		'before_title'  => '<h2 class="widget-title">',
 		'after_title'   => '</h2>',
 	) );
 	register_sidebar( array(
 		'name'          => esc_html__( 'social_youtube', 'dinelli' ),
 		'id'            => 'social_youtube',
 		'description'   => esc_html__( 'Add widgets here.<a href="#" class="social_yt" target="_blanck">
		</a>', 'dinelli' ),
 		'before_widget' => '<div id="%1$s" class="widget %2$s">',
 		'after_widget'  => '</div>',
 		'before_title'  => '<h2 class="widget-title">',
 		'after_title'   => '</h2>',
 	) );
 	register_sidebar( array(
 		'name'          => esc_html__( 'social_instagram', 'dinelli' ),
 		'id'            => 'social_instagram',
 		'description'   => esc_html__( 'Add widgets here.<a href="#" class="social_in" target="_blanck">
		</a>', 'dinelli' ),
 		'before_widget' => '<div id="%1$s" class="widget %2$s">',
 		'after_widget'  => '</div>',
 		'before_title'  => '<h2 class="widget-title">',
 		'after_title'   => '</h2>',
 	) );
	register_sidebar( array(
 		'name'          => esc_html__( 'События', 'dinelli' ),
 		'id'            => 'events',
 		'description'   => esc_html__( 'Add events here.', 'dinelli' ),
 		'before_widget' => '<div id="%1$s" class="widget %2$s">',
 		'after_widget'  => '</div>',
 		'before_title'  => '<h2 class="widget-title">',
 		'after_title'   => '</h2>',
 	) );
	register_sidebar( array(
 		'name'          => esc_html__( 'Сертификат яндекса', 'dinelli' ),
 		'id'            => 'yd_icon',
 		'description'   => esc_html__( 'Вставте картинку со ссылкой', 'dinelli' ),
 		'before_widget' => '<li>',
 		'after_widget'  => '</li>',
 		'before_title'  => '<h2 class="widget-title">',
 		'after_title'   => '</h2>',
 	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Ссылки на обучение активные', 'dinelli' ),
		'id'            => 'footer_al',
		'description'   => esc_html__( 'Add widgets here.', 'dinelli' ),
		'before_widget' => '<div class="active-link">',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Ссылки на обучение пассивные', 'dinelli' ),
		'id'            => 'footer_pl',
		'description'   => esc_html__( 'Add widgets here.', 'dinelli' ),
		'before_widget' => '<div class="passive-link">',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Ссылки на страницы о', 'dinelli' ),
		'id'            => 'footer_about',
		'description'   => esc_html__( 'Add widgets here.', 'dinelli' ),
		'before_widget' => '<div class="about-link">',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
 		'name'          => esc_html__( 'Контент в подвале', 'dinelli' ),
 		'id'            => 'footer_content',
 		'description'   => esc_html__( 'Add widgets here.', 'dinelli' ),
 		'before_widget' => '<div class="content-link">',
 		'after_widget'  => '</div>',
 		'before_title'  => '<h2 class="widget-title">',
 		'after_title'   => '</h2>',
 	) );
 	register_sidebar( array(
 		'name'          => esc_html__( 'Копирайт и политика в подвале', 'dinelli' ),
 		'id'            => 'footer_copy',
 		'description'   => esc_html__( 'Add widgets here.', 'dinelli' ),
 		'before_widget' => '<div id="%1$s" class="footer_copy">',
 		'after_widget'  => '</div>',
 		'before_title'  => '<h2 class="widget-title">',
 		'after_title'   => '</h2>',
 	) );
 }
 add_action( 'widgets_init', 'dinelli_widgets_init' );

/**
 * Enqueue scripts and styles.
 */

function dinelli_scripts() {

	$dineli_url = get_template_directory_uri();

	wp_enqueue_style( 'normalize-style', $dineli_url . "/css/normalize.css", array(), 		'2', 'all' );

	/*wp_enqueue_style( 'jquery_fancybox-style' ,  $dineli_url . "/css/jquery.fancybox.css", array(), 		'2', 'all' );

	wp_enqueue_style( 'jquery_bxslider-style' ,  $dineli_url . "/css/jquery.bxslider.css", array(), 		'2', 'all' );

	wp_enqueue_style( 'animate-style' ,  $dineli_url . "/css/animate.css", array(), 		'2', 'all' );
	*/

	wp_enqueue_style( 'dinelli-style', get_stylesheet_uri() );

	wp_enqueue_script( 'dinelli-skip-link-focus-fix', $dineli_url . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	wp_enqueue_script('jquery-min', $dineli_url . '/js/jquery.min.js', array(), true );

	/*wp_enqueue_script('jquery-mousewheel', $dineli_url . '/js/jquery.mousewheel-3.0.6.pack.js', array(), '20151215', true );

	wp_enqueue_script('jquery-bxslider', $dineli_url . '/js/jquery.bxslider.min.js', array(), '20151215', true );

	wp_enqueue_script('jquery-fancybox', $dineli_url . '/js/jquery.fancybox.pack.js', array(), '20151215', true );

	wp_enqueue_script('wow-min', $dineli_url . '/js/wow.min.js', array(), '20151215', true );
	*/

	wp_enqueue_script('main', $dineli_url . '/js/main.js', array(), '1', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'dinelli_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

/**
 * TGM.
 */
require get_template_directory() . '/tgm/dinelli_tgm.php';

/**
 * Custom reviews_text.
 */
require get_template_directory() . '/inc/reviews_text.php';

/**
 * Custom reviews_vk.
 */
require get_template_directory() . '/inc/reviews_video.php';

/**
 * Custom reviews_video.
 */
require get_template_directory() . '/inc/vk_topik.php';

/**
 * Custom events.
 */
require get_template_directory() . '/inc/events.php';
