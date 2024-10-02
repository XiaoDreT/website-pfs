<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  Services
 *
 *  @author Hunter Ninggolan
 *  @date March 16th, 2015
 */
class Services extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->is_admin_login();
        $this->data ['html_link'] = $this->get_config('app_admin_link', TRUE);
        $this->data ['html_script'] = $this->get_config('app_admin_script', TRUE);
        $this->layout_dir = 'admin/layout/';
        $this->page_dir = 'admin/services/';
        $this->data['menu'] = 'Services';
        $this->load->model('services_model', 'services');
        $this->data['active_menu'] = 'services';
    }

    public function index() {
        $this->data ['list'] = $this->services->get_data('id,name,preface,detail', array('insert_user' => $this->session->userdata('sess-id')));
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'List Article';
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    public function view() {
        $param = $this->uri->uri_to_assoc(4);
        $this->data['id'] = null;
        if (!empty($param)) {
            if (!empty($param['id'])) {
                $this->data['id'] = $param['id'];
            }
        } else {
            redirect(site_url('admin/services'));
        }
        $this->data ['view'] = $this->services->get_data(null, array("id" => $this->data['id']), null, null, null, null, 'row');
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Services';
        $this->data ['page'] = $this->load->view($this->get_page('view'), $this->data, true);
        $this->render();
    }

    public function add() {
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('name', 'Name', 'trim|xss_clean|required');
            $this->form_validation->set_rules('preface', 'Preface', 'trim|xss_clean|required');
            $this->form_validation->set_rules('detail', 'Article', 'trim|xss_clean|required');
            $this->form_validation->set_rules('image', 'Image', 'trim|xss_clean|required');
            if ($this->form_validation->run() == TRUE) {
                $data = array(
                    'name' => $this->input->post('name'),
                    'preface' => $this->input->post('preface'),
                    'detail' => $this->input->post('detail'),
                    'image' => $this->input->post('image')
                );
                if ($this->services->insert($data)) {
                    $this->session->set_flashdata('info_msg', get_messages(wrap_text('Services : <strong>' . strtoupper($this->input->post('title')) . '</strong> berhasil di Simpan'), 'alert-success', 'text-success'));
                    redirect('admin/services');
                } else {
                    $this->data['err_msg'] = get_messages(wrap_text('Failed to insert data'));
                }
            } else {
                $this->data ['err_msg'] = get_messages(wrap_text(validation_errors()));
            }
        }
        $this->data['list_hour'] = build_int_to_combo(1, 24, 'hour');
        $this->data['list_minute'] = build_int_to_combo(1, 59, 'minute');
        $this->data['list_second'] = build_int_to_combo(1, 59, 'second');
        $this->load->model('gallery_model', 'gallery');
        $this->data['arr_img'] = $this->gallery->get_data(array('id', 'file'), array('type' => 'normal'), null, null, 'upload_date DESC');
        $this->data['menu'] = array('admin/services' => 'Article', 'admin/services/add' => 'Add New Services');
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Add New Services';
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
                $this->data['update'] = $this->services->get_data(null, array('id' => $param['id']), null, null, null, null, 'row');
            }
        } else {
            redirect(site_url('admin/services'));
        }

        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('title', 'Service Name', 'trim|xss_clean|required');
            $this->form_validation->set_rules('preface', 'Preface', 'trim|xss_clean|required');
            $this->form_validation->set_rules('detail', 'Article', 'trim|xss_clean|required');
            $this->form_validation->set_rules('image', 'Image', 'trim|xss_clean|required');
            if ($this->form_validation->run() == TRUE) {
                $data = array(
                    'preface' => $this->input->post('preface'),
                    'detail' => $this->input->post('detail'),
                    'image' => $this->input->post('image')
                );
                if ($this->services->update($data, array('id' => $this->data['id']))) {
                    $this->session->set_flashdata('info_msg', get_messages(wrap_text('Services : <strong>' . strtoupper($this->input->post('title')) . '</strong> berhasil di Update'), 'alert-success', 'text-success'));
                    redirect('admin/services');
                } else {
                    $this->data['err_msg'] = get_messages(wrap_text('Failed to insert data'));
                }
            } else {
                $this->data ['err_msg'] = get_messages(wrap_text(validation_errors()));
            }
        }
        $this->load->model('gallery_model', 'gallery');
        $this->data['arr_img'] = $this->gallery->get_data(array('id', 'file'), array('type' => 'normal'), null, null, 'upload_date DESC');

        $this->data['menu'] = array('admin/services' => 'Services', 'admin/servicess/update/' . $this->data['id'] => 'Update Article');
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Update Article';
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
            redirect(site_url('admin/article'));
        }
        $this->article->delete_data(array('id' => $this->data['id']));
        redirect(site_url('admin/article'));
    }

}

/**
 * End of file article.php
 * Location : ./application/controllers/admin/article.php
 */