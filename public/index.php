<?php
	$request = $_SERVER['REQUEST_URI'];
	switch ($request) {
	    case '/' :
	        require __DIR__ . '/../app/views/index.html';
	        break;
	    case '' :
	        require __DIR__ . '/../app/views/index.html';
	        break;
	    case '/connect' :
	        require __DIR__ . '/../app/controller/connectTest.php';
	        break;
	    case '/load' :
	        require __DIR__ . '/../app/controller/load.php';
	        break;
	    case '/head' :
	        require __DIR__ . '/../app/views/header.html';
			break;
		case '/movie/description' :
			require __DIR__ . '/../app/views/movie-desc.html';
			break;
	    default:
	        require __DIR__ . '/../app/views/fail.html';
	        break;
	}

?>