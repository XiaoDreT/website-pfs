<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->layout_dir = 'old/layout/';
        $this->page_dir = 'old/contact/';
    }

    public function index() {
        $this->data['menu']['name'] = 'Contact Us';
        $this->data['menu']['link'] = 'contact';
        $this->load->model('info_model', 'info');
        $contact = $this->info->get_data(null, array('id' => 2), null, null, null, null, 'row');
        $this->data['rec_data'] = unserialize($contact->detail);
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }
	function test_send() {
        $config = Array(
            'protocol' => 'smtp',
            'smtp_host' => 'localhost',
            'smtp_port' => 25,
            'smtp_user' => 'do-not-reply@primeforklift.co.id',
            'smtp_pass' => '7nQr4yYhA$Mn^',
            'mailtype' => 'html',
            'charset' => 'iso-8859-1'
        );
        $this->load->library('email', $config);
        $this->email->set_newline("\r\n");
        $this->email->from('info@primeforklift.co.id', 'Prime Forklift')->to('hunter.nainggolan@gmail.com')->subject('Test Email')->message('Berhasil Bro');
        if ($this->email->send()) {
            echo get_messages('Email terkirim');
        } else {
            echo get_messages($this->email->print_debugger());
        }
    }

}
