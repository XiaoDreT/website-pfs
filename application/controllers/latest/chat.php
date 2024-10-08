<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Chat extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('chat_model', 'chat');
        $this->load->model('message_model', 'message');
    }

    public function check_livechat(){
        $result = array();
        if ($this->session->userdata('chat_id')) {
            $result['available'] = 1;
            $id = $this->session->userdata('chat_id');
            $chat = $this->chat->get_data("*", array("id" => $id), null, null, null, null, "row");
            if ($chat->locked == 1) {
                $result['locked'] = 1;
                $this->session->unset_userdata("chat_id");
                $this->session->unset_userdata("name");
            } else {
                $last_id = $this->input->post('last_id');
                $result['locked'] = 0;
                $result['name'] = $this->session->userdata("name");
                $where = "chat_id = $id AND id > $last_id";
                $result['messages'] = $this->message->get_data("*", $where);
                $result['count'] = count($result['messages']);
            }
        } else {
            $result['available'] = 0;
        }
        echo json_encode($result);
    }

    public function save_chat(){
        $name = $this->input->post('name');
        // $email = $this->input->post('email');
        $phone = $this->input->post('phone');
        $message = $this->input->post('message');

        $data = array(
            "name" => $name,
            "phone" => $phone,
            "insert_date" => date("Y-m-d H:i:s"),
            "update_date" => date("Y-m-d H:i:s")
        );

        $insert = $this->chat->add_data($data);
        if (!empty($message)) {
            $value = array(
                "chat_id" => $insert,
                "message" => $message,
                "datetime" => date("Y-m-d H:i:s")
            );
            $this->message->add_data($value);
        }
        $session = array(
            "chat_id" => $insert,
            "name" => $name
        );
        $this->session->set_userdata($session);
        echo "OK";
    }

    public function close_chat(){
        $id = $this->session->userdata("chat_id");

        $value = array("locked" => 1);

        $this->chat->edit_data($value, array("id" => $id));
        $this->session->unset_userdata('chat_id');
        $this->session->unset_userdata('name');
        echo "OK";
    }

    public function send_message(){
        $id = $this->session->userdata("chat_id");
        $message = $this->input->post('message');

        $data = array(
            "chat_id" => $id,
            "message" => $message,
            "datetime" => date("Y-m-d H:i:s")
        );

        $this->message->add_data($data);

        $value = array("update_date" => date("Y-m-d H:i:s"));
        $this->chat->edit_data($value, array("id" => $id));
    }

    public function tes(){
        echo $this->session->userdata("name");
    }

}
