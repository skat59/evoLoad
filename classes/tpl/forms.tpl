<div id="zayavka_render" class="hidden">
	<!--InitFormZayavka-->
	[!FormLister?
		&formid=`zayavka`
		&config=`zayavka:/assets/templates/skat_1.0.0/tpl`
	!]
	<!--FormZayavka-->
</div>
<div id="tehnic_render" class="hidden">
	<!--InitFormTechic-->
	[!FormLister?
		&formid=`zapchast`
		&config=`zapchast:/assets/templates/skat_1.0.0/tpl`
	!]
	<!--FormTechic-->
</div>
<!--InitFormCallme-->
[!FormLister?
	&formid=`callme`
	&config=`callme:/assets/templates/skat_1.0.0/tpl`
!]
<!--FormCallme-->
<div id="technic_render" class="hidden">
<!--InitFormTechnic-->
	<@IF:[*template:is(17)*]>
	[!FormLister?
		&formid=`technic`
		&config=`technic:/assets/templates/skat_1.0.0/tpl`
	!]
	<@ENDIF>
	<@IF:[*template:is(26)*]>
	[!FormLister?
		&formid=`technic`
		&config=`technic:/assets/templates/skat_1.0.0/tpl`
	!]
	<@ENDIF>
<!--FormTechnic-->
</div>
<div id="jcb_render" class="hidden">
<!--InitFormJcb-->
	<@IF:[*template:is(38)*]>
	[!FormLister?
		&formid=`sparejcb`
		&config=`sparejcb:/assets/templates/skat_1.0.0/tpl`
	!]
	<@ENDIF>
<!--InitFormJcb-->
</div>