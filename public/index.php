<?php
	require_once "../app/init.php";
	$request = $_SERVER['REQUEST_URI'];
	$request = trim($request, '/');
	$get = explode('?', $request);
	$url = explode('/', $get[0]);
	switch ($url[0]) {
	    case '' :
	        require __DIR__ . '/../app/views/homepage.html';
	        break;
	    case 'load' :
	        require __DIR__ . '/../app/controller/load.php';
	        break;
	    case 'head' :
	        require __DIR__ . '/../app/views/header.html';
			break;
		case '/movie' :
			require __DIR__ . '/../app/views/movie-desc.html';
			break;
	    default:
	        require __DIR__ . '/../app/views/fail.html';
	        break;
	}

?>