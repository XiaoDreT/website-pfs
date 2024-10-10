<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  Home
 *
 *  @author Hunter Ninggolan
 *  @date March 16th, 2015
 */
class Home extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->is_admin_login();
        redirect('admin/info');
        $this->data ['html_link'] = $this->get_config('app_admin_link', TRUE);
        $this->data ['html_script'] = $this->get_config('app_admin_script', TRUE);
        $this->layout_dir = 'admin/layout/';
        $this->page_dir = 'admin/home/';
        $this->data['menu'] = 'home';
        $this->data['active_menu'] = 'home';
    }

    function index() {
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Welcome';
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }
    function end(){
        $this->session->sess_destroy();
        redirect('admin/login');
    }
}

/**
 * End of file home.php
 * Location : ./application/controllers/admin/home.php
 */