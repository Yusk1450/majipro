<?php

require('smarty/Smarty.class.php');

date_default_timezone_set('Asia/Tokyo');

$smarty = new Smarty();

$smarty->template_dir = './templates';
$smarty->compile_dir = './templates_c';

$kaijin_data = file_get_contents('cards_kaijin.json');
$support_data = file_get_contents('cards_support.json');
$trigger_data = file_get_contents('cards_trigger.json');

$smarty->assign('kaijin_cards', json_decode($kaijin_data, true));
$smarty->assign('support_cards', json_decode($support_data, true));
$smarty->assign('trigger_cards', json_decode($trigger_data, true));

$smarty->assign('title', '【公式】Majicayo Project「怪人カード」');
$smarty->assign('caption', 'Majicayo Project「怪人カード」の公式サイトになります');
$smarty->assign('ogp', '');

$smarty->display('cardlist.tpl');

?>