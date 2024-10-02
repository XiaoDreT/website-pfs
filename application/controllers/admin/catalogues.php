<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  Article
 *
 *  @author Hunter Ninggolan
 *  @date March 16th, 2015
 */
class Catalogues extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->is_admin_login();
        $this->data ['html_link'] = $this->get_config('app_admin_link', TRUE);
        $this->data ['html_script'] = $this->get_config('app_admin_script', TRUE);
        $this->layout_dir = 'admin/layout/';
        $this->page_dir = 'admin/catalogues/';
        $this->data['menu'] = 'Catalogues';
        $this->load->model('catalogues_model', 'catalogues');
        $this->load->model('merk_model', 'merk');
        $this->data['active_menu'] = 'catalogues';
    }

    public function index() {
        $this->data['list'] = $this->catalogues->get_data("*", null, null, null, null, null, "result", null, true);
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'List Catalogues';
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    public function merk(){
        $this->data['list'] = $this->merk->get_data("*", array("status" => 1));
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'List Merk';
        $this->data ['page'] = $this->load->view($this->get_page('merk'), $this->data, true);
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
            redirect(site_url('admin/catalogues'));
        }
        $this->data ['view'] = $this->catalogues->get_data(null, array("id" => $this->data['id']), null, null, null, null, 'row');
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Detail Catalogues';
        $this->data ['page'] = $this->load->view($this->get_page('view'), $this->data, true);
        $this->render();
    }

    public function add() {
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('name', 'Name', 'trim|xss_clean|required');
            $this->form_validation->set_rules('merk', 'Merk', 'trim|xss_clean|required');
            $this->form_validation->set_rules('type', 'Type', 'trim|xss_clean|required');
            $this->form_validation->set_rules('description', 'Description', 'trim|xss_clean|required');
            $this->form_validation->set_rules('image', 'Image', 'trim|xss_clean|required');
            if ($this->form_validation->run() == TRUE) {
                // Buat slug unik
                $slug = $this->catalogues->create_unique_slug($this->input->post('name'));
                $data = array(
                    'slug' => $slug,
                    'name' => $this->input->post('name'),
                    'id_merk' => $this->input->post('merk'),
                    'type' => $this->input->post('type'),
                    'description' => $this->input->post('description'),
                    'image' => $this->input->post('image')
                ); 
                if ($this->catalogues->insert($data)) {
                    $this->session->set_flashdata('info_msg', get_messages(wrap_text('Catalogues : <strong>' . strtoupper($this->input->post('name')) . '</strong> berhasil di Simpan'), 'alert-success', 'text-success'));
                    redirect('admin/catalogues');
                } else {
                    $this->data['err_msg'] = get_messages(wrap_text('Failed to insert data'));
                }
            } else {
                $this->data ['err_msg'] = get_messages(wrap_text(validation_errors()));
            }
        }
        $this->load->model('gallery_model', 'gallery');
        $this->data['arr_img'] = $this->gallery->get_data(array('id', 'file'), array('type' => 'catalogue'), null, null, 'upload_date DESC');
        $this->data['menu'] = array('admin/catalogues' => 'Catalogues', 'admin/catalogues/add' => 'Add New Catalogues');
        $this->data['merk'] = $this->merk->get_data("*", array("status" => 1));
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Add New Catalogues';
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
                $this->data['update'] = $this->catalogues->get_data(null, array('id' => $param['id']), null, null, null, null, 'row');
            }
        }

        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('name', 'Name', 'trim|xss_clean|required');
            $this->form_validation->set_rules('merk', 'Merk', 'trim|xss_clean|required');
            $this->form_validation->set_rules('type', 'Type', 'trim|xss_clean|required');
            $this->form_validation->set_rules('description', 'Description', 'trim|xss_clean|required');
            $this->form_validation->set_rules('image', 'Image', 'trim|xss_clean|required');
            if ($this->form_validation->run() == TRUE) {
                // Update slug unik
                $slug = $this->catalogues->create_unique_slug($this->input->post('name'));
                $data = array(
                    'slug' => $slug,
                    'name' => $this->input->post('name'),
                    'id_merk' => $this->input->post('merk'),
                    'type' => $this->input->post('type'),
                    'description' => $this->input->post('description'),
                    'image' => $this->input->post('image')
                );
                if ($this->catalogues->update($data, array('id' => $this->data['id']))) {
                    $this->session->set_flashdata('info_msg', get_messages(wrap_text('Catalogues : <strong>' . strtoupper($this->input->post('name')) . '</strong> berhasil di Update'), 'alert-success', 'text-success'));
                    redirect('admin/catalogues');
                } else {
                    $this->data['err_msg'] = get_messages(wrap_text('Failed to insert data'));
                }
            } else {
                $this->data ['err_msg'] = get_messages(wrap_text(validation_errors()));
            }
        }
        $this->load->model('gallery_model', 'gallery');
        $this->data['arr_img'] = $this->gallery->get_data(array('id', 'file'), array('type' => 'catalogue'), null, null, 'upload_date DESC');
        $this->data['menu'] = array('admin/catalogues' => 'Catalogues', 'admin/catalogues/update/'.$param['id'] => 'Update Catalogues');
        $this->data['merk'] = $this->merk->get_data("*", array("status" => 1));
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Update Catalogues';
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
            redirect(site_url('admin/catalogues'));
        }
        $this->catalogues->delete_data(array('id' => $this->data['id']));
        redirect(site_url('admin/catalogues'));
    }

    public function merk_action(){
        $type = $this->input->post('type');
        switch ($type) {
            case 'add':
                $this->add_merk($this->input->post('name'));
                break;
            case 'update':
                $this->update_merk($this->input->post('id'), $this->input->post('name'));
                break;
        }
    }

    public function add_merk($name){
        if (!empty($name)) {
            $data = array(
                "nama" => $name
            );
            $this->merk->add_data($data);
            $this->session->set_flashdata('info_msg', get_messages(wrap_text('Merk : <strong>' . strtoupper($name) . '</strong> berhasil di Simpan'), 'alert-success', 'text-success'));
        } else {
            $this->session->set_flashdata('info_msg', get_messages(wrap_text('Error : <strong> Nama Merk </strong> tidak boleh kosong'), 'alert-danger', 'text-danger'));
        }
        echo "OK";
    }

    public function update_merk($id, $name){
        if (!empty($name)) {
            $data = array(
                "nama" => $name
            );
            $this->merk->edit_data($data, array("id" => $id));
            $this->session->set_flashdata('info_msg', get_messages(wrap_text('Merk ID : <strong>' . $id . '</strong> berhasil di Update'), 'alert-success', 'text-success'));
        } else {
            $this->session->set_flashdata('info_msg', get_messages(wrap_text('Error : <strong> Nama Merk </strong> tidak boleh kosong'), 'alert-danger', 'text-danger'));
        }
        echo "OK";
    }

    public function deletemerk() {
        $param = $this->uri->uri_to_assoc(4);
        $this->data['id'] = null;
        if (!empty($param)) {
            if (!empty($param['id'])) {
                $this->data['id'] = $param['id'];
            }
        } else {
            $this->session->set_flashdata('info_msg', get_messages(wrap_text('Failed : <strong>' . $this->data['id'] . '</strong> gagal di Delete'), 'alert-danger', 'text-success'));
            redirect(site_url('admin/catalogues/merk'));
        }
        $this->merk->delete_data(array('id' => $this->data['id']));
        $this->session->set_flashdata('info_msg', get_messages(wrap_text('Success : <strong>' . $this->data['id'] . '</strong> berhasil di Delete'), 'alert-success', 'text-success'));
        redirect(site_url('admin/catalogues/merk'));
    }

}

/**
 * End of file catalogues.php
 * Location : ./application/controllers/admin/catalogues.php
 */