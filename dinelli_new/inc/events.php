<?php

add_action( 'init', 'register_cpt_events' );
function register_cpt_events() {

	$labels = array(
		'name' => __( 'Видеозаписи', 'events' ),
		'singular_name' => __( 'Видеозаписи', 'events' ),
		'add_new' => __( 'Добавить Видеозапись', 'events' ),
		'add_new_item' => __( 'Добавить Видеозапись', 'events' ),
		'edit_item' => __( 'Редактировать Видеозапись', 'events' ),
		'new_item' => __( 'Новая Видеозапись', 'events' ),
		'view_item' => __( 'Посмотреть Видеозапись', 'events' ),
		'search_items' => __( 'Найти Видеозапись', 'events' ),
		'not_found' => __( 'Ничего не найдено', 'events' ),
		'not_found_in_trash' => __( 'Ничего не найдено в корзине', 'events' ),
		'parent_item_colon' => __( 'Родитель:', 'events' ),
		'menu_name' => __( 'Видеозаписи', 'events' ),
	);

	$args = array(
		'labels' => $labels,
		'hierarchical' => false,
		'supports' => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail', 'trackbacks', 'comments', 'revisions', 'page-attributes' ),
		//'supports' => array( 'title', 'editor', 'author', 'thumbnail' ),
		'taxonomies' => array(  ),
		'public' => true,
		'show_ui' => true,
		'show_in_menu' => true,
		//'menu_icon' => 'icon.png',
		'show_in_nav_menus' => true,
		'publicly_queryable' => true,
		'exclude_from_search' => true,
		'has_archive' => false,
		'query_var' => true,
		'can_export' => true,
		'rewrite' => true,
		'capability_type' => 'post'
	);

	register_post_type( 'events', $args );
}

?>
