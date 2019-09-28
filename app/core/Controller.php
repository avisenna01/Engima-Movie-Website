<?php 

class Controller {
    protected $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function fail()
    {
    	header("Location: http://localhost:8080/fail");
    }
}