<?php
	$request = $_SERVER['REQUEST_URI'];
	switch ($request) {
	    case '/' :
	        require __DIR__ . '/../app/views/index.html';
	        break;
	    case '' :
	        require __DIR__ . '/../app/views/index.html';
	        break;
	    case '/load' :
	        require __DIR__ . '/../app/controller/load.php';
	        break;
	    case '/rating':
	        require __DIR__ . '/../app/views/movie-rating.html';
	        break;
	    default:
	        require __DIR__ . '/../app/views/fail.html';
	        break;
	}

?>