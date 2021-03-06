<head>[!seoTitle!]
	<meta http-equiv="Content-Type" content="text/html; charset=[(modx_charset)]" />
	<meta content="width=device-width, initial-scale=1" name="viewport">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
	<meta name="cmsmagazine" content="d8e7426ec72ad3e4ea38b09ebf01284c">
	<meta name='yandex-verification' content='6d68459166068c11'>
	<title>[*titl*]</title>
	[*noIndex*]
	<base href="[(site_url)]"/>
	<link href="https://www.skat59.ru[!$_SERVER['REQUEST_URI']!]" rel="canonical">
	{{#favicons}}
	<@IF:[*longtitle:len:gt(2)*]>
		<meta name="longtitle" content="[*longtitle:hsc*]">
	<@ELSE>
		<meta name="longtitle" content="[*pagetitle:hsc*]">
	<@ENDIF>
	<meta name="title" content="[*titl:hsc*]">
	<meta name="keywords" content="[*keyw:hsc*]" />
	<meta name="description" content="[*desc:hsc*]" />
	<meta name="site_name" content="[(site_name:hsc)]" />
	<meta name="short_link" content="[(site_url)]<@IF:[*id:isnt(1)*]>[*id*]/<@ENDIF>" />
    <meta property="og:title" content="[*titl:hsc*]">
    <meta property="og:description" content="[*desc:hsc*]">
    <meta property="og:url" content="[(site_url)]<@IF:[*id:isnt(1)*]>[~[*id*]~]<@ENDIF>">
    <meta property="og:locale" content="ru_RU">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="[(companyName:hsc)]">
	<meta itemprop="image" content="[(site_url)][*ogimage*]">
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:site:id" content="summary_large_image">
	<@IF:[*longtitle:len:gt(2)*]>
		<meta name="twitter:title" content="[*titl:hsc*]">
	<@ELSE>
		<meta name="twitter:title" content="[*pagetitle:hsc*]">
	<@ENDIF>
	<meta name="twitter:description" content="[*desc:notags:hsc*]">
	[!#OgImage!]
	<!-- Begin Talk-Me {literal} -->
	<script type='text/javascript'>
		(function(d, w, m) {
			window.supportAPIMethod = m;
			var s = d.createElement('script');
			s.type ='text/javascript'; s.id = 'supportScript'; s.charset = 'utf-8';
			s.async = true;
			var id = '9277ccc16582bd837259da8f00a304d3';
			s.src = '//lcab.talk-me.ru/support/support.js?h='+id;
			var sc = d.getElementsByTagName('script')[0];
			w[m] = w[m] || function() { (w[m].q = w[m].q || []).push(arguments); };
			if (sc) sc.parentNode.insertBefore(s, sc); 
			else d.documentElement.firstChild.appendChild(s);
		})(document, window, 'TalkMe');
	</script>
	<!-- {/literal} End Talk-Me -->
	<script>
	window.onload = function(){
		setTimeout(function(){
			$("body").removeClass("preload")
		}, 1500);
	}
	</script>
	<style>
{{@FILE assets/templates/skat_1.0.0/css/style.min.css}}
{{@FILE assets/templates/skat_1.0.0/css/main.css}}
	</style>
</head>