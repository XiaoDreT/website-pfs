<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Services extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->layout_dir = 'old/layout/';
        $this->page_dir = 'old/services/';
        $this->data['menu']['name'] = 'Services';
        $this->data['menu']['link'] = 'services';
        $this->load->model('services_model', 'services');
    }

    public function index() {
        $this->data['services'] = $this->services->get_data();
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    public function read() {
        $id = $this->uri->segment(3);
        $this->data['rec_data'] = $this->services->get_data(null, array('id' => $id), null, null, null, null, 'row');
        if (empty($this->data['rec_data'])) {
            redirect(site_url());
        }
        $this->data ['page'] = $this->load->view($this->get_page('read'), $this->data, true);
        $this->render();
    }

}
