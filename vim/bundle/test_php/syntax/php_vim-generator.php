<?php

// Options:
//   --no-zend
//   --ignore=extension_name

$gen = new Generator($argv);
$gen->generate();


class Generator
{
	private $file			= null;
	private $generator		= null;

	private $zend			= true;
	private $ignoredExtensions	= array();

	public function __construct($args)
	{
		$this->generator = implode(' ', $args);
		$this->file = dirname(array_shift($args)).'/php_declaration.vim';

		foreach($args as $arg)
		{
			if(strtolower($arg) == '--help' || strtolower($arg) == '-h')
			{
			}
			elseif(strtolower($arg) == '--no-zend')
			{
				$this->zend = false;
			}
			elseif(preg_match('/^--ignore=([a-z0-9_]+(?:,[a-z0-9]+)*)$/i', $arg, $matches))
			{
				$ignore = explode(',', $matches[1]);
				$this->ignoredExtensions = array_merge($this->ignoredExtensions, $ignore);
			}
			else
			{
				echo 'Unknown option "'.$arg.'"';
				exit;
			}
		}
	}	

	public function generate ()
	{
		$extensions = $this->_getExtensions();		// Récupère la liste des extensions PHP actives

		$infos = array();
		foreach($extensions as $extension)
			$infos[$extension] = $this->_getExtensionContent($extension);

		$this->_write($infos);
	}

	private function _getExtensions ()
	{
		$extensions = get_loaded_extensions(false);					// Les extensions "classiques" de PHP

		if($this->zend)
			$extensions = array_merge($extensions, get_loaded_extensions(true));		// + les extensions Zend

		sort($extensions);

		echo "Founded ".count($extensions)." extension(s)\n";
		return $extensions;
	}
	private function _getExtensionContent ($extension)
	{
		$reflex = new ReflectionExtension($extension);
		echo "\tProcessing extension : ".$reflex->getName().", version ".$reflex->getVersion()."\n";
		
		$info = (object)array(
			'name'		=>	$reflex->getName(),
			'version'	=>	$reflex->getVersion(),

			'classes'	=>	$reflex->getClassNames(),
			'constants'	=>	array_keys($reflex->getConstants()),
			'functions'	=>	array_keys($reflex->getFunctions())
		);
		echo "\t\t".count($info->classes)." class(es)\n";
		echo "\t\t".count($info->constants)." constant(s)\n";
		echo "\t\t".count($info->functions)." function(s)\n";

		return $info;
	}

	private function _write ($infos)
	{
		$content = array();
		$cluster = (object)array(
			'classes'	=>	array(),
			'constants'	=>	array(),
			'functions'	=>	array()
		);

		$content[] = "\" PHP classes, constantes and functions, by extensions for vim";
		$content[] = "\" Generated by ".$this->generator;
		$content[] = "";
		$content[] = "";

		foreach($infos as $name => $extension)
		{
			$content[] = "\" Extension: ".$extension->name." ".$extension->version." {{{1";

			if(count($extension->classes))
			{
				$vimClass = 'phpClasses_'.$name;

				$content[] = "\t\" Classes: {{{2";
				$content[] = "syntax keyword ".$vimClass." ".implode(' ', $extension->classes)." contained";
				$content[] = "\t\" }}}2";

				$cluster->classes[] = $vimClass;
			}
			if(count($extension->constants))
			{
				$vimClass = 'phpConstants_'.$name;

				$content[] = "\t\" Constants: {{{2";
				$content[] = "syntax keyword ".$vimClass." ".implode(' ', $extension->constants)." contained";
				$content[] = "\t\" }}}2";

				$cluster->constants[] = $vimClass;
			}
			if(count($extension->functions))
			{
				$vimClass = 'phpFunctions_'.$name;

				$content[] = "\t\" Functions: {{{2";
				$content[] = "syntax keyword ".$vimClass." ".implode(' ', $extension->functions)." contained";
				$content[] = "\t\" }}}2";

				$cluster->functions[] = $vimClass;
			}

			$content[] = "\" }}}1";
			$content[] = "";
		}

		$content[] = "";
		$content[] = "\" Clusters: {{{1";
		$content[] = "syntax cluster phpClClasses add=".implode(',', $cluster->classes);
		$content[] = "syntax cluster phpClConstants add=".implode(',', $cluster->constants);
		$content[] = "syntax cluster phpClfunctions add=".implode(',', $cluster->functions);
		$content[] = "\" }}}1";
		$content[] = "";

		if(file_put_contents($this->file, implode("\n", $content)) === false)
			echo "ERROR : writing in \"".$this->file."\" failed\n";
		else
			echo "File \"".$this->file."\" correctly generated\n";
	}
}

?>