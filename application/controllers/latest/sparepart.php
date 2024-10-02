<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Sparepart extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->layout_dir = 'latest/layout/';
        $this->page_dir = 'latest/sparepart/';
        $this->load->model('catalogues_view_model', 'catalogues');
        $this->data['menu']['name'] = 'Sparepart';
        $this->data['menu']['link'] = 'sparepart';
    }

    public function index() {
        $search = "";
        if ($this->input->get('search')) {
            $this->data ['search'] = $this->input->get('search');
            $search = $this->data['search'];
        }
        $this->data['sparepart'] = $this->get_sparepart($search);
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    public function read() {
        $id = $this->uri->segment($this->uri->total_segments(), 0);
        if ($id != "sparepart") {
            $this->data['sparepart'] = $this->catalogues->get_data("*", array("id" => $id), null, null, null, null, "row");
            $id_merk = $this->data['sparepart']->id_merk;
            $where = "id != '$id' AND type = 'part' AND id_merk = '$id_merk' AND status = 1";
            $this->data['related'] = $this->catalogues->get_data("*", $where, 3);
            $this->data['page'] = $this->load->view($this->get_page('read'), $this->data, true);
            $this->render();
        } else {
            redirect(site_url('latest/sparepart'));
        }
    }

    private function get_sparepart($search){
        $data = array();
        $where = array("type" => "part", "status" => 1);
        if (!empty($search)) {
            $where = "type = 'part' AND status = 1 AND (name LIKE '%$search%')";
        }
        $product = $this->catalogues->get_data("id,slug,name,image,merk", $where, null, 0, "id_merk ASC", null, "result_array");
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
