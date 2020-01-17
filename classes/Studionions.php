<?php
namespace ProjectSoft;

include_once(MODX_BASE_PATH . 'assets/lib/Helpers/FS.php');

$GetModelsNaves = array();
class Studionions {
	
	public static function addChunks(\DocumentParser $modx)
	{
		foreach (glob(dirname(__FILE__)."/tpl/*.tpl") as $chunkFile):
			if(is_file($chunkFile) && is_readable($chunkFile)):
				$chunk = pathinfo($chunkFile, PATHINFO_FILENAME);
				$code = (string)file_get_contents($chunkFile);
				$modx->addChunk($chunk, $code);
			endif;
		endforeach;
	}
	
	public static function addSnippets(\DocumentParser $modx)
	{
		//$modx->config["site_url"] = 'http://'.$_SERVER['SERVER_NAME'].'/';
		// Создать и назначить всем шаблонам параметр TV - ogimage. Тип image
		// Зависимость: phpthumb snippet
		// Пример: [[OgImage]]
		// Вывод: 
		/*
		<meta property="og:image" content="http://exemple.com/assets/cache/images/modx-logo-537x240-7e5.jpeg" />
		<meta property="og:image:width" content="537" />
		<meta property="og:image:height" content="240" />
		<meta property="og:image:type" content="image/jpeg" />
		<meta property="og:image" content="http://exemple.com/assets/cache/images/modx-logo-400x400-53a.jpeg" />
		<meta property="og:image:width" content="400" />
		<meta property="og:image:height" content="400" />
		<meta property="og:image:type" content="image/jpeg" />
		*/
		$modx->addSnippet('OgImage', '\ProjectSoft\Studionions::headOgImage');
		
		// Пример: [!#GetFileContent? &input=`assets/templates/mytemplate/css/main.css` &type=`css`!]
		// Вывод:  <style>/*Ваш файл стилей*/</style>
		// Пример: [!#GetFileContent? &input=`assets/templates/mytemplate/js/main.js` &type=`js`!]
		// Вывод:  <script type="text/javascript">/*Ваш файл cкрипта*/</style>
		// Пример: <img src="[[#GetFileContent? &input=`assets/templates/mytemplate/image/logo.png` &type=`base64`]]" alt="">
		// Вывод:  <img src="data:image/png;base64,.........." alt="">
		$modx->addSnippet('GetFileContent', '\ProjectSoft\Studionions::getFileContent');
		
		// Время последнего изменения файла
		// Пример: <script src="[!#GetFileAndTime? &input=`assets/templates/mytemplate/js/main.js`!]" type="text/javascript"></script>
		// Вывод:  <script src="assets/templates/mytemplate/js/main.js?1509867763" type="text/javascript"></script>
		$modx->addSnippet('GetFileAndTime', '\ProjectSoft\Studionions::getFileAndTime');
		
		// Пример: [!#GetMailEncode? &input=`вебмастер@вебмастер.рф`!]
		$modx->addSnippet('GetMailEncode', '\ProjectSoft\Studionions::getMailEncode');
		
		// Полный порт сниппета sitemap. Чтобы не засорять сниппетами перенёс в класс.
		// Зависимость: TV параметры 
			/*
				name:			sitemap_changefreq
				title:			Период обновления
				description:	Для карты сайта
				category:		SEO
				type:			dropdown list
				elements:		always||hourly||daily||weekly||monthly||yearly||never
				default:		weekly
			*/
			/*
				name:			sitemap_exclude
				title:			Отображение в sitemap
				description:	Для карты сайта
				category:		SEO
				type:			checkbox
				elements:		Скрыть==1
				default:		0
			*/
			/*
				name:			sitemap_priority
				title:			Приоритет страницы
				description:	Для карты сайта
				category:		SEO
				type:			dropdown list
				elements:		0.1||0.2||0.3||0.4||0.5||0.6||0.7||0.8||0.9||1
				default:		0.5
			*/
		$modx->addSnippet('Sitemap', '\ProjectSoft\Sitemap::sitemap');
		$modx->addSnippet('GetModels', '\ProjectSoft\Studionions::getModelsNavesnoe');
		$modx->addSnippet('FileGetSize', '\ProjectSoft\Studionions::FileGetSize');
		$modx->addSnippet('GetYear', 'return date("Y", time());');
		//$modx->addSnippet('site_url', 'return "http://".$_SERVER["SERVER_NAME"]."/";');
		$modx->addSnippet('GetYouTubeFrame', '\ProjectSoft\Studionions::GetYouTubeFrame');
	}
	
	public static function FileGetSize($options = array('input'=>"", 'format' => 'true'))
	{
		$format = (isset($options["format"]) && $options["format"]=="false") ? false : true;
		$fs = \Helpers\FS::getInstance();
		$size = $fs->fileSize($options['input'], $format);
		return $size;
	}
	
	public static function headOgImage()
	{
		global $modx;
		$imageOg = $modx->documentObject['ogimage'][1];
		$output = "";
		if(is_file(MODX_BASE_PATH.$imageOg)):
			$one_input = $modx->runSnippet('#thumb',
				array(
					'input'=>$imageOg,
					'options'=>'w=537,h=240,zc=C,bg=ffffff,f=jpg'
				)
			);
			$two_input = $modx->runSnippet('#thumb',
				array(
					'input'=>$imageOg,
					'options'=>'w=400,h=400,zc=C,bg=ffffff,f=jpg'
				)
			);
			$one_input_size = getimagesize(MODX_BASE_PATH.$one_input);
			$two_input_size = getimagesize(MODX_BASE_PATH.$two_input);
			$output = "";
			if($one_input_size):
				$output .= "		<meta property=\"og:image\" content=\"[(site_url)]".$one_input."\" />\n";
				$output .= "		<meta property=\"og:image:width\" content=\"".$one_input_size[0]."\" />\n";
				$output .= "		<meta property=\"og:image:height\" content=\"".$one_input_size[1]."\" />\n";
				$output .= "		<meta property=\"og:image:type\" content=\"".$one_input_size['mime']."\" />\n";
				$output .= "		<meta property=\"twitter:image0\" content=\"[(site_url)]".$one_input."\" />\n";
			endif;
			if($two_input_size):
				$output .= "		<meta property=\"og:image\" content=\"[(site_url)]".$two_input."\" />\n";
				$output .= "		<meta property=\"og:image:width\" content=\"".$two_input_size[0]."\" />\n";
				$output .= "		<meta property=\"og:image:height\" content=\"".$two_input_size[1]."\" />\n";
				$output .= "		<meta property=\"og:image:type\" content=\"".$two_input_size['mime']."\" />\n";
				$output .= "		<meta property=\"twitter:image1\" content=\"[(site_url)]".$two_input."\" />\n";
			endif;
		endif;
		return $output;
	}
	
	public static function getFileContent($options = array('input'=>"", 'type' => ""))
	{
		$file = trim($options['input']);
		$type = trim($options['type']);
		$return = "";
		if(is_file(MODX_BASE_PATH . $file)):
			$return = file_get_contents(MODX_BASE_PATH . $file);
			switch($type){
				case "css":
					$return = "<style>" . $return . "</style>";
					break;
				case "js":
					$return = "<script type=\"text/javascript\">" . $return . "</script>";
					break;
				case "base64":
					$finfo = finfo_open(FILEINFO_MIME_TYPE);
					$mime = "data:"  . finfo_file($finfo, MODX_BASE_PATH . $file) . ";base64,";
					finfo_close($finfo);
					$return = $mime . base64_encode($return);
					break;
			}
		endif;
		return $return;
	}
	
	public static function getFileAndTime($options = array('input' => ""))
	{
		$return = trim($options['input']);
		$time = time();
		if(is_file(MODX_BASE_PATH . $return)):
			$time = filemtime(MODX_BASE_PATH . $return);
		endif;
		return $return . "?" . $time;
	}
	
	public static function getMailEncode($options = array('input'=>""))
	{
		$idna = new \ProjectSoft\IdnaConvert(array('idn_version'=>2008));
		$return = $idna->encode($options['input']);
		unset($idna);
		return $return;
	}
	
	public static function replace_project_html($matches){
		$res = preg_replace('(\r(?:\n)?)', "\xD6\xD6\xD6\xD6", $matches[2]);
		return $matches[1].'"'.$res.'"';
	}
	
	public static function prepareMinifyHtml(\DocumentParser $modx)
	{
		if($modx->documentObject['minify'][1]==1):
			$str = $modx->documentOutput;
			$re = '/((?:content=)|(?:"description":\s+))(?:"|\')([A-я\S\s\d\D\X\W\w]+)(?:"|\')/mUi';
			$str = preg_replace_callback($re, '\ProjectSoft\Studionions::replace_project_html', $str);
			$str = preg_replace("/(\xD6\xD6\xD6\xD6)/", "\n", preg_replace('|\s+|', ' ', preg_replace('|(\s+)?\n(\s+)?|', '', preg_replace('|<!(--)?(\s+)?(?!\[).*-->|', '', $str))));
			$modx->documentOutput = $str;
		endif;
	}
	
	public static function getModelsNavesnoe($options=array('documents'=>'', 'sort'=>'menutitle', 'order'=>'ASC','msort'=>'menutitle', 'morder'=>'ASC'))
	{
		global $modx;
		global $GetModelsNaves;
		//$modx->GetModelsNaves = array();
		//global $GetModelsNaves;
		$documents = $modx->getDocuments($options['documents'], 1, 0, 'id,menutitle,alias', '', 'menuindex', 'ASC');
		$GetModelsNaves = array();
		$list = "<div class=\"mixit-controls row\">
					<div class=\"col-md-offset-4 col-md-4 col-sm-offset-3 col-sm-6\">
						<p class=\"text-center fwb fs-16 mb-15\">Фильтр по технике:</p>
						<select class=\"select-filter form-control mb-20 fs-20\" style=\"height: 40px;\">
							<option value=\"all\">Все</option>";
		foreach($documents as $key=>$document):
			$GetModelsNaves[$document["id"]] = $document["alias"];
			$list .= '<option value=".'.$document["alias"].'">'.$document["menutitle"].'</option>';
		endforeach;
		$list .= "</select></div></div>";
		$id = $modx->documentIdentifier;
		$dlNaves = $modx->runSnippet('DocLister', array(
			'parents'=>$id,
			'sortBy'=>'menuindex',
			'order'=>'ASC',
			'selectFields'=>'id,pagetitle,introtext,alias',
			'tvList'=>'navesnoe,ogimage,img_plitca',
			'tpl'=>'#mixmodel',
			'ownerTPL'=>'#mixcontainer',
			'prepare'=>'\PSPlugin::getModelNavesnoe'
		));
		return $list.$dlNaves;
	}
	
	public static function GetYouTubeFrame($options = array('url'=>""))
	{
		$out = "";
		$re = '/v=(.+)$/';
		preg_match($re, $options['url'], $matches, PREG_OFFSET_CAPTURE, 0);
		if($matches[1]){
			$out = '<div class="embed-responsive embed-responsive-16by9 mt-20 mb-30">
				<iframe src="https://www.youtube.com/embed/'.$matches[1][0].'?rel=0;showinfo=0;" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen wmode="opaque"></iframe>
			</div>';
		}
		return $out;
	}
}