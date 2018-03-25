<?php

add_action( 'init', 'register_cpt_reviews_text' );
function register_cpt_reviews_text() {

	$labels = array(
		'name' => __( 'Письменные отзывы', 'reviews_text' ),
		'singular_name' => __( 'Письменные отзывы', 'reviews_text' ),
		'add_new' => __( 'Добавить письменный отзыв', 'reviews_text' ),
		'add_new_item' => __( 'Добавить письменный отзыв', 'reviews_text' ),
		'edit_item' => __( 'Редактировать письменный отзыв', 'reviews_text' ),
		'new_item' => __( 'Новый письменный отзыв', 'reviews_text' ),
		'view_item' => __( 'Посмотреть письменный отзыв', 'reviews_text' ),
		'search_items' => __( 'Найти письменный отзыв', 'reviews_text' ),
		'not_found' => __( 'Ничего не найдено', 'reviews_text' ),
		'not_found_in_trash' => __( 'Ничего не найдено в корзине', 'reviews_text' ),
		'parent_item_colon' => __( 'Родитель:', 'reviews_text' ),
		'menu_name' => __( 'Письменные отзывы', 'reviews_text' ),
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

	register_post_type( 'reviews_text', $args );
}

?>