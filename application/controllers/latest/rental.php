<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Rental extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->layout_dir = 'latest/layout/';
        $this->page_dir = 'latest/rental/';
        $this->data['menu']['name'] = 'Rental';
        $this->data['menu']['link'] = 'rental';
        // $this->load->model('rental_model', 'rental');
    }

    public function index() {
        // $this->data['rental'] = $this->services->get_data();
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

}
