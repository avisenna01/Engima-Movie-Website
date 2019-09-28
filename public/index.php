<?php
	require_once "../app/init.php";
	/*$controller = new Controller();  
	$controller->invoke();*/
	$request = $_SERVER['REQUEST_URI'];
	$request = trim($request, '/');
	$get = explode('?', $request);
	$url = explode('/', $get[0]);
	switch ($url[0]) {
	    case '' :
	        require __DIR__ . '/../app/views/homepage.html';
	        break;
	    case 'connect' :
	        require __DIR__ . '/../app/controller/connectTest.php';
	        break;
	    case 'load' :
	        require __DIR__ . '/../app/controller/load.php';
	        break;
	    case 'head' :
	        require __DIR__ . '/../app/views/header.html';
	        break;
	    case 'history' :
	        require __DIR__ . '/../app/views/history.html';
	        break;
	    case 'test' :
	        require __DIR__ . '/../app/views/index.html';
	        break;
	    case 'user':
	    	require_once '../app/controller/UserController.php';
	    	$a = new UserController;
	    	$b = 'test';
        	call_user_func_array([$a, $b], [$_GET["id"]]);
	    	break;
	    case 'hua':
	    	break;
	    default:
	        require __DIR__ . '/../app/views/fail.html';
	        break;
	}

?>