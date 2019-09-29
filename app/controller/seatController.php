<?php
class SeatController extends Controller{
	public function getAllSeats(){
		$query = "SELECT * FROM seat WHERE id_schedule=:id_schedule";
		$this->db->query($query);
		$this->db->bind('id_schedule', $_GET['id_schedule']);
		echo json_encode($this->db->result());
	}

	public function takeSeat()
	{
		if($_SERVER["REQUEST_METHOD"] === "POST"){
			$query = "UPDATE seat SET taken=1 WHERE id_schedule=:id_schedule, chair_number=:chair_number";
			$this->db->query($query);
			$this->db->bind('id_schedule', $_POST['id_schedule']);
			$this->db->bind('chair_number', $_POST['chair_number']);
		}
	}
}
