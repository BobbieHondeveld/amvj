<?php

date_default_timezone_set("Europe/Amsterdam");

use Atabix\Core as Atabase;

/*****************************************/
/*           BOOTSTRAP ATABASE           */
/*****************************************/
try {
	$baseDir = __DIR__;
	require_once $baseDir.'/vendor/autoload.php';
	$kernel = Atabase\Bootstrapper::KERNEL_TEST;

	$bootstrapper=new Atabase\Bootstrapper($kernel, $baseDir);
	$bootstrapper->init();
} catch(PDOException $e) {
	$logger = new Monolog\Logger('database');
	$logger->pushHandler(new Monolog\Handler\StreamHandler($baseDir.'/tmp/database.log', Monolog\Logger::DEBUG));
	$logger->addCritical($e->getMessage());
	
	header(Atabase\Exceptions\HTTPStatusLookup::httpHeaderFor(500));
	echo Atabase\Exceptions\HTTPStatusLookup::getMessageForCode(500).' - Database Connection Error';
	exit();
} catch(Atabase\Exceptions\HTTPErrorException $e) {
	$logger = new Monolog\Logger('kernel');
	$logger->pushHandler(new Monolog\Handler\StreamHandler($baseDir.'/tmp/kernel.log', Monolog\Logger::DEBUG));
	$logger->addCritical($e->getMessage());
	
	$e->terminate(" - Kernel Loading Failed");
}


/*****************************************/
/*             ROUTE REQUEST             */
/*****************************************/
try {
	$router=new Atabase\RequestRouter($baseDir);
	$router->addNamespace('Cloud');
    $router->setExceptionRedirect(403, "/login");
    
	$result=$router->routeRequest($_SERVER['REQUEST_URI']);

	
	header($result['header']);
	if($result['output']=='json') {
        echo json_encode($result['body']);
	} elseif($result['output']=='echo') {
        echo $result['body'];
	} else {
    	// No output
	}
} catch(Atabase\Exceptions\HTTPErrorException $e) {
	$logger = new Monolog\Logger('routing');
	$logger->pushHandler(new Monolog\Handler\StreamHandler($baseDir.'/tmp/routing.log', Monolog\Logger::DEBUG));
	$logger->addCritical($e->getMessage());
	
	$e->terminate(" - Routing Error");
}
