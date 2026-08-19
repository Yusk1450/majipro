<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="utf-8">
		<title>{$title}</title>
	{include file='html_head.tpl' title={$title} caption={$caption} ogp=''}
	</head>
	<body class="drawer drawer--right bg">
		{include file='header.tpl'}

        <div id="howtoplay">
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
                <div class="title">
                    <img src="./imgs/howtoplay_title.png" alt="あそびかた">
                </div>
                <div class="howtoplay_movie">
                    <div class="subject_title">
                        <div class="subject_bg">
                            <img src="./imgs/howtoplay_subject_decoration.png">
                        </div>
                        <div class="text fw-bold fs_32 gold_color">
                            あそびかた動画
                        </div>
                    </div>
                    <div class="youtube">
                        <iframe src="https://www.youtube.com/embed/-2nDRJSW7DY?si=VAx7DtgeoutA6ReD" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="card_genre">
                    <div class="magical_bg">
                        <img src="./imgs/howtoplay_magical_bg.png">
                    </div>
                    <div class="content">
                    <div class="subject_title">
                        <div class="subject_bg">
                            <img src="./imgs/howtoplay_subject_decoration.png">
                        </div>
                        <div class="text fw-bold fs_32 gold_color">
                            カードの種類
                        </div>
                    </div>

                    <div class="black_color fs_20 fw-bold">
                        Majicayo 怪人カードで使うカードには<br>「怪人カード」「サポートカード」「トリガーカード」の３種類ある。
                    </div>

                    <div class="d-flex kaijin_cards">
                        <div class="card_text">
                            <div class="title">
                                <img src="./imgs/kaijin_title.png" alt="怪人カード">
                            </div>

                            <div class="black_color fs_24 fw-bold">
                                怪人カードにはバトルで必要な多様なデータが記載されている。 <br>「戦闘力」「コスト」「能力」の３要素を把握して戦いに備えよう！
                            </div>
                            <div class="d-flex details">
                                <div class="detail_container">
                                    <div class="detail_item">
                                        <div class="d-flex">
                                            <div class="number fw-bold fs_24">
                                                1
                                            </div>
                                            <div class="fw-bold fs_24 gold_color">
                                                属性
                                            </div>
                                        </div>
                                        <div class="black_color fs_24 fw-bold">
                                            カード同士の相性を表す。「コラボ」を行う時に、属性が火(い)→
                                            風(な)→土(ざ)→水(わ)→火(い)…の順番でコラボすることができる。
                                        </div>
                                    </div>
                                    <div class="detail_item">
                                        <div class="d-flex">
                                            <div class="number fw-bold fs_24">
                                                2
                                            </div>
                                            <div class="fw-bold fs_24 gold_color">
                                                戦闘力
                                            </div>
                                        </div>
                                        <div class="black_color fs_24 fw-bold">
                                            攻撃した際に相手に与えるダメージ数。コラボするとコラボすると戦闘力が合計される。
                                        </div>
                                    </div>
                                </div>
                                <div class="detail_container">
                                    <div class="detail_item">
                                        <div class="d-flex">
                                            <div class="number fw-bold fs_24">
                                                3
                                            </div>
                                            <div class="fw-bold fs_24 gold_color">
                                                コスト
                                            </div>
                                        </div>
                                        <div class="black_color fs_24 fw-bold">
                                            倒された際はこの数値分ライフから山札へ加える。
                                        </div>
                                    </div>
                                    <div class="detail_item">
                                        <div class="d-flex">
                                            <div class="number fw-bold fs_24">
                                                4
                                            </div>
                                            <div class="fw-bold fs_24 gold_color">
                                                カード名
                                            </div>
                                        </div>
                                    </div>
                                    <div class="detail_item">
                                        <div class="d-flex">
                                            <div class="number fw-bold fs_24">
                                                5
                                            </div>
                                            <div class="fw-bold fs_24 gold_color">
                                                能力
                                            </div>
                                        </div>
                                        <div class="black_color fs_24 fw-bold">
                                            バトルや展開を有利にする効果で、コラボ時は最上位にある怪人のみ発動可能。
                                        </div>
                                    </div>
                                    <div class="detail_item">
                                        <div class="d-flex">
                                            <div class="number fw-bold fs_24">
                                                6
                                            </div>
                                            <div class="fw-bold fs_24 gold_color">
                                                企業名
                                            </div>
                                        </div>
                                        <div class="black_color fs_24 fw-bold">
                                            怪人の元となった企業名。
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card_detail">
                            <img src="./imgs/kaijin_detail.png" alt="怪人カード">
                        </div>
                    </div>

                    <div class="d-flex support_trigger_cards_container">
                        <div class="d-flex support_trigger_cards">
                            <div class="card_text">
                                <div class="title">
                                    <img src="./imgs/support_title.png" alt="サポートカード">
                                </div>
                                <div class="detail_container">
                                    <div class="black_color fs_24 fw-bold">
                                        自分のターン中であれば、回数制限なくいつでも自由に使用できる。
                                    </div>
                                    <div class="detail_item">
                                        <div class="d-flex">
                                            <div class="number fw-bold fs_24">
                                                1
                                            </div>
                                            <div class="fw-bold fs_24 gold_color">
                                                カード名
                                            </div>
                                        </div>
                                    </div>
                                    <div class="detail_item">
                                        <div class="d-flex">
                                            <div class="number fw-bold fs_24">
                                                2
                                            </div>
                                            <div class="fw-bold fs_24 gold_color">
                                                カードタイプ
                                            </div>
                                        </div>
                                    </div>
                                    <div class="detail_item">
                                        <div class="d-flex">
                                            <div class="number fw-bold fs_24">
                                                3
                                            </div>
                                            <div class="fw-bold fs_24 gold_color">
                                                カード説明
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="card_detail">
                                <img src="./imgs/support_detail.png" alt="サポートカード">
                            </div>
                        </div>
                        <div class="d-flex support_trigger_cards">
                            <div class="d-flex support_trigger_cards">
                                <div class="card_text">
                                    <div class="title">
                                        <img src="./imgs/trigger_title.png" alt="トリガーカード">
                                    </div>
                                    <div class="detail_container">
                                        <div class="black_color fs_24 fw-bold">
                                        フィールドに最大4枚まで伏せられ、条件を満たすと相手ターンでも使える。
                                        </div>
                                        <div class="detail_item">
                                            <div class="d-flex">
                                                <div class="number fw-bold fs_24">
                                                    1
                                                </div>
                                                <div class="fw-bold fs_24 gold_color">
                                                    カード名
                                                </div>
                                            </div>
                                        </div>
                                        <div class="detail_item">
                                            <div class="d-flex">
                                                <div class="number fw-bold fs_24">
                                                    2
                                                </div>
                                                <div class="fw-bold fs_24 gold_color">
                                                    カードタイプ
                                                </div>
                                            </div>
                                        </div>
                                        <div class="detail_item">
                                            <div class="d-flex">
                                                <div class="number fw-bold fs_24">
                                                    3
                                                </div>
                                                <div class="fw-bold fs_24 gold_color">
                                                    カード説明
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card_detail">
                                    <img src="./imgs/trigger_detail.png" alt="トリガーカード">
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>

            <div class="container-fluid battle_state">
                <div class="battle_state_title">
                    <div class="bg">
                        <img src="./imgs/howtoplay_battle.png">
                    </div>
                    <div class="text fw-bold fs_32 black_color">
                        バトル準備
                    </div>
                </div>

                <div class="decks">
                    <img src="./imgs/decks.png">
                </div>

                <div class="battle_state_title">
                    <div class="bg">
                        <img src="./imgs/howtoplay_battle.png">
                    </div>
                    <div class="text fw-bold fs_32 black_color">
                        バトル開始！
                    </div>
                </div>
            </div>
            <div class="container-fluid innerarea">
                <div class="battle_flow">
                    <div class="subject_title">
                        <div class="subject_bg">
                            <img src="./imgs/howtoplay_subject_decoration.png">
                        </div>
                        <div class="text fw-bold fs_32 gold_color">
                            ターンの流れ
                        </div>
                    </div>
                    <div class="fs_20 fw-bold">
                        自分のターンには、怪人の召喚や攻撃、ターン終わりの手札調整までを以下の手順で行います。
                    </div>
                    <div class="turn_flow">
                        <img src="./imgs/turn_pc.png">
                    <div>
                    <div class="flow_container">
                        <div class="flow_item">
                            <div class="d-flex">
                                <div class="detail_container">
                                    <div class="item">
                                        <div class="subject">
                                            <div class="bg">
                                                <img src="./imgs/howtoplay_item_decoration.png">
                                            </div>
                                            <div class="text fw-bold fs_32 gold_color">
                                                ①山札から1枚ドロー（引く）
                                            </div>
                                        </div>
                                        <div class="fs_24 fw-bold">
                                            自分のターンの最初に山札から1枚だけドローすることができます。場に召喚する際に攻撃表示か守備表示を選択します。召喚するかわりにコラボを行うことも可能です。
                                        </div>
                                    </div>
                                </div>
                                <div class="scene_image">
                                    <img src="./imgs/scene1.png">
                                </div>
                            </div>
                        </div>

                        <div class="flow_item">
                            <div class="d-flex">
                                <div class="detail_container">
                                    <div class="item">
                                        <div class="subject">
                                            <div class="bg">
                                                <img src="./imgs/howtoplay_item_decoration.png">
                                            </div>
                                            <div class="text fw-bold fs_32 gold_color">
                                                ②サポートカードを使う
                                            </div>
                                        </div>
                                        <div class="fs_24 fw-bold">
                                            サポートカードは手札から使用できます。使用枚数に制限はなく、効果を発揮した後は墓地へ送られます。
                                        </div>
                                    </div>
                                </div>
                                <div class="scene_image">
                                    <img src="./imgs/scene2.png">
                                </div>   
                            </div>
                        </div>
                        <div class="flow_item">
                            <div class="d-flex">
                                <div class="detail_container">
                                    <div class="item">
                                        <div class="subject">
                                            <div class="bg">
                                                <img src="./imgs/howtoplay_item_decoration.png">
                                            </div>
                                            <div class="text fw-bold fs_32 gold_color">
                                                ③トリガーカードを伏せる
                                            </div>
                                        </div>
                                        <div class="fs_24 fw-bold">
                                            手札のトリガーカードを最大4枚まで場に伏せることができます。
                                        </div>
                                    </div>
                                </div>
                                <div class="scene_image">
                                    <img src="./imgs/scene3.png">
                                </div>   
                            </div>
                        </div>

                        <div class="flow_item">
                            <div class="d-flex">
                                <div class="detail_container">
                                    <div class="item">
                                        <div class="subject">
                                            <div class="bg">
                                                <img src="./imgs/howtoplay_item_decoration.png">
                                            </div>
                                            <div class="text fw-bold fs_32 gold_color">
                                                ④相手の怪人カードを攻撃する
                                            </div>
                                        </div>
                                        <div class="fs_24 fw-bold">
                                            自分の怪人カードで、相手の怪人カードに攻撃をします。その際、自分の怪人カードのも単体もしくはコラボしている場合、コラボした怪人カードの攻撃力の合計の値を相手に与えます。
                                        </div>
                                    </div>
                                </div>
                                <div class="scene_image">
                                    <img src="./imgs/scene4.png">
                                </div>   
                            </div>
                        </div>

                        <div class="flow_item">
                            <div class="d-flex">
                                <div class="detail_container">
                                    <div class="item">
                                        <div class="subject">
                                            <div class="bg">
                                                <img src="./imgs/howtoplay_item_decoration.png">
                                            </div>
                                            <div class="text fw-bold fs_32 gold_color">
                                                ⑤ターン終了時
                                            </div>
                                        </div>
                                        <div class="fs_24 fw-bold">
                                            手札が7枚以上の場合、自身の手札を6枚未満になるまで捨てます。
                                        </div>
                                    </div>
                                </div>
                                <div class="scene_image">
                                    <img src="./imgs/scene5.png">
                                </div>   
                            </div>
                        </div>
                    </div>
                </div>
                </div class="catchphrase">
                    <img src="./imgs/catchphrase.png" alt="あそびかたをマスターして、怪人バトルを楽しもう！！！">
                <div>
            </div>
        </div>

		{include file='footer.tpl'}
	</body>
</html>
