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
		$query = "SELECT * FROM user WHERE email=:email and password=:psw";
		$this->db->query($query);
		$this->db->bind('email', $_POST['uname']);
		$this->db->bind('psw', $_POST['psw']);
		$user = $this->db->result();
		if ($user!=null){
			[$user] = $user;
			$query = "UPDATE user SET accesstoken = :accesstoken WHERE id_user = :id";
			$this->db->query($query);
			$this->db->bind('accesstoken', substr(str_shuffle(MD5(microtime())), 0, 10));
			$this->db->bind('id', $user["id_user"]);
			$this->db->execute();
			$query = "SELECT * FROM user WHERE id_user=:id";
			$this->db->query($query);
			$this->db->bind('id', $user["id_user"]);
			$user = json_encode($this->db->result());
			echo $user;
		}
		else{
			$response = [
				"status" => "404",
				"message" => "Error User not found"
			];
			echo json_encode($response);
		}
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
