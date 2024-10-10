<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->layout_dir = 'old/layout/';
        $this->page_dir = 'old/home/';
        $this->data['menu']['name'] = 'Home';
        $this->data['menu']['link'] = 'home';
    }

    public function index() {
        $this->load->model('sliders_model', 'slider');
        $this->load->model('article_model', 'article');
        $this->load->model('services_model', 'services');
        $this->data['rec_slider'] = $this->slider->get_data(null, array('status' => 1));
        $this->data['services'] = $this->services->get_data();
        $this->data['rec_blog'] = $this->article->get_recent_article(8, 0);
		$this->data ['msg'] = $this->session->flashdata('info_messages') ? get_messages(wrap_text($this->session->flashdata('info_messages')), 'alert-success') : null;
		if ($this->input->post('send')) {
            $this->form_validation->set_rules('txt_nama', 'Contact Name', 'trim|xss_clean|required');
            $this->form_validation->set_rules('txt_email', 'Contact Email', 'trim|xss_clean|required|valid_email');
            $this->form_validation->set_rules('content', 'Product Detail', 'trim|xss_clean');
            if ($this->form_validation->run()) {
                $name = $this->input->post('txt_nama');
                $email = $this->input->post('txt_email');
                $content = $this->input->post('content');
                if ($this->send_email($name,$email,$content)) {
                    $this->session->set_flashdata('info_messages', 'Terimakasih Bpk/Ibu. '.$name.' karena telah menghubungi kami. Kami akan segera merespon email anda.');
                    redirect(site_url('contact'));
                } else {
                    $this->data ['msg'] = get_messages('Maaf, System tidak bisa mengirim email. Harap coba beberapa saat lagi', 'alert-success', 'text-muted');
                }
            } else {
                $this->data ['msg'] = get_messages(validation_errors());
            }
        }
		
		
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }
	
	function send_email($name,$email,$content) {
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
        $this->email->from($email, $name)->to('info@primeforklift.co.id')->subject('Contact US - Prime Forklift')->message($content);
        if ($this->email->send()) {
            return true;
        } else {
            return false;
        }
    }
}
