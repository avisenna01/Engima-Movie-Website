<?php
class ScheduleController extends Controller{
	public function getSchedule()
	{
		$query = "SELECT * FROM schedule WHERE id_film=:id_film";
		$this->db->query($query);
		$this->db->bind('id_film', $_GET['id_film']);
		echo json_encode($this->db->result());
	}
}
