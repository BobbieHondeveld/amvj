<?php

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
	global $CONFIG;
	$CONFIG->setValue("general", "baseDir", $baseDir);

} catch(PDOException $e) {
	$logger = new Monolog\Logger('database');
	$logger->pushHandler(new Monolog\Handler\StreamHandler($baseDir.'/tmp/database.log', Monolog\Logger::DEBUG));
	$logger->addCritical($e->getMessage());
	
	header(Atabase\Exceptions\HTTPStatusLookup::httpHeaderFor(500));
	echo Atabase\Exceptions\HTTPStatusLookup::getMessageForCode(500).' - Database Connection Error';
	exit();
} catch(HTTPErrorException $e) {
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
	$router->addNamespace('Atabix');
	$router->addDispatcher(new Atabase\Route('Atabix\Website\PublicController', '/', 'dispatcher1'));
	
	$result=$router->routeRequest($_SERVER['REQUEST_URI']);
	
	if($result['output']=='json') {
    	header($result['header']);
        echo json_encode($result['body']);
	} elseif($result['output']=='echo') {
    	header($result['header']);
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
