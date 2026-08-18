<?php

require('smarty/Smarty.class.php');

date_default_timezone_set('Asia/Tokyo');

$smarty = new Smarty();

$smarty->template_dir = './templates';
$smarty->compile_dir = './templates_c';
$data = file_get_contents('cards_kaijin.json');
$cards = json_decode($data, true);

$id = $_GET['id'];
$card = null;

foreach ($cards as $item) {
	if ($item['id'] == $id) {
		$card = $item;
		break;
	}
}

if ($card == null) {
	header('Location: cardlist.php');
	exit;
}

$smarty->assign('card', $card);
$smarty->assign('title', $card['name'] . ' | Majicayo Project「怪人カード」');
$smarty->assign('caption', $card['name'] . 'のカード説明です。');
$smarty->assign('ogp', '');

$smarty->display('details.tpl');
