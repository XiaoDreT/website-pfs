<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Chat_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->set_table('chat_main');
    }

    public function add_data($data) {
        $this->trans_begin();
        $this->insert($data);
        $this->insert_id = $this->get_insert_id();
        if ($this->trans_status()) {
            $this->trans_commit();
            return $this->insert_id;
        } else {
            $this->trans_rollback();
            return false;
        }
    }

    public function edit_data($data, $where = null) {
        $this->trans_begin();
        $this->update($data, $where);
        if ($this->trans_status()) {
            $this->trans_commit();
            return true;
        } else {
            $this->trans_rollback();
            return false;
        }
    }

}
