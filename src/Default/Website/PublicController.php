<?php

use Atabix\Core as Atabase;
use Primephonic\Models as Models;

class PublicController extends \Atabase\Controller {


	public function beforeHandler() {

	}

	public function definedRoutes() {
		$prefix = "";

		$routes   = array();
		$routes[] = new Atabase\Route(get_class($this), $prefix . "/", 'home');

		return $routes;

	}

	public function home() {
		echo "HOME";
	}

}