<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  Article
 *
 *  @author Hunter Ninggolan
 *  @date March 16th, 2015
 */
class Client extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->is_admin_login();
        $this->data ['html_link'] = $this->get_config('app_admin_link', TRUE);
        $this->data ['html_script'] = $this->get_config('app_admin_script', TRUE);
        $this->layout_dir = 'admin/layout/';
        $this->page_dir = 'admin/client/';
        $this->data['menu'] = 'Client';
        $this->load->model('client_model', 'client');
        $this->data['active_menu'] = 'client';
    }

    public function index() {
        $this->data['list'] = $this->client->get_data('id,name,image,link,status');
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'List Client';
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    public function add() {
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('name', 'Name', 'trim|xss_clean|required');
            $this->form_validation->set_rules('link', 'Link', 'trim|xss_clean');
            $this->form_validation->set_rules('image', 'Image', 'trim|xss_clean|required');
            if ($this->form_validation->run() == TRUE) {
                $data = array(
                    'name' => $this->input->post('name'),
                    'link' => $this->input->post('link'),
                    'image' => $this->input->post('image')
                );
                // echo var_dump($data);die();
                if ($this->client->insert($data)) {
                    $this->session->set_flashdata('info_msg', get_messages(wrap_text('Client : <strong>' . strtoupper($this->input->post('name')) . '</strong> berhasil di Simpan'), 'alert-success', 'text-success'));
                    redirect('admin/client');
                } else {
                    $this->data['err_msg'] = get_messages(wrap_text('Failed to insert data'));
                }
            } else {
                $this->data ['err_msg'] = get_messages(wrap_text(validation_errors()));
            }
        }
        $this->load->model('gallery_model', 'gallery');
        $this->data['arr_img'] = $this->gallery->get_data(array('id', 'file'), array('type' => 'logo'), null, null, 'upload_date DESC');
        $this->data['menu'] = array('admin/client' => 'Catalogues', 'admin/client/add' => 'Add New Client');
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Add New Client';
        $this->data ['page'] = $this->load->view($this->get_page('add'), $this->data, true);
        $this->render();
    }

    public function update() {
        $param = $this->uri->uri_to_assoc(4);
        $this->data['id'] = null;
        $this->data['update'] = null;
        if (!empty($param)) {
            if (!empty($param['id'])) {
                $this->data['id'] = $param['id'];
                $this->data['update'] = $this->client->get_data(null, array('id' => $param['id']), null, null, null, null, 'row');
            }
        }

        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('name', 'Name', 'trim|xss_clean|required');
            $this->form_validation->set_rules('link', 'Link', 'trim|xss_clean');
            $this->form_validation->set_rules('image', 'Image', 'trim|xss_clean|required');
            if ($this->form_validation->run() == TRUE) {
                $data = array(
                    'name' => $this->input->post('name'),
                    'link' => $this->input->post('link'),
                    'image' => $this->input->post('image')
                );
                if ($this->client->update($data, array('id' => $this->data['id']))) {
                    $this->session->set_flashdata('info_msg', get_messages(wrap_text('Client : <strong>' . strtoupper($this->input->post('name')) . '</strong> berhasil di Update'), 'alert-success', 'text-success'));
                    redirect('admin/client');
                } else {
                    $this->data['err_msg'] = get_messages(wrap_text('Failed to insert data'));
                }
            } else {
                $this->data ['err_msg'] = get_messages(wrap_text(validation_errors()));
            }
        }
        $this->load->model('gallery_model', 'gallery');
        $this->data['arr_img'] = $this->gallery->get_data(array('id', 'file'), array('type' => 'logo'), null, null, 'upload_date DESC');
        $this->data['menu'] = array('admin/client' => 'Client', 'admin/client/update/'.$param['id'] => 'Update Client');
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Update Client';
        $this->data ['page'] = $this->load->view($this->get_page('update'), $this->data, true);
        $this->render();
    }

    public function delete() {
        $param = $this->uri->uri_to_assoc(4);
        $this->data['id'] = null;
        if (!empty($param)) {
            if (!empty($param['id'])) {
                $this->data['id'] = $param['id'];
            }
        } else {
            redirect(site_url('admin/client'));
        }
        $this->client->delete_data(array('id' => $this->data['id']));
        redirect(site_url('admin/client'));
    }

}

/**
 * End of file catalogues.php
 * Location : ./application/controllers/admin/catalogues.php
 */