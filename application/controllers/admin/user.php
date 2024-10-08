<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  User
 *
 *  @author Lisman Tua Sihotang
 *  @date Me 16th, 2015
 */
class User extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->is_admin_login();
        $this->data ['html_link'] = $this->get_config('app_admin_link', TRUE);
        $this->data ['html_script'] = $this->get_config('app_admin_script', TRUE);
        $this->layout_dir = 'admin/layout/';
        $this->page_dir = 'admin/user/';
        $this->data['menu'] = 'user';
        $this->load->model('users_model', 'users');
        $this->data['active_menu'] = 'user';
    }

    public function index() {
        $this->data['list'] = $this->users->get_data(null, array('status' => '1'));
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'List Users';
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    public function add() {
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('name', 'Full Name', 'trim|xss_clean|required');
            $this->form_validation->set_rules('email', 'Email', 'trim|xss_clean|valid_email');
            $this->form_validation->set_rules('phone', 'Phone', 'trim|xss_clean');
            $this->form_validation->set_rules('username', 'Username', 'trim|xss_clean|required');
            $this->form_validation->set_rules('password', 'Password', 'trim|xss_clean|required');
            $this->form_validation->set_rules('repassword', 'Re-Password', 'trim|xss_clean|required|matches[password]');
            if ($this->form_validation->run() == TRUE) {
                if ($this->users->check_user($this->input->post('username'))) {
                    $this->data['err_msg'] = get_messages(wrap_text('This username Already Exist'));
                } else {
                    $_POST['password'] = md5($_POST['password']);
                    $_POST['insert_user'] = $this->session->userdata('sess-id');
                    if ($this->users->insert($_POST)) {
                        $this->session->set_flashdata('info_msg', get_messages(wrap_text('Add New User : <strong>' . strtoupper($this->input->post('name')) . '</strong> Succeded'), 'alert-success', 'text-success'));
                        redirect('admin/user');
                    } else {
                        $this->data['err_msg'] = get_messages(wrap_text('Failed to insert data'));
                    }
                }
            } else {
                $this->data['err_msg'] = get_messages(validation_errors());
            }
        }
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Add Users';
        $this->data ['page'] = $this->load->view($this->get_page('add'), $this->data, true);
        $this->render();
    }

    public function update() {
        $this->data['id'] = null;
        $this->data['update'] = null;
        $param = $this->uri->uri_to_assoc(4);
        if (!empty($param)) {
            $this->data['id'] = $param['id'];
            $this->data['update'] = $this->users->get_data(null, array('id' => $param['id']), null, null, null, null, 'row');
        }
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('name', 'Full Name', 'trim|xss_clean|required');
            $this->form_validation->set_rules('email', 'Email', 'trim|xss_clean|valid_email');
            $this->form_validation->set_rules('phone', 'Phone', 'trim|xss_clean');
            $this->form_validation->set_rules('password', 'Password', 'trim|xss_clean|required');
            $this->form_validation->set_rules('repassword', 'Re-Password', 'trim|xss_clean|required|matches[password]');
            if ($this->form_validation->run() == TRUE) {
                $_POST['password'] = md5($_POST['password']);
                $_POST['update_user'] = $this->session->userdata('sess-id');
                if (!empty($this->data['id'])) {
                    if ($this->users->update($_POST, array('id' => $param['id']))) {
                        $this->session->set_flashdata('info_msg', get_messages(wrap_text('Update User : <strong>' . strtoupper($this->input->post('name')) . '</strong> Succeded'), 'alert-success', 'text-success'));
                        redirect('admin/user');
                    } else {
                        $this->data['err_msg'] = get_messages(wrap_text('Failed to Update data'));
                    }
                } else {
                    $this->data['err_msg'] = get_messages(wrap_text('Failed to Update data, Empty ID'));
                }
            } else {
                $this->data['err_msg'] = get_messages(validation_errors());
            }
        }
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Update Users';
        $this->data ['page'] = $this->load->view($this->get_page('update'), $this->data, true);
        $this->render();
    }

    public function delete() {
        $this->data['id'] = null;
        $this->data['update'] = null;
        $param = $this->uri->uri_to_assoc(4);
        if (!empty($param)) {
            $this->data['id'] = $param['id'];
            $row = $this->users->get_data(null, array('id' => $param['id']), null, null, null, null, 'row');
            if ($this->users->update(array('status' => 0), array('id' => $param['id']))) {
                $this->session->set_flashdata('info_msg', get_messages(wrap_text('Delete User : <strong>' . strtoupper($row->name) . '</strong> Succeded'), 'alert-success', 'text-success'));
            } else {
                $this->session->set_flashdata('info_msg', get_messages(wrap_text('Delete User : <strong>' . strtoupper($row->name) . '</strong> Failed'), 'alert-warning', 'text-success'));
            }
            redirect('admin/user');
        }
    }

}
