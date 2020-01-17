{{pixel_coockie}}
<div class="footer-links-user hidden-print clearfix">
	<div class="font-icons-toggle pull-right">
		<i class="ic-shool-ico-01" data-toggle="tooltip" data-container="body" title="Поделиться ссылкой на страницу"></i>
		<div class="links--panel">
			<ul class="links--panel-list">
				<li>
					<i class="ic-shool-ico-07" data-icon="0" data-page="[*id*]" data-toggle="tooltip" data-container="body" title="Сделать скриншот страницы"></i>
				</li>
				<li>
					<i class="ic-shool-ico-02" data-icon="1" data-page="[*id*]" data-toggle="tooltip" data-container="body" title="Скопировать короткую ссылку"></i>
				</li>
				<li>
					<i class="ic-shool-ico-03" data-icon="2" data-page="[*id*]" data-toggle="tooltip" data-container="body" title="Поделиться в Однокласниках"></i>
				</li>
				<li>
					<i class="ic-shool-ico-04" data-icon="3" data-page="[*id*]" data-toggle="tooltip" data-container="body" title="Поделиться в VKontakte"></i>
				</li>
				<li>
					<i class="ic-shool-ico-05" data-icon="4" data-page="[*id*]" data-toggle="tooltip" data-container="body" title="Поделиться в Twitter"></i>
				</li>
				<li>
					<i class="ic-shool-ico-06" data-icon="5" data-page="[*id*]" data-toggle="tooltip" data-container="body" title="Поделиться в Facebook"></i>
				</li>
			</ul>
		</div>
	</div>
</div>
<footer class="footer container-fluid">
	<div class="row">
		<div class="container">
			<div class="row footer-wrapper mt-35">
				<div class="col-lg-4 col-md-4 footer-wrapper-left">
					<span>
						<a href="">
							<img src="/assets/templates/skat_1.0.0/images/logotip.png" class="img-respomsive">
							<span>[(site_name)]</span>
						</a>
					</span>
				</div>
				<!-- [(postalCode)], [(addressLocality)], [(streetAddress)] -->
				<div class="col-lg-4 col-md-4 footer-wrapper-center text-center">[(client_infoaddress)]<br>[(telephone)]</div>
				<div class="col-lg-4 col-md-4 footer-wrapper-right"><button class="btn btn-zayavka text-uppercase techic">Заявка на технику</button><button class="btn btn-zayavka text-uppercase zapchast">Заявка на запчасти</button></div>
				<div class="col-xs-12 footer-wrapper-copyright text-center clearfix">
					<ul class="copyright-menu mt-20">
						<li><a href="[~29~]">Контакты</a></li>
						<li><a href="[~443~]">Написать нам</a></li>
						<li><a href="[~493~]">Карта сайта</a></li>
					</ul>
					<div class="copyright-wrapper"><span>Все права защищены<br>[(company_copyright)]<br>Разработка и поддержка: <a href="http://www.cmsmagazine.ru/creators/studionions/" target="_blank">ProjectSoft & STUDIONIONS</a></span></div>
				</div>
			</div>
		</div>
	</div>
</footer>

<!--yepnope.2.0.0.js-->
[!#GetFileContent? &input=`assets/templates/skat_1.0.0/js/yepnope.2.0.0.js` &type=`js`!]
<!--modernizr.js-->
[!#GetFileContent? &input=`assets/templates/skat_1.0.0/js/modernizr.js` &type=`js`!]
<!--load-->
<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
   (window, document, "script", "https://cdn.jsdelivr.net/npm/yandex-metrica-watch/tag.js", "ym");

   ym(22079803, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true,
        webvisor:true,
        ecommerce:"dataLayer"
   });
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/22079803" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
<script>
	window.googleKey = '[(googleKey)]';
	yepnope.injectCss('/css.css', function() {});
	yepnope('[!#GetFileAndTime? &input=`assets/templates/skat_1.0.0/js/app.js`!]', undefined, function() {
		yepnope('[!#GetFileAndTime? &input=`assets/templates/skat_1.0.0/js/hypher.js`!]', undefined, function() {
			yepnope('[!#GetFileAndTime? &input=`assets/templates/skat_1.0.0/js/main.js`!]', undefined, function(){
				window.skat = {
					zayavka: (function(){
						return false;
					})()
				};
				$(function() {
					var d = !1;
					var toDmn = function(a) {
						var b = a.toDataURL("image/png");
						a = atob(b.split(",")[1]);
						b = b.split(",")[0].split(":")[1].split(";")[0];
						for (var e = new ArrayBuffer(a.length), f = new Uint8Array(e), c = 0; c < a.length; c++) f[c] = a.charCodeAt(c);
						a = new Blob([e], {
							type: b
						});
						$(".panelsettings, .get-screenshot, .footer-links-user").css({
							visibility: ""
						});
						$(".footer-links-user, noscript, .embed-responsive").css({
							display: ""
						});
						d = !1;
						download(a, "ScreenShot-[*pagetitle:notags:hsc*].png", b);
						$("body").removeClass("screenshot");
					};
					var d = !1;
					$("body").on("click", ".ic-shool-ico-07", function(g) {
						d || (d = !0, $(".panelsettings, .get-screenshot, .footer-links-user").css({
							visibility: "hidden"
						}), $("body").addClass("screenshot"), $(".footer-links-user, noscript, .embed-responsive").css({
							display: "none"
						}),  setTimeout(function() {
							html2canvas(document.querySelector("body"), {
								imageTimeout: 0
							}).then(toDmn)
						}, 1E3))
					}).on('click', '.get-screenshot', function(e){
						e.preventDefault();
						var url = $(this).data('href'),
							name = $(this).data('download');
						window.open(url);
						return !1;
					});
					$('.get-screenshot').data({
						href: 'https://mini.s-shot.ru/1366x0/PNG/1366/Z100/?' + window.location.href,
						download: "ScreenShot-[*pagetitle:notags:hsc*].png"
					});
					
					$(window).on("scroll resize", function(e){
						var $body = $("body"),
							$container = $("#container-menu"),
							$menu = $('.button_sidebar', $container),
							scroll_top = $(window).scrollTop();
						if($container.length){
							var element_top = $container.offset().top,
								height = $menu.outerHeight();

							if(scroll_top > element_top) {
								!$body.hasClass('afixed') && !$body.addClass('afixed');
								$container.css({
									'padding-bottom' : height + 'px'
								});
							}else{
								$body.hasClass('afixed') && !$body.removeClass('afixed');
								$container.css({
									'padding-bottom' : 'unset'
								});
							}
						}
					}).trigger('resize');
				});
					(function(i,s,o,g,r,a,m){
						i['GoogleAnalyticsObject']=r;
						i[r]=i[r]||function(){
							(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
							m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
					})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
					ga('create', 'UA-43229772-1', 'skat59.ru');
					function getCookie(name){
						var match = document.cookie.match(new RegExp('(^| )' + name + '=([^;]+)'));
						return match ? match[2] : "(no_set)";
					}
					ga(function(tracker) {
						var client_id = tracker.get('clientId'),
							forms = Array.prototype.slice.call(document.querySelectorAll("form"));
						client_id = client_id ? client_id : getCookie('_ga');
						forms.forEach(function(form){
							var input = document.createElement('input');
							input.type = 'hidden';
							input.name = 'Google_GA';
							input.value = client_id;
							form.appendChild(input);
						});
					});
					ga('send', 'pageview');
				});

			
/* pixel */
{{pixel_js}}
/* end pixel */


				function hideScrollbar(){
					if(!$("#hideforscroll").length && !$.fancybox.isMobile && document.body.scrollHeight > window.innerHeight) 
					{
						var w = (window.innerWidth - document.documentElement.clientWidth);
						$("head").append(
							`<style id="hideforscroll" type="text/css">
								.open_sidebar body {
									overflow: hidden;
									margin-right: ` + w + `px;
								}
								.compensate-for-scrollbar #container-menu .button_sidebar,
								.open_sidebar .afixed #container-menu .button_sidebar {
										padding-right: ` + (2 * w) + `px;
									}
								}
							</style>`
						);
					}
				}
				hideScrollbar();
/*				(function (d, w, c) {
					(w[c] = w[c] || []).push(function() {
						try {
							w.yaCounter22079803 = new Ya.Metrika2({
								id:22079803,
								clickmap:true,
								trackLinks:true,
								accurateTrackBounce:true,
								webvisor:true,
								ecommerce:"dataLayer"
							});
						} catch(e) { }
					});

					var n = d.getElementsByTagName("script")[0],
						s = d.createElement("script"),
						f = function () { n.parentNode.insertBefore(s, n); };
					s.type = "text/javascript";
					s.async = true;
					s.src = "https://cdn.jsdelivr.net/npm/yandex-metrica-watch/tag.js";

					if (w.opera == "[object Opera]") {
						d.addEventListener("DOMContentLoaded", f, false);
					} else { f(); }
				})(document, window, "yandex_metrika_callbacks2");
*/
				yepnope('https://apis.google.com/js/platform.js?publisherid=117835748354355612092', undefined, function(){});
		});
	});
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/22079803" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- end load -->
<div id="copyLink" class="modal fade bs-example-modal-xs hidden-print" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-xs">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3 class="modal-title text-center"><span id="modalTitle"></span></h3>
			</div>
			<div id="modalContent" class="modal-body text-center" style="font-size: 18px;"></div>
		</div>
	</div>
</div>
{{#forms}}