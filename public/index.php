<?php
	$request = $_SERVER['REQUEST_URI'];
	switch ($request) {
	    case '/' :
	        require __DIR__ . '/../views/index.html';
	        break;
	    case '' :
	        require __DIR__ . '/../views/index.html';
	        break;
	    case '/connect' :
	        require __DIR__ . '/../controller/connectTest.php';
	        break;
	    case '/load' :
	        require __DIR__ . '/../controller/load.php';
			break;
		case '/login' :
			require __DIR__ . '/../views/login.html';
			break;
		case '/register' :
			require __DIR__ . '/../views/register.html';
			break;
	    default:
	        require __DIR__ . '/../views/fail.html';
	        break;
	}

?>