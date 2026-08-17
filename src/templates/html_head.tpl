<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/notosansjapanese.css">
<link href="https://fonts.googleapis.com/css2?family=M+PLUS+1p:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./css/drawer.min.css">
<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css"/>

<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/style.css">

<!-- Meta -->
<meta name="title" content="{$title}" />
<meta name="description" content="{$caption}" />
<meta name="keywords" content="">
<meta name="robot" content="index,follow,noarchive">
<meta name="author" content="Yusk">
<meta name="language" content="ja">

{if isset($ogp)}
<!-- Open Graph / Facebook -->
<meta property="og:type" content="website" />
<meta property="og:url" content="https://majipro.xyz/" />
<meta property="og:title" content="{$title}" />
<meta property="og:description" content="{$caption}" />
<meta property="og:image" content="https://majipro.xyz/" />

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image" />
<meta property="twitter:url" content="https://majipro.xyz/" />
<meta property="twitter:title" content="{$title}" />
<meta property="twitter:description" content="{$caption}" />
<meta property="twitter:image" content="https://majipro.xyz/" />
{/if}