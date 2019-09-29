<?php
class FilmController extends Controller{
	public function getAllFilms(){
		$query = "SELECT * FROM film";
		$this->db->query($query);
		echo json_encode($this->db->result());
	}
}
