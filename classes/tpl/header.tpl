<header class="header container-fluid">
	<div class="row header-line">
		<div id="slogan" class="header-title">
			<div class="search">
				<i class="search-icon glyphicon glyphicon-search"></i>
				<div class="search-wrapper">
					<form action="[~119~]" method="GET">
						<div class="input-group">
							<input type="text" class="form-control" name="search" placeholder="Поиск..." value="[+stat_request+]">
							<input type="hidden" name="in" value="[+insearch+]">
							<span class="input-group-btn">
								<button class="btn btn-zayavka" type="submit"><i class="glyphicon glyphicon-search"></i></button>
							</span>
						</div>
					</form>
				</div>
			</div>
			<p>[(site_name)] - надежный поставщик спецтехники на Западном Урале</p>
		</div>
		<div class="header-line-container container-fluid">
			<div class="header-line-container-row row">
				<div class="header-line-container-row-container">
					<div class="header-line-flex row">
						<div class="column-flex color_01 clearfix">
							<a id="header-home-link" href="/">
								<img src="[(site_url)]/assets/templates/skat_1.0.0/images/logotip.png" alt="[(site_name)] - надежный поставщик спецтехники на Западном Урале" class="img-logotip">
								<span class="svg-logotip">
									[!#GetFileContent? &input=`/assets/templates/skat_1.0.0/images/oval_02.svg`!]
								</span>
							</a>
						</div>
						<div class="column-flex color_02 clearfix">
							<div class="column-flex-block"><i class="icon sk-map"></i>
								<div class="column-flex-block-wrapper"><span class="column-flex-block-wrapper-title">Адрес:</span>
									<p class="address">[(skat_address:nl2br)]</p>
								</div>
							</div>
						</div>
						<div class="column-flex color_03 clearfix">
							<div class="column-flex-block"><i class="icon sk-work"></i>
								<div class="column-flex-block-wrapper"><span class="column-flex-block-wrapper-title">Режим работы:</span><br>
									[(client_infowork)]<br>
									<span class="work-cb"><span class="hred">СБ — ВС </span>выходные</span>
								</div>
							</div>
						</div>
						<div class="column-flex color_04 clearfix">
							<div class="column-flex-block">
								<div class="column-flex-block-wrapper">
									<p class="contact-block-phone"><span class="column-flex-block-wrapper-title">Телефон:</span><span class="column-flex-block-wrapper-phone"><a href="tel:[(link_phone)]" class="hred">[(telephone)]</a></span><span class="column-flex-block-wrapper-title">Телефон / Факс:</span><span class="column-flex-block-wrapper-phone"><a href="tel:[(link_fax)]" class="hred">[(faxNumber)]</a></span></p>
									<!--p class="contact-block-email"><span class="column-flex-block-wrapper-title">E-mail:</span><span class="column-flex-block-wrapper-email"><a href="mailto:[(company_email)]" class="hred">[(company_email)]</a></span></p-->
								</div>
							</div>
						</div>
					</div>
					<div itemscope="" itemtype="http://schema.org/LocalBusiness" class="hidden">
						<meta itemprop="priceRange" content="RUB">
						<meta itemprop="image" content="[(site_url)][(logotype)]"><span itemprop="name">[(site_name)]</span>
						<div itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress"><span itemprop="addressCountry">Россия</span><span itemprop="postalCode">[(postalCode)]</span><span itemprop="addressRegion">[(addressRegion)]</span><span itemprop="addressLocality">[(addressLocality)]</span><span itemprop="streetAddress">[(streetAddress)]</span><span itemprop="telephone">[(schema_phone)]</span><span itemprop="faxNumber">[(schema_fax)]</span><span itemprop="email">[(company_email)]</span></div>
						<div itemprop="openingHours" datetime="[(openingHours)]" itemtype="http://schema.org/Duration">
							[(openingHoursRu:nl2br)]
						</div>
						<div itemtype="http://schema.org/GeoCoordinates" itemscope="" itemprop="geo">
							<meta itemprop="latitude" content="[(latitude)]">
							<meta itemprop="longitude" content="[(longitude)]">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>