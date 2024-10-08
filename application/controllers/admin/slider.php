<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  Slider
 *
 *  @author Hunter Ninggolan
 *  @date March 16th, 2015
 */
class Slider extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->is_admin_login();
        $this->data ['html_link'] = $this->get_config('app_admin_link', TRUE);
        $this->data ['html_script'] = $this->get_config('app_admin_script', TRUE);
        $this->layout_dir = 'admin/layout/';
        $this->page_dir = 'admin/slider/';
        $this->data['menu'] = 'home';
        $this->load->model('sliders_model', 'slider');
        $this->data['active_menu'] = 'category';
        $this->load->helper('directory');
    }

    function index() {
        $this->data ['page_icon'] = 'icomoon-icon-list';
        $this->data ['page_title'] = 'Slider';
        $this->data['info_messages'] = $this->session->flashdata('info_messages') ? get_messages(wrap_text($this->session->flashdata('info_messages')), 'alert-success') : null;
        $this->data['rec_data'] = $this->slider->get_data();
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    function update() {
        $this->data['id'] = $this->uri->segment(4);
        $this->data ['page_icon'] = 'icomoon-icon-pencil-4';
        $this->data ['page_title'] = 'Update Slider';
        $this->data['rec_data'] = $this->slider->get_data(null, array('id' => $this->data['id']), null, null, null, null, 'row');

        if ($this->input->post('submit')) {
            $this->proceed_edit($this->data['id']);
        }
        $this->data['list'] = directory_map('./assets/uploads/slider/');
        $this->data ['page'] = $this->load->view($this->get_page('update'), $this->data, true);
        $this->render();
    }

    function proceed_edit($id = null) {
        $this->form_validation->set_rules('txt_title', 'Title', 'trim|xss_clean|required');
        $this->form_validation->set_rules('txt_text', 'Text', 'trim|xss_clean|required');
        $this->form_validation->set_rules('txt_link', 'Link', 'trim|xss_clean|required');
        $this->form_validation->set_rules('cmb_image', 'Image', 'trim|xss_clean|required');
        if ($this->form_validation->run()) {
            $data = array(
                'title' => $this->input->post('txt_title'),
                'link' => $this->input->post('txt_link'),
                'text' => $this->input->post('txt_text'),
                'image' => $this->input->post('cmb_image')
            );
            if ($this->slider->edit_data($data, array('id' => $id))) {
                $this->session->set_flashdata('info_messages', 'Slider successfully updated');
                redirect(site_url('admin/slider/index'));
            } else {
                $this->data ['form_validation_errors'] = get_messages('Failed to update Data', 'alert-success', 'text-muted');
            }
        } else {
            $this->data ['form_validation_errors'] = get_messages(validation_errors());
        }
    }

    /**
     * upload_images
     * @author Hunter Nainggolan
     * @date 22 September 2014
     */
    function image() {
        if ($this->input->post('submit')) {
            $config = array(
                'upload_path' => UPLOAD_PATH_SLIDE,
                'allowed_types' => 'jpeg|jpg|png|gif',
                'overwrite' => true,
                'remove_spaces' => true
            );
            $this->load->library('upload', $config);
            if ($this->upload->do_upload('uploadimage')) {
                $this->data ['upload'] = $this->upload->data();
                redirect('admin/slider/image');
            } else {
                $this->data ['form_validation_errors'] = $this->upload->display_errors() ? get_messages(wrap_text($this->upload->display_errors())) : null;
            }
            unset($config);
        }

        $this->data['list'] = directory_map('./assets/uploads/slider/');
        $this->data ['page_icon'] = 'glyphicon-plus';
        $this->data ['page_content'] = 'Upload Images Slider';
        $this->data ['page'] = $this->load->view($this->get_page('upload'), $this->data, true);
        $this->render();
    }

    function deactive() {
        $id = $this->uri->segment(4);
        $ubah = $this->slider->edit_data(array('status' => 0), array('id' => $id));
        if ($ubah == true) {
            $this->session->set_flashdata('info_messages', 'Slider successfully Deactived');
            redirect(site_url('admin/slider'));
        } else {
            $this->session->set_flashdata('info_messages', 'Slider Fail Deactived');
            redirect(site_url('admin/slider'));
        }
    }

    function active() {
        $id = $this->uri->segment(4);
        $ubah = $this->slider->edit_data(array('status' => 1), array('id' => $id));
        if ($ubah == true) {
            $this->session->set_flashdata('info_messages', 'Slider successfully Actived');
            redirect(site_url('admin/slider'));
        } else {
            $this->session->set_flashdata('info_messages', 'Slider Fail Actived');
            redirect(site_url('admin/slider'));
        }
    }
    public function delete() {
        $image = $this->uri->segment(4);
        if (unlink(UPLOAD_PATH_SLIDE . DIRECTORY_SEPARATOR . $image)) {
            redirect(site_url('admin/slider/image'));
        } else {
            redirect(site_url('admin/slider/image'));
        }
    }

}

/**
 * End of file slider.php
 * Location : ./application/controllers/admin/slider    .php
 */