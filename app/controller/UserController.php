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
		$query = "SELECT * FROM user WHERE email=:email and password=:pwd";
		$this->db->query($query);
		$this->db->bind('email', $_POST['email']);
		$this->db->bind('pwd', $_POST['pwd']);
		echo json_encode($this->db->result());
	}

	public function register()
	{
		$query = "INSERT INTO user (username, email, phone_number, password, picture) VALUES (:uname, :email, :phone, :psw, :profpic)";
		$this->db->query($query);
		$this->db->bind('uname', $_POST['uname']);
		$this->db->bind('email', $_POST['email']);
		$this->db->bind('phone', $_POST['phone']);
		$this->db->bind('psw', $_POST['psw']);
		$this->db->bind('profpic', $_POST['profpic']);
		$this->db->execute();
    	header("Location: http://localhost:8080");
	}

	public function checkuname()
	{
		$query = "SELECT * FROM user WHERE username=:uname";
		$this->db->query($query);
		$this->db->bind('uname', $_GET['uname']);
		echo json_encode($this->db->result());
	}

	public function checkemail()
	{
		$query = "SELECT * FROM user WHERE email=:email";
		$this->db->query($query);
		$this->db->bind('email', $_GET['email']);
		echo json_encode($this->db->result());
	}

	public function checkphone()
	{
		$query = "SELECT * FROM user WHERE phone_number=:phone";
		$this->db->query($query);
		$this->db->bind('phone', $_GET['phone']);
		echo json_encode($this->db->result());
	}
}
