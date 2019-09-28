<?php
class UserController extends Controller{
	public function test($id){
		$query = "SELECT * FROM user WHERE id_user=:id";
		$this->db->query($query);
		$this->db->bind('id', $id);
		echo json_encode($this->db->single());
	}
}
?>