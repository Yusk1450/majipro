<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="utf-8">
		<title>{$title}</title>
	{include file='html_head.tpl' title={$title} caption={$caption} ogp=''}
	</head>
	<body class="drawer drawer--right bg">
		{include file='header.tpl'}

		<div class="firstView">
			<div class="container-fluid">
				<div class="pc_only firstView">
					<img src="./imgs/firstView_pc.png">
				</div>
				<div class="sp_only">
					<img src="./imgs/firstView_sp.png" alt="firstView">
				</div>
			</div>
		</div>

		<div id="news">
			<div class="bg">
				<img src="./imgs/news_back.png" class="pc_only">
				<img src="./imgs/news_bg_sp.png" class="sp_only">
				<div class="space pc_only"></div>
			</div>

			<div class="container-fluid innerarea">
				<div class="d-flex news_content">
					<div class="title">
						<img src="./imgs/news_title.png" alt="新着一覧">
					</div>
					<div class="news_list black_color fs_20">
						<div class="item">
							<div class="date fw-regular">2026/08/20</div>
							<div class="fw-bold">Webサイトを公開しました！</div>
						</div>
						<div class="border_line d-none"></div>
						<div class="item d-none">
							<div class="date fw-regular">2026/01/01</div>
							<div class="fw-bold">テストテストテストテストテストテストテストテストテストテスト</div>
						</div>
						<div class="border_line d-none"></div>
						<div class="item d-none">
							<div class="date fw-regular">2026/01/01</div>
							<div class="fw-bold">テストテストテストテストテストテストテストテストテストテスト</div>
						</div>
						<a href="#" class="more_btn d-none">
							<div class="d-flex">
								<div class="gold_color fw-bold">
									ニュースへ
								</div>
								<div class="gold_color">
									<i class="fas fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</div>

				</div>
			</div>
		</div>


		<div id="story">
			<div class="bg">
				<div class="top">
					<img src="./imgs/bg_line_top.png">
				</div>
				<div class="bottom">
					<img src="./imgs/bg_line_top.png">
				</div>
				<div class="magic">
					<img src="./imgs/story_back.png">
				</div>
				<div class="left_top pc_only">
					<img src="./imgs/story_side.png">
				</div>
				<div class="left_bottom pc_only">
					<img src="./imgs/story_side.png">
				</div>
				<div class="right_top pc_only">
					<img src="./imgs/story_side.png">
				</div>
				<div class="right_bottom pc_only">
					<img src="./imgs/story_side.png">
				</div>
			</div>

			<div class="container-fluid innerarea">

				<div class="title">
					<img src="./imgs/story_title.png" alt="ストーリー">
				</div>

				<div class="story_text fw-bold fs_24">
					日常の裏側には、もう一つの世界が存在する。<br>そこには、それぞれ異なる価値観や役割を持つ個性豊かな存在たちが暮らしている。<br>彼らは敵か味方か、それとも――<br>出会いを重ねるたびに隠された真実が少しずつ明らかになり、世界の見え方は変わっていく。<br>すべてのカードは、その世界を知るための一つの物語である。
				</div>
			</div>
		</div>

		<div id="firstUser">
			<div class="container-fluid innerarea">
				<div class="title d-flex">
					<div class="text">
						<img src="./imgs/firstUser_title.png" alt="はじめての方へ">
					</div>
					<div class="decoration pc_only">
						<img src="./imgs/title_decoration.png">
					</div>
				</div>

				<div class="content d-flex">
					<div class="fs_32 fw-bold sp_only">
						Majicayo 怪人カードとは
					</div>
					<div class="d-flex sp_cards">
						<div class="card_item green_glow">
							<img src="./imgs/cards/kaijin/16_sutapurazuma.webp">
						</div>
						<div class="card_item sp_only">
							<img src="./imgs/cards/card_back.webp">
						</div>
					</div>
					<div class="textarea fw-bold">
						<div class="fs_32 pc_only">
							Majicayo 怪人カードとは
						</div>
						<div class="fs_32 yellow_color">
							怪人たちを組み合わせて戦う対戦型カードゲーム！	
						</div>
						<div class="fs_24">
							怪人をフィールドに出して戦わせ、仲間の怪人と「コラボ」してパワーアップ！<br>サポートカードやトリガーカードを使えば、戦況を一気にひっくり返すこともできる！<br><br>自分だけのデッキを作って、個性豊かな怪人たちと一緒にバトルを楽しもう！
						</div>
					</div>
					<div class="card_item pc_only">
						<img src="./imgs/cards/card_back.webp">
					</div>
				</div>
				<a href="./howtoplay.php" class="more_btn">
					<div class="d-flex">
						<div class="gold_color fw-bold">
							あそびかた
						</div>
						<div class="gold_color">
							<i class="fas fa-chevron-right"></i>
						</div>
					</div>
				</a>
			</div>
		</div>

		<div class="card_list">
			<div class="container-fluid innerarea">
				<div class="title d-flex">
					<div class="text">
						<img src="./imgs/cardList_title.png" alt="カードリスト">
					</div>
					<div class="decoration pc_only">
						<img src="./imgs/title_decoration.png">
					</div>
				</div>
				
				<div class="content">
					{foreach $cards as $card}
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
				<a href="./cardlist.php" class="more_btn">
					<div class="d-flex">
						<div class="gold_color fw-bold">
							もっと見る
						</div>
						<div class="gold_color">
							<i class="fas fa-chevron-right"></i>
						</div>
					</div>
				</a>
			</div>
		</div>

		<div id="contact">
			<div class="container-fluid innerarea">
				<div class="title">
					<img src="./imgs/contact_title.png" alt="お問い合わせ">
				</div>
				<div class="content black_color fs_20">
					<div class="form_item">
						<div class="label d-flex">
							<div>
								お名前
							</div>
							<div class="red_color fs_12">
								必須
							</div>
						</div>
						<div class="input">
							<input type="text" id="name" name="name" placeholder="稲沢太郎" class="form-control form-control-lg">
						</div>
					</div>

					<div class="form_item">
						<div class="label d-flex">
							<div>
								ご所属
							</div>
						</div>
						<div class="input">
							<input type="text" id="company" name="company" placeholder="〇〇株式会社" class="form-control form-control-lg">
						</div>
					</div>

					<div class="form_item">
						<div class="label d-flex">
							<div>
								メールアドレス
							</div>
							<div class="red_color fs_12">
								必須
							</div>
						</div>
						<div class="input">
							<input type="text" id="mail" name="mail" placeholder="name@example.com" class="form-control form-control-lg">
						</div>
					</div>

					<div class="form_item textarea_item">
						<div class="label d-flex">
							<div>
								問い合わせ内容
							</div>
							<div class="red_color fs_12">
								必須
							</div>
						</div>
						<div class="input">
							<select id="genre" name="genre" required class="form-select form-select-lg">
								<option value="" selected disabled>こちらからお選びください</option>
								<option value="1">怪人カードの配布について</option>
								<option value="2">怪人カードのルールについて</option>
								<option value="3">怪人参加（協賛）について</option>
								<option value="4">その他</option>
							</select>
						</div>
					</div>

					<div class="form_item">
						<textarea id="contents" name="contents" placeholder="お問い合わせ内容をご記入ください。" class="form-control form-control-lg"></textarea>
					</div>
					<div class="submit_btn">
						送信する
					</div>

				</div>

				

			</div>
		</div>

		{include file='footer.tpl'}
	</body>
</html>