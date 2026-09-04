<?php
	/*
	* カスタム投稿タイプ追加（怪人カード）
	*/
	add_action( 'init', 'register_cpt_kaijin' );

	function register_cpt_kaijin() {

		$labels = array(
			'name' => _x( '怪人カード', 'kaijin' ),
			'singular_name' => _x( '怪人カード', 'kaijin' ),
			'add_new' => _x( '新規作成', 'kaijin' ),
			'add_new_item' => _x( '新しいカードを追加', 'kaijin' ),
			'edit_item' => _x( 'カードを編集', 'kaijin' ),
			'new_item' => _x( '新しいカード', 'kaijin' ),
			'view_item' => _x( 'カードを見る', 'kaijin' ),
			'search_items' => _x( 'カード検索', 'kaijin' ),
			'not_found' => _x( 'カードが見つかりません', 'kaijin' ),
			'not_found_in_trash' => _x( 'ゴミ箱にカードはありません', 'kaijin' ),
			'parent_item_colon' => _x( '親カード:', 'kaijin' ),
			'menu_name' => _x( '怪人カード', 'kaijin' ),
		);

		$args = array(
			'labels' => $labels,
			'hierarchical' => true,

			'supports' => array( 'title', 'editor', 'page-attributes' ),

			'public' => true,
			'show_ui' => true,
			'show_in_menu' => true,
			'show_in_rest' => true,

			'show_in_nav_menus' => true,
			'publicly_queryable' => true,
			'exclude_from_search' => true,
			'has_archive' => true,
			'menu_position' => 5,
			'query_var' => true,
			'can_export' => true,
			'rewrite' => array( 'slug' => 'kaijin', 'with_front' => false ),
			'capability_type' => 'post'
		);

		register_post_type( 'kaijin', $args );
	}

	add_filter( 'single_template', 'majipro_use_page_kaijin_template' );

	function majipro_use_page_kaijin_template( $template ) {
		if ( is_singular( 'kaijin' ) ) {
			$page_template = locate_template( 'page-kaijin.php' );
			if ( $page_template ) {
				return $page_template;
			}
		}
		return $template;
	}

	/*
	* カスタム投稿タイプ追加（サポートカード）
	*/
	add_action( 'init', 'register_cpt_support' );

	function register_cpt_support() {

		$labels = array(
			'name' => _x( 'サポートカード', 'support' ),
			'singular_name' => _x( 'サポートカード', 'support' ),
			'add_new' => _x( '新規作成', 'support' ),
			'add_new_item' => _x( '新しいカードを追加', 'support' ),
			'edit_item' => _x( 'カードを編集', 'support' ),
			'new_item' => _x( '新しいカード', 'support' ),
			'view_item' => _x( 'カードを見る', 'support' ),
			'search_items' => _x( 'カード検索', 'support' ),
			'not_found' => _x( 'カードが見つかりません', 'support' ),
			'not_found_in_trash' => _x( 'ゴミ箱にカードはありません', 'support' ),
			'parent_item_colon' => _x( '親カード:', 'support' ),
			'menu_name' => _x( 'サポートカード', 'support' ),
		);

		$args = array(
			'labels' => $labels,
			'hierarchical' => true,

			'supports' => array( 'title', 'editor' ),

			'public' => true,
			'show_ui' => true,
			'show_in_menu' => true,
			'show_in_rest' => true,

			'show_in_nav_menus' => true,
			'publicly_queryable' => true,
			'exclude_from_search' => true,
			'has_archive' => true,
			'menu_position' => 5,
			'query_var' => true,
			'can_export' => true,
			'rewrite' => array( 'slug' => 'support', 'with_front' => false ),
			'capability_type' => 'post'
		);

		register_post_type( 'support', $args );
	}

	/*
	* カスタム投稿タイプ追加（トリガーカード）
	*/
	add_action( 'init', 'register_cpt_trigger' );

	function register_cpt_trigger() {

		$labels = array(
			'name' => _x( 'トリガーカード', 'trigger' ),
			'singular_name' => _x( 'トリガーカード', 'trigger' ),
			'add_new' => _x( '新規作成', 'trigger' ),
			'add_new_item' => _x( '新しいカードを追加', 'trigger' ),
			'edit_item' => _x( 'カードを編集', 'trigger' ),
			'new_item' => _x( '新しいカード', 'trigger' ),
			'view_item' => _x( 'カードを見る', 'kaijin' ),
			'search_items' => _x( 'カード検索', 'trigger' ),
			'not_found' => _x( 'カードが見つかりません', 'trigger' ),
			'not_found_in_trash' => _x( 'ゴミ箱にカードはありません', 'trigger' ),
			'parent_item_colon' => _x( '親カード:', 'trigger' ),
			'menu_name' => _x( 'トリガーカード', 'trigger' ),
		);

		$args = array(
			'labels' => $labels,
			'hierarchical' => true,

			'supports' => array( 'title', 'editor' ),

			'public' => true,
			'show_ui' => true,
			'show_in_menu' => true,
			'show_in_rest' => true,

			'show_in_nav_menus' => true,
			'publicly_queryable' => true,
			'exclude_from_search' => true,
			'has_archive' => true,
			'menu_position' => 5,
			'query_var' => true,
			'can_export' => true,
			'rewrite' => array( 'slug' => 'trigger', 'with_front' => false ),
			'capability_type' => 'post'
		);

		register_post_type( 'trigger', $args );
	}

	
