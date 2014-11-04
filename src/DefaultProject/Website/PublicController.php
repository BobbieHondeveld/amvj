<?php

namespace DefaultProject\Website;

use Atabix\Core as Atabase;

class PublicController extends Atabase\Controller {

	public function beforeHandler() {

	}

	public function definedRoutes() {
		$prefix = "";

		$routes   = array();
		$routes[] = new Atabase\Route(get_class($this), $prefix . "/", 'home');

		return $routes;

	}

	public function home() {
		throw new Atabase\Exceptions\HTTPRedirectException("/admin/");
	}

}