<section class="section_home_02 container-fluid">
	<div class="row">
		<div class="container catalog_home">
			<<@IF:[*id:isnt(1)*]>h1<@ELSE>h3<@ENDIF> class="section_h2 text-center">Каталог</<@IF:[*id:isnt(1)*]>h1<@ELSE>h3<@ENDIF>>
			{{anonce}}
			<ul class="catalog_home_list row">
				[[DocLister?
					&tpl=`#catalog`
					&parents=`3`
					&sortBy=`menuindex`
					&order=`ASC`
					&tvList=`img_plitca`
					&addWhereList=`c.hidemenu = 0`
				]]
			</ul>
		</div>
	</div>
</section>