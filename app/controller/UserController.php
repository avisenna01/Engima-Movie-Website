<?php
class UserController extends Controller{
	public function getUserName(){
		$query = "SELECT username FROM user WHERE id_user=:id";
		$this->db->query($query);
		$this->db->bind('id', $_GET['id']);
		echo json_encode($this->db->result());
	}
	public function postrequest()
	{
		echo "i get THIS from postrequest".$_POST['hua'];
	}
}
