<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Ban extends MY_Controller {

	public function __construct() {
		parent::__construct();
		$this->layout_dir = 'latest/layout/';
		$this->page_dir = 'latest/ban/';
		$this->load->model('catalogues_view_model', 'catalogues');
		$this->data['menu']['name'] = 'Ban Forklift';
		$this->data['menu']['link'] = 'ban';
	}

	public function index() {
		$search = "";
		if ($this->input->get('search')) {
			$this->data ['search'] = $this->input->get('search');
			$search = $this->data['search'];
		}
		$this->data['ban'] = $this->get_ban($search);
		$this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
		$this->render();
	}

	public function read() {
		$id = $this->uri->segment($this->uri->total_segments(), 0);
		if ($id != "ban") {
			$this->data['ban'] = $this->catalogues->get_data("*", array("id" => $id), null, null, null, null, "row");
			$id_merk = $this->data['ban']->id_merk;
			$where = "id != '$id' AND type = 'ban' AND id_merk = '$id_merk' AND status = 1";
			$this->data['related'] = $this->catalogues->get_data("*", $where, 3);
			$this->data['page'] = $this->load->view($this->get_page('read'), $this->data, true);
			$this->render();
		} else {
			redirect(site_url('latest/ban'));
		}
	}

	private function get_ban($search){
		$data = array();
		$where = array("type" => "ban", "status" => 1);
		if (!empty($search)) {
			$where = "type = 'ban' AND status = 1 AND (name LIKE '%$search%')";
		}
		$product = $this->catalogues->get_data("id,name,image,merk", $where, null, 0, "id_merk ASC", null, "result_array");
		$current = 0;
		$merk = "";
		foreach ($product as $row) {
			if (empty($merk)) {
				$merk = $row['merk'];
				$data[$current]['merk'] = $merk;
				$data[$current]['data'] = array();
				array_push($data[$current]['data'], $row);
			} else {    
				if ($merk == $row['merk']) {
					array_push($data[$current]['data'], $row);
				} else {
					$current++;
					$merk = $row['merk'];
					$data[$current]['merk'] = $merk;
					$data[$current]['data'] = array();
					array_push($data[$current]['data'], $row);
				}
			}
		}
		return $data;
	}

}
