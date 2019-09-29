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
	    case 'movie' :
	        require __DIR__ . '/../app/views/movie-desc.html';
	        break;
	    case 'test' :
	        require __DIR__ . '/../app/views/index.html';
	        break;
	    case 'api':
	    	switch ($url[1]) {
	    		case 'user':
	    		case 'film':
	    		case 'schedule':
	    		case 'transaction':
	    		case 'seat':
	    			$controller = $url[1].'controller';
	    			require_once '../app/controller/'.$controller.'.php';
	    			$controller = new $controller();
	    			$method = 'fail';
	    			if( isset($url[2]) ) {
			            if( method_exists($controller, $url[2]) ) {
			                $method = $url[2];
			            }
			        }
	    			call_user_func_array([$controller, $method], []);
	    			break;
	    		default:
	    			$response = [
	    				"status" => "404",
	    				"message" => "Error API not found"
	    			];
	    			echo json_encode($response);
	    			break;
	    	}
	    	break;
	    default:
	        require __DIR__ . '/../app/views/fail.html';
	        break;
	}

?>