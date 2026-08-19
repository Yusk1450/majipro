<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="utf-8">
		<title>{$title}</title>
	{include file='html_head.tpl' title={$title} caption={$caption} ogp=''}
	</head>
	<body class="drawer drawer--right bg">
		{include file='header.tpl'}

        <div id="details">
            <div class="container-fluid innerarea">
                <div class="d-flex card_container">
                    <div class="card_item
						{if $card.attribute == "火"}red_glow
						{elseif $card.attribute == "水"}blue_glow
						{elseif $card.attribute == "風"}green_glow
						{elseif $card.attribute == "土"}brown_glow
						{elseif $card.attribute == "無"}gray_glow
						{/if}">
                        <img src="./{$card.image}" alt="{$card.name}">
                    </div>
					<div class="info">
						<div class="name">						
							<div class="bg">
								<img src="./imgs/details_name.png" alt="{$card.name}">
							</div>
							<div class="name_detail">
								{if $card.company != ""}
								<div class="company_name_bg">
									<div class="company_name fw-bold fs_20 gold_color">
										{$card.company}
									</div>
								</div>
								{/if}
								<div class="kaijin_name fw-bold fs_32 black_color">
									{$card.name}
								</div>
							</div>
						</div>
						<div class="kaijin_detail">
							<div class="item d-flex align-items-center">
								<div class="subject">
									<img src="./imgs/details_subject.png">
									<div class="subject_title fw-bold fs_20">
										属性
									</div>
								</div>
								<div class="detail_item fw-bold fs_20">
									{$card.attribute}
								</div>
							</div>

							<div class="item d-flex align-items-center">
								<div class="subject">
									<img src="./imgs/details_subject.png">
									<div class="subject_title fw-bold fs_20">
										戦闘力
									</div>
								</div>
								<div class="detail_item fw-bold fs_20">
									{$card.power}
								</div>
							</div>

							<div class="item d-flex align-items-center">
								<div class="subject">
									<img src="./imgs/details_subject.png">
									<div class="subject_title fw-bold fs_20">
										コスト
									</div>
								</div>
								<div class="detail_item fw-bold fs_20">
									{$card.cost}
								</div>
							</div>

							<div class="item d-flex">
								<div class="subject">
									<img src="./imgs/details_subject.png">
									<div class="subject_title fw-bold fs_20">
										能力
									</div>
								</div>
								<div class="detail_item fw-bold fs_20 detail_border">
									{$card.effect}
								</div>
							</div>

							{if $card.pr != ""}
								<div class="item d-flex">
									<div class="subject">
										<img src="./imgs/details_subject.png">
										<div class="subject_title fw-bold fs_20">
											企業の強み
										</div>
									</div>
									<div class="detail_item fw-bold fs_20 detail_border">
										{$card.pr}
									</div>
								</div>
							{/if}

							{if $card.industry != ""}
								<div class="item d-flex align-items-center">
									<div class="subject">
										<img src="./imgs/details_subject.png">
										<div class="subject_title fw-bold fs_20">
											業種
										</div>
									</div>
									<div class="detail_item fw-bold fs_20">
										{$card.industry}
									</div>
								</div>
							{/if}

						</div>
					</div>
                </div>
            </div>
			{if $card.website != ""}
				<div class="d-flex">
					<div class="link">
						<img src="./imgs/link_decoration.png">
						<a href="{$card.website}" target="_blank">
							<i class="fas fa-link"></i>
						</a>
					</div>
				</div>
				<div class="text-center fw-bold fs_20">
					Web
				</div>
			{/if}
			
			<div class="btns d-flex justify-content-center">
				<a href="./cardlist.php" class="back_btn">
					<div class="d-flex">
						<div class="gold_color">
							<i class="fas fa-chevron-left"></i>
						</div>
						<div class="gold_color fw-bold">
							カードリストにもどる
						</div>
					</div>
				</a>
				<a href="./index.php" class="back_btn">
					<div class="d-flex home">
						<div class="gold_color">
							<i class="fas fa-chevron-left"></i>
						</div>
						<div class="gold_color fw-bold">
							ホームに戻る
						</div>
					</div>
				</a>
			</div>
        </div>

		{include file='footer.tpl'}
	</body>
</html>
