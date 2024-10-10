<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Client_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->set_table('clients');
        $this->arr_id = '';
    }

    public function add_data($data) {
        $this->trans_begin();
        $this->insert($data);
        // echo "disini";
        // echo $this->insert($data); die();
        $this->insert_id = $this->get_insert_id();
        if ($this->trans_status()) {
            $this->trans_commit();
            return true;
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

    public function delete_data($where = null) {
        $this->trans_begin();
        $this->update(array("status" => "0"), $where);
        if ($this->trans_status()) {
            $this->trans_commit();
            return true;
        } else {
            $this->trans_rollback();
            return false;
        }
    }

}

/**
 * End of file article_model.php
 * Location: ./application/models/article_model.php
 */