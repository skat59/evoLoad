<section class="home-news container-fluid mt-30">
	<div style="background-image: url('/assets/templates/skat_1.0.0/images/predlogeniya.jpg');" data-jarallax='{"speed": 0.2}' class="row jaralax">
		<div class="container">
			<h3 class="text-center text-uppercase section_h2 mb-30 mt-30 title-line-white">Новости компании</h3>
			<div class="clearfix home-news-wrapper mb-60">
				[[DocLister? &tpl=`@CODE:
<article class="container-fluid home-news-item">
	<div class="row">
		<div class="col-lg-9 col-md-8 col-sm-9 col-xs-8 pull-right home-news-item-title">
			<h4><a href="[~[+id+]~]"><a href="[~[+id+]~]">[+pagetitle+]</a></h4>
		</div>
		<div class="col-lg-3 col-md-4 col-sm-3 col-xs-4 home-news-item-image">
			<a href="[~[+id+]~]" style="background-image: url('[+newsimage+]');"></a>
		</div>
		<div class="col-lg-9 col-md-8 col-sm-9 col-xs-8 pull-right home-news-item-description">
			<span class="home-news-item-description-date"><time>[+newsdate+]</time></span>
			<p>[+introtext:nl2br+]</p>
		</div>
	</div>
</article>
`
					&parents=`6`
					&display=`3`
					&sortBy=`menuindex`
					&order=`DESC`
					&tvList=`img_plitca,ogimage`
					&prepare=`\PSPlugin::prepareNews`
					&dateformat=`d.m.Y`
				]]
				<div class="clearfix mt-30 text-center">
					<a href="[~6~]" class="btn btn-zayavka text-uppercase">Ещё новости</a>
				</div>
			</div>
		</div>
	</div>
</section>