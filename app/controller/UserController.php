<?php
class UserController extends Controller{
	public function getUserName(){
		$query = "SELECT username FROM user WHERE id_user=:id";
		$this->db->query($query);
		$this->db->bind('id', $_GET['id']);
		echo json_encode($this->db->result());
	}

	public function login()
	{
		$query = "SELECT * FROM user WHERE email=:email and password=:password";
		$this->db->query($query);
		$this->db->bind('email', $_POST['uname']);
		$this->db->bind('password', $_POST['psw']);
		echo json_encode($this->db->result());
	}

	public function register()
	{
		$query = "insert into ....";
		$this->db->query($query);
		$this->db->bind('email', $_POST['uname']);
		$this->db->bind('password', $_POST['psw']);
	}

	public function checkuname()
	{
		$query = "SELECT * FROM user WHERE username=:username";
		$this->db->query($query);
		$this->db->bind('username', $_GET['uname']);
		echo json_encode($this->db->result());
	}

//email
	public function checkuname()
	{
		$query = "SELECT * FROM user WHERE username=:username";
		$this->db->query($query);
		$this->db->bind('username', $_POST['uname']);
		echo json_encode($this->db->result());
	}
//phone
	public function checkuname()
	{
		$query = "SELECT * FROM user WHERE username=:username";
		$this->db->query($query);
		$this->db->bind('username', $_POST['uname']);
		echo json_encode($this->db->result());
	}
}
