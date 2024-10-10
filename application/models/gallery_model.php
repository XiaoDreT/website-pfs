<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Class Gallery_model
 * @author Lisman Tua Sihotang <lisman.sihotang@gmail.com>
 * @date 15 April 2015
 */
class Gallery_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->_table = 'gallery';
    }

    /**
     * function add_data
     * @access public
     * 
     * @param array $data  
     * @return boolean
     */
    public function add_data($data) {
        $this->trans_begin();
        $this->insert($data);
        $this->insert_id = $this->get_insert_id();
        if ($this->trans_status()) {
            $this->trans_commit();
            return true;
        } else {
            $this->trans_rollback();
            return false;
        }
    }
       /**
     * delete_data
     * to delete data from Mitra table
     * @author bambang.adrian
     * @date 14 June 2012
     * @access public
     * 
     * @param array $where
     * @return boolean
     */
    public function delete_data($where = null) {
        $this->trans_begin();
        $this->delete($where);
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
 * End of file mitra_model.php
 * Location: ./application/models/mitra_model.php
 */