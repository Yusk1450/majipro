<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="utf-8">
		<title>{$title}</title>
	{include file='html_head.tpl' title={$title} caption={$caption} ogp=''}
	</head>
	<body class="drawer drawer--right bg">
		{include file='header.tpl'}

		<div class="card_list">
			<div class="container-fluid innerarea">
                <a href="./index.php" class="home_btn">
                    <div class="d-flex">
                        <div class="gold_color">
                            <i class="fas fa-chevron-left"></i>
                        </div>
                        <div class="gold_color fw-bold">
                            ホームに戻る
                        </div>
                    </div>
                </a>
                <div class="title" id="card_list">
                    <div class="text">
                        <img src="./imgs/cardList_title.png" alt="カードリスト">
                    </div>
                </div>
                <div class="content_title">
                    <img src="./imgs/kaijin_title.png" alt="怪人カード">
                </div>
				
				<div class="content">
					{foreach $kaijin_cards as $card}
						<a href="card.php?id={$card.id}" class="card_item kaijin
							{if $card.attribute == "火"}red_glow
							{elseif $card.attribute == "水"}blue_glow
							{elseif $card.attribute == "風"}green_glow
							{elseif $card.attribute == "土"}brown_glow
							{elseif $card.attribute == "無"}gray_glow
						{/if}">
							<img src="./{$card.image}" alt="{$card.name}">
						</a>
					{/foreach}
				</div>

                <div class="content_title">
                    <img src="./imgs/support_title.png" alt="サポートカード">
                </div>

                <div class="content">
                    {foreach $support_cards as $card}
						<div class="card_item gold_glow">
							<img src="./{$card.image}" alt="{$card.name}">
						</div>
					{/foreach}
				</div>

                <div class="content_title">
                    <img src="./imgs/trigger_title.png" alt="トリガーカード">
                </div>

                <div class="content trigger">
                    {foreach $trigger_cards as $card}
						<div class="card_item black_glow">
							<img src="./{$card.image}" alt="{$card.name}">
						</div>
					{/foreach}
				</div>
			</div>
		</div>

		{include file='footer.tpl'}
	</body>
</html>