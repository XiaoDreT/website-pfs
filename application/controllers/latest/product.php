<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends MY_Controller {

	public function __construct() {
		parent::__construct();
		$this->layout_dir = 'latest/layout/';
		$this->page_dir = 'latest/product/';
		$this->load->model('catalogues_view_model', 'catalogues');
		$this->data['menu']['name'] = 'Product';
		$this->data['menu']['link'] = 'product';
	}

	public function index() {
		$search = "";
		if ($this->input->get('search')) {
			$this->data ['search'] = $this->input->get('search');
			$search = $this->data['search'];
		}
		$this->data['product'] = $this->get_product($search);
		$this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
		$this->render();
	}

	public function read() {
		$id = $this->uri->segment($this->uri->total_segments(), 0);
		if ($id != "product") {
			$this->data['product'] = $this->catalogues->get_data("*", array("id" => $id), null, null, null, null, "row");
			$id_merk = $this->data['product']->id_merk;
			$type_product = $this->data['product']->type;
			$where = "id != '$id' AND type = '".$type_product."' AND id_merk = '$id_merk' AND status = 1";
			$this->data['related'] = $this->catalogues->get_data("*", $where, 3);
			$this->data['page'] = $this->load->view($this->get_page('read'), $this->data, true);
			$this->render();
		} else {
			redirect(site_url('latest/product'));
		}
	}

	private function get_product($search){
		$data = array();
		$where = array("type" => "unit", "status" => 1);
		if (!empty($search)) {
			$where = "type = 'unit' AND status = 1 AND (name LIKE '%$search%')";
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
