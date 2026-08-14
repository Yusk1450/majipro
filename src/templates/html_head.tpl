<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/notosansjapanese.css">
<link rel="stylesheet" href="./css/drawer.min.css">
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css"/>
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/style.css">

<!-- Meta -->
{if isset($title) && isset($caption)}
<meta name="title" content="{$title}" />
<meta name="description" content="{$caption}" />
{else}
<meta name="title" content="【公式】Majicayo Project「怪人カード」" />
<meta name="description" content="Majicayo Project「怪人カード」の公式サイトになります" />
{/if}
<meta name="keywords" content="">
<meta name="robot" content="index,follow,noarchive">
<meta name="author" content="Yusk">
<meta name="language" content="ja">

{if isset($ogp)}
<!-- Open Graph / Facebook -->
<meta property="og:type" content="website" />
<meta property="og:url" content="https://yusk1450.com/workdetail.php?id={$id}" />
<meta property="og:title" content="{$title}" />
<meta property="og:description" content="{$caption}" />
<meta property="og:image" content="https://yusk1450.com/imgs/works/{$ogp}" />

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image" />
<meta property="twitter:url" content="https://yusk1450.com/workdetail.php?id={$id}" />
<meta property="twitter:title" content="{$title}" />
<meta property="twitter:description" content="{$caption}" />
<meta property="twitter:image" content="https://yusk1450.com/imgs/works/{$ogp}" />
{/if}