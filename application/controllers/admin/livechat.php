<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Livechat extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->is_admin_login();
        $this->data ['html_link'] = $this->get_config('app_admin_link', TRUE);
        $this->data ['html_script'] = $this->get_config('app_admin_script', TRUE);
        $this->layout_dir = 'admin/layout/';
        $this->page_dir = 'admin/livechat/';
        $this->data['menu'] = 'livechat';
        $this->load->model('chat_model', 'chat');
        $this->load->model('message_model', 'message');
        $this->data['active_menu'] = 'livechat';
    }

    public function index() {
        $this->data ['page_icon'] = 'glyphicon-stats';
        $this->data ['page_title'] = 'Livechat';
        $this->data ['data'] = $this->get_chat_message();
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    public function change_chat_active(){
        $id = $this->input->post('id');
        $this->session->set_userdata('chat_active', $id);
    }

    private function get_chat_message(){
        $result = array();
        $result['data'] = array();
        $last_id = 0;
        $all_id = array();
        $order = "locked ASC, update_date DESC";
        $chat = $this->chat->get_data("*", null, null, 0, $order);
        $active = $this->session->userdata('chat_active');
        foreach ($chat as $key => $val) {
            array_push($all_id, $val->id);
            if (empty($active)) {
                if ($key == 0) {
                    $this->session->set_userdata('chat_active', $val->id);
                    $active = $val->id;
                }
            }
            if (!empty($last_id)) {
                if ($last_id < $val->id) {
                    $last_id = $val->id;
                }
            } else {
                $last_id = $val->id;
            }
            $message = array(
                "id" => $val->id,
                "name" => $val->name,
                "email" => $val->email,
                "phone" => $val->phone,
                "insert_date" => $val->insert_date,
                "update_date" => $val->update_date,
                "locked" => $val->locked
            );
            $message['message'] = $this->message->get_data("*", array("chat_id" => $val->id));
            array_push($result['data'], $message);
        }
        $result['active'] = $active;
        $result['all_id'] = implode("@", $all_id);
        $result['last_id'] = $last_id;
        return $result;
    }

    public function check_locked(){
        $where = array("locked" => 1);
        $chat = $this->chat->get_data("*", $where);
        $result = array();
        foreach ($chat as $v) {
            array_push($result, $v->id);
        }
        echo json_encode($result);
    }

    public function check_new_chat(){
        $last_id = $this->input->post('last_id');
        $all_id = $this->input->post('all_id');
        $where = "id > $last_id";
        $chat = $this->chat->get_data("*", $where, null, 0, "update_date DESC");
        $result = array();
        $result['data'] = array();
        $active = $this->session->userdata('chat_active');
        foreach ($chat as $val) {
            if (empty($active)) {
                $active = $val->id;
            }
            if (empty($all_id)) {
                $all_id = $val->id;
            } else {
                $all_id .= "@".$val->id;
            }
            if ($last_id < $val->id) {
                $last_id = $val->id;
            }
            $message = array(
                "id" => $val->id,
                "name" => $val->name,
                "email" => $val->email,
                "phone" => $val->phone,
                "insert_date" => $val->insert_date,
                "update_date" => $val->update_date,
                "locked" => $val->locked
            );
            array_push($result['data'], $message);
        }
        $this->session->set_userdata('chat_active', $active);
        $result['active'] = $active;
        $result['last_id'] = $last_id;
        $result['all_id'] = $all_id;
        echo json_encode($result);
    }

    public function check_new_message(){
        $last_id = $this->input->post('last_id');
        $where = "id > $last_id";
        $message = $this->message->get_data("*", $where);
        $result = array();
        $result['data'] = array();
        foreach ($message as $row) {
            if ($last_id < $row->id) {
                $last_id = $row->id;
            }
            array_push($result['data'], array(
                "id" => $row->id,
                "chat_id" => $row->chat_id,
                "message" => $row->message,
                "admin_id" => $row->admin_id,
                "name" => $row->name,
                "datetime" => $row->datetime
            ));
        }
        $result['last_id'] = $last_id;
        echo json_encode($result);
    }

    public function send_message(){
        $id = $this->input->post('id');
        $message = $this->input->post('message');
        $admin_id = $this->session->userdata('sess-id');

        $data = array(
            "chat_id" => $id,
            "message" => $message,
            "admin_id" => $admin_id,
            "datetime" => date("Y-m-d H:i:s")
        );
        $insert = $this->message->add_data($data);
        $value = array("update_date" => date("Y-m-d H:i:s"));
        $this->chat->edit_data($value, array("id" => $id));
        echo "OK";
    }

    public function lock_chat(){
        $id = $this->input->post('id');

        $value = array("locked" => 1);
        $this->chat->edit_data($value, array("id" => $id));
    }

}

