<?php

namespace DefaultProject\Admin;

use Atabix\Core as Atabase;

class AdminController extends Atabase\Controller {

	public function beforeHandler() {

	}

	public function definedRoutes() {
		$prefix = "/admin";

		$routes   = array();
		$routes[] = new Atabase\Route(get_class($this), $prefix . "/", 'home');
		return $routes;
	}

	public function home() {
		throw new Atabase\Exceptions\HTTPRedirectException("/atabase/");
	}

}