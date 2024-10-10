<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  Article
 *
 *  @author Hunter Ninggolan
 *  @date March 16th, 2015
 */
class Article extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->is_admin_login();
        $this->data ['html_link'] = $this->get_config('app_admin_link', TRUE);
        $this->data ['html_script'] = $this->get_config('app_admin_script', TRUE);
        $this->layout_dir = 'admin/layout/';
        $this->page_dir = 'admin/article/';
        $this->data['menu'] = 'Article';
        $this->load->model('article_model', 'article');
        $this->data['active_menu'] = 'article';
    }

    public function index() {
        $this->data ['list'] = $this->article->get_data('id,title,slug,preface,status,insert_user', array('insert_user' => $this->session->userdata('sess-id')));
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'List Article';
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }
    
    public function all() {
        $this->data ['list'] = $this->article->get_data('id,title,slug,release_date,status,insert_user');
        // echo var_dump($this->data ['list']);
        // die();
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'List Article';
        $this->data ['page'] = $this->load->view($this->get_page('all'), $this->data, true);
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
            redirect(site_url('admin/article'));
        }
        $this->data ['view'] = $this->article->get_data(null, array("id" => $this->data['id']), null, null, null, null, 'row');
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Detail Article';
        $this->data ['page'] = $this->load->view($this->get_page('view'), $this->data, true);
        $this->render();
    }

    public function add() {
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('title', 'Title', 'trim|xss_clean|required');
            $this->form_validation->set_rules('preface', 'Preface', 'trim|xss_clean|required');
            $this->form_validation->set_rules('keyword', 'Keyword', 'trim|xss_clean|required');
            $this->form_validation->set_rules('detail', 'Article', 'trim|xss_clean|required');
            $this->form_validation->set_rules('release_date', 'Release Date', 'trim|xss_clean|required');
            $this->form_validation->set_rules('image', 'Image', 'trim|xss_clean|required');
            if ($this->form_validation->run() == TRUE) {
                $date = $this->input->post('release_date') . ' ' . $this->input->post('hour') . ':' . $this->input->post('minute') . ':' . $this->input->post('second');
                // Buat slug unik
                $slug = $this->article->create_unique_slug($this->input->post('title'));
                $data = array(
                    'slug' => $slug,
                    'title' => $this->input->post('title'),
                    'preface' => $this->input->post('preface'),
                    'detail' => $this->input->post('detail'),
                    'keyword' => $this->input->post('keyword'),
                    'image' => $this->input->post('image'),
                    'insert_user' => $this->session->userdata('sess-id'),
                    'release_date' => $date
                );
                if ($this->article->insert($data)) {
                    $this->session->set_flashdata('info_msg', get_messages(wrap_text('Article : <strong>' . strtoupper($this->input->post('title')) . '</strong> berhasil di Simpan'), 'alert-success', 'text-success'));
                    redirect('admin/article');
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
        $this->data['menu'] = array('admin/article' => 'Article', 'admin/article/add' => 'Add New Article');
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Add New Article';
        $this->data ['page'] = $this->load->view($this->get_page('add'), $this->data, true);
        $this->render();
    }
    
    public function addDD(){
        echo "hallo";
    }

    public function update() {
        $param = $this->uri->uri_to_assoc(4);
        $this->data['id'] = null;
        $this->data['update'] = null;
        if (!empty($param)) {
            if (!empty($param['id'])) {
                $this->data['id'] = $param['id'];
                $this->data['update'] = $this->article->get_data(null, array('id' => $param['id']), null, null, null, null, 'row');
            }
        }

        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('title', 'Title', 'trim|xss_clean|required');
            $this->form_validation->set_rules('preface', 'Preface', 'trim|xss_clean|required');
            $this->form_validation->set_rules('keyword', 'Keyword', 'trim|xss_clean|required');
            $this->form_validation->set_rules('detail', 'Article', 'trim|xss_clean|required');
            $this->form_validation->set_rules('release_date', 'Release Date', 'trim|xss_clean|required');
            $this->form_validation->set_rules('image', 'Image', 'trim|xss_clean|required');
            if ($this->form_validation->run() == TRUE) {
                $date = $this->input->post('release_date') . ' ' . $this->input->post('hour') . ':' . $this->input->post('minute') . ':' . $this->input->post('second');
                // Update slug unik
                $slug = $this->article->create_unique_slug($this->input->post('title'));
                $data = array(
                    'slug' => $slug,
                    'title' => $this->input->post('title'),
                    'preface' => $this->input->post('preface'),
                    'detail' => $this->input->post('detail'),
                    'keyword' => $this->input->post('keyword'),
                    'image' => $this->input->post('image'),
                    'update_user' => $this->session->userdata('sess-id'),
                    'release_date' => $date
                );
                if ($this->article->update($data, array('id' => $this->data['id']))) {
                    $this->session->set_flashdata('info_msg', get_messages(wrap_text('Article : <strong>' . strtoupper($this->input->post('title')) . '</strong> berhasil di Update'), 'alert-success', 'text-success'));
                    redirect('admin/article');
                } else {
                    $this->data['err_msg'] = get_messages(wrap_text('Failed to insert data'));
                }
            } else {
                $this->data ['err_msg'] = get_messages(wrap_text(validation_errors()));
            }
        }

        $this->data['date'] = convertMySQLDateToArray($this->data['update']->release_date, true);
       
        $this->data['list_hour'] = build_int_to_combo(1, 24, 'hour', $this->data['date']['jam']);
        $this->data['list_minute'] = build_int_to_combo(1, 59, 'minute', $this->data['date']['menit']);
        $this->data['list_second'] = build_int_to_combo(1, 59, 'second', $this->data['date']['detik']);
        $this->load->model('gallery_model', 'gallery');
        $this->data['arr_img'] = $this->gallery->get_data(array('id', 'file'), array('type' => 'normal'), null, null, 'upload_date DESC');

        $this->data['menu'] = array('admin/article' => 'Article', 'admin/article/add' => 'Update Article');
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