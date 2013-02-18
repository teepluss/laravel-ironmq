<?php

/**
 * Map path
 */
Autoloader::map(array(
	'IronCore' => __DIR__.'/src/IronCore.class.php',
	'IronMQ'   => __DIR__.'/src/IronMQ.class.php'
));

/**
 * Register IronMQ
 */
IoC::singleton('IronMQ', function()
{
	$credentials = Config::get('ironmq::config');

	return new IronMQ($credentials);
});