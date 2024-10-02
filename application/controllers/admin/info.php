<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  Info
 *
 *  @author Hunter Ninggolan
 *  @date March 16th, 2015
 */
class Info extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->is_admin_login();
        $this->data ['html_link'] = $this->get_config('app_admin_link', TRUE);
        $this->data ['html_script'] = $this->get_config('app_admin_script', TRUE);
        $this->layout_dir = 'admin/layout/';
        $this->page_dir = 'admin/info/';
        $this->data['menu'] = 'home';
        $this->load->model('info_model', 'info');
        $this->data['active_menu'] = 'info';
    }

    function index() {
        $this->data['info_messages'] = $this->session->flashdata('info_messages') ? get_messages(wrap_text($this->session->flashdata('info_messages')), 'alert-success') : null;
        $this->data['send'] = $_POST;
        $this->data ['about'] = $this->info->get_data(null, array('id' => 1), null, null, null, null, 'row');
        $contact = $this->info->get_data(null, array('id' => 2), null, null, null, null, 'row');
        $this->data ['contact'] = unserialize($contact->detail);
        $this->data ['services'] = $this->info->get_data(null, array('id' => 3), null, null, null, null, 'row');
        $this->data ['page_icon'] = 'icomoon-icon-list';
        $this->data ['page_title'] = 'Company Info';
        if ($this->input->post('submit-about')) {
            $this->update_about();
        } else if ($this->input->post('submit-contact')) {
            $this->update_contact();
        }
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    function update_about() {
        $this->form_validation->set_rules('txt_about_preface', 'About Preface', 'trim|xss_clean');
        $this->form_validation->set_rules('txt_about_detail', 'About Company', 'trim|xss_clean');
        if ($this->form_validation->run()) {
            $data = array(
                'preface' => $this->input->post('txt_about_preface'),
                'detail' => $this->input->post('txt_about_detail')
            );
            if ($this->info->edit_data($data, array('id' => 1))) {
                $this->session->set_flashdata('info_messages', 'Company Data successfully updated');
                redirect(site_url('admin/info/'));
            } else {
                $this->data ['form_validation_errors'] = get_messages('Failed to save Data', 'alert-success', 'text-muted');
            }
        } else {
            $this->data ['form_validation_errors'] = get_messages(validation_errors());
        }
    }

    function update_contact() {
        $this->form_validation->set_rules('txt_address', 'Company Address', 'trim|xss_clean');
        $this->form_validation->set_rules('txt_city', 'City', 'trim|xss_clean');
        $this->form_validation->set_rules('txt_country', 'Country', 'trim|xss_clean');
        $this->form_validation->set_rules('txt_phone', 'Phone', 'trim|xss_clean');
        $this->form_validation->set_rules('txt_email', 'Email', 'trim|xss_clean');
        $this->form_validation->set_rules('txt_fb', 'Facebook', 'trim|xss_clean');
        $this->form_validation->set_rules('txt_gp', 'Google Plus', 'trim|xss_clean');
        $this->form_validation->set_rules('txt_fax', 'Fax', 'trim|xss_clean');
        $this->form_validation->set_rules('txt_sms', 'SMS', 'trim|xss_clean');
        $this->form_validation->set_rules('txt_wa', 'Whatsapp', 'trim|xss_clean');
        $this->form_validation->set_rules('txt_tokped', 'Tokopedia', 'trim|xss_clean');
        if ($this->form_validation->run()) {
            $data = array(
                'address' => $this->input->post('txt_address'),
                'city' => $this->input->post('txt_city'),
                'country' => $this->input->post('txt_country'),
                'phone' => $this->input->post('txt_phone'),
                'email' => $this->input->post('txt_email'),
                'fb' => $this->input->post('txt_fb'),
                'gplus' => $this->input->post('txt_gp'),
                'fax' => $this->input->post('txt_fax'),
                'sms' => $this->input->post('txt_sms'),
                'wa' => $this->input->post('txt_wa'),
                'tokped' => $this->input->post('txt_tokped')
            );

            $insert = serialize($data);
            if ($this->info->edit_data(array('detail' => $insert), array('id' => 2))) {
                $this->session->set_flashdata('info_messages', 'Company Data successfully updated');
                redirect(site_url('admin/info/'));
            } else {
                $this->data ['form_validation_errors'] = get_messages('Failed to save Data', 'alert-success', 'text-muted');
            }
        } else {
            $this->data ['form_validation_errors'] = get_messages(validation_errors());
        }
    }

}



/**

 * End of file info.php

 * Location : ./application/controllers/admin/info.php

 */