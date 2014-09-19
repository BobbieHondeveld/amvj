README
======

Requirements to run default application

- Composer installed
- Bower installed
- Grunt installed (optional)

Last steps to complete new project installation


- Completing composer.json file (file in site specific details)

- CLI: mkdir src/{namespace}

- MANUAL: change {namespace} in index.php
	* $router->addNamespace('NAMESPACE');

- CLI: composer install
   	* Default composer install operations
	* Install grunt dependecies

- CLI: composer update
	* Default composer update operations
	* Bower frontend directory update
	* Grunt admin directory update
	* Bower frontend directory update
	* Grunt admin directory update
	* Create PHP Doc


SITE STRUCTURE

conf/
	database.ini
	routes.ini
	config.ini
static/
	admin/
src/
	{NAMESPACE}/
