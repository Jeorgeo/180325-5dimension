<?php

add_action( 'init', 'register_cpt_reviews_video' );
function register_cpt_reviews_video() {

	$labels = array(
		'name' => __( 'Видео отзывы', 'reviews_video' ),
		'singular_name' => __( 'Видео отзывы', 'reviews_video' ),
		'add_new' => __( 'Добавить видео отзыв', 'reviews_video' ),
		'add_new_item' => __( 'Добавить видео отзыв', 'reviews_video' ),
		'edit_item' => __( 'Редактировать видео отзыв', 'reviews_video' ),
		'new_item' => __( 'Новый видео отзыв', 'reviews_video' ),
		'view_item' => __( 'Посмотреть видео отзыв', 'reviews_video' ),
		'search_items' => __( 'Найти видео отзыв', 'reviews_video' ),
		'not_found' => __( 'Ничего не найдено', 'reviews_video' ),
		'not_found_in_trash' => __( 'Ничего не найдено в корзине', 'reviews_video' ),
		'parent_item_colon' => __( 'Родитель:', 'reviews_video' ),
		'menu_name' => __( 'Видео отзывы', 'reviews_video' ),
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

	register_post_type( 'reviews_video', $args );
}

?>