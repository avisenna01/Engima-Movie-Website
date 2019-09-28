<?php
	$request = $_SERVER['REQUEST_URI'];
	switch ($request) {
	    case '/' :
	        require __DIR__ . '/../app/views/homepage.html';
	        break;
	    case '' :
	        require __DIR__ . '/../app/views/homepage.html';
	        break;
	    case '/load' :
	        require __DIR__ . '/../app/controller/load.php';
	        break;
	    case '/head' :
	        require __DIR__ . '/../app/views/header.html';
			break;
	    default:
	        require __DIR__ . '/../app/views/fail.html';
	        break;
	}

?>