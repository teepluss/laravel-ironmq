laravel-ironmq
==============

***IronMQ Library***

## Installation

Install this bundle by running the following CLI command:

	php artisan bundle:install ironmq

Add the following line to application/bundles.php

	'ironmq' => array('auto' => true),

Code example in configuration.

```php
return array(

	'token'       => '[YOUR TOKEN]',

	'project_id'  => '[YOUT PROJECT]',

	// Optional fields.
	// 'protocol'    => 'http',
	// 'api_version' => 1,
	// 'host'        => 'mq-aws-us-east-1.iron.io',
	// 'port'        => 80

);
```

## Example Usage

```php
$ironMQ = IoC::resolve('IronMQ');

// Post message
$ironMQ->postMessage("tee_queue", "Test Message", array(
    'timeout' => 120, # Timeout, in seconds. After timeout, item will be placed back on queue. Defaults to 60.
    'delay' => 5, # The item will not be available on the queue until this many seconds have passed. Defaults to 0.
    'expires_in' => 2*24*3600 # How long, in seconds, to keep the item on the queue before it is deleted.
));

// Subscribed
// $url = 'URLTOSUBSCRIBE';
// $response = $ironMQ->addSubscriber('tee_queue', compact('url'));
```

## Support or Contact

If you have some problem, Contact teepluss@gmail.com