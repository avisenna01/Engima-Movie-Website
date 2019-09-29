<?php
class FilmController extends Controller{
	public function getFilm()
	{
		$query = "SELECT * FROM film WHERE id_film=:id_film";
		$this->db->query($query);
		$this->db->bind('id_film', $_GET['id_film']);
		echo json_encode($this->db->result());
	}
}
