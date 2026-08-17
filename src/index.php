<?php

require('smarty/Smarty.class.php');

date_default_timezone_set('Asia/Tokyo');

$smarty = new Smarty();

$smarty->template_dir = './templates';
$smarty->compile_dir = './templates_c';

$data = file_get_contents('cards_kaijin.json');

$cards = json_decode($data, true);

shuffle($cards);
$smarty->assign('cards', array_slice($cards, 0, 10));

$smarty->assign('title', '【公式】Majicayo Project「怪人カード」');
$smarty->assign('caption', 'Majicayo Project「怪人カード」の公式サイトになります');
$smarty->assign('ogp', '');

$smarty->display('index.tpl');

?>