<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  Category
 *
 *  @author Hunter Ninggolan
 *  @date March 16th, 2015
 */
class Category extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->is_admin_login();
        $this->data ['html_link'] = $this->get_config('app_admin_link', TRUE);
        $this->data ['html_script'] = $this->get_config('app_admin_script', TRUE);
        $this->layout_dir = 'admin/layout/';
        $this->page_dir = 'admin/category/';
        $this->data['menu'] = 'Category';
        $this->load->model('category_model', 'category');
        $this->data['active_menu'] = 'category';
    }

    public function index() {
        $this->data ['list'] = $this->category->get_data(null, array('status' => 1));
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'List Category';
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    public function add() {
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('parent_id', 'Parent', 'trim|xss_clean|required');
            $this->form_validation->set_rules('name', 'Category Name', 'trim|xss_clean|required');
            if ($this->form_validation->run() == TRUE) {
                if ($this->category->insert($_POST)) {
                    $this->session->set_flashdata('info_msg', get_messages(wrap_text('Category : <strong>' . strtoupper($this->input->post('name')) . '</strong> berhasil di Simpan'), 'alert-success', 'text-success'));
                    redirect('admin/category');
                } else {
                    $this->data['err_msg'] = get_messages(wrap_text('Category Gagal di Simpan!'));
                }
            } else {
                $this->data['err_msg'] = get_messages(validation_errors());
            }
        }
        $arr_category = $this->category->get_data(null, array('status' => 1));
        $this->data['cat'] = array('0' => '-');
        if (!empty($arr_category)) {
            foreach ($arr_category as $row) {
                $this->data['cat'] = array_merge($this->data['cat'], array($row->id => $row->name));
            }
        }
        $this->data['menu'] = array('admin/category' => 'Category', 'admin/category/add' => 'Add New Category');
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Add New Category';
        $this->data ['page'] = $this->load->view($this->get_page('add'), $this->data, true);
        $this->render();
    }

}

/**
 * End of file category.php
 * Location : ./application/controllers/admin/category.php
 */