<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class About extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->layout_dir = 'old/layout/';
        $this->page_dir = 'old/about/';
    }

    public function index() {
        $this->data['menu']['name'] = 'About Us';
        $this->data['menu']['link'] = 'about';
        $this->load->model('info_model', 'info');
        $this->data['rec_data'] = $this->info->get_data(null, array('id' => 1), null, null, null, null, 'row');
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

}
