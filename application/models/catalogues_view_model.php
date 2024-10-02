<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Catalogues_view_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->set_table('catalogues');
        $this->arr_id = '';
        $this->_view = 'catalogues_view';
    }

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

    public function create_unique_slug($title) {
        $slug = url_title($title, 'dash', true);

        // Check ke unikannya
        $count = $this->db->where('slug', $slug)
                          ->count_all_results('catalogues');

        // Jika slug sudah ada, tambahkan angka untuk membuatnya unik
        if ($count > 0) {
            $slug = $this->make_unique_slug($slug, $count);
        }

        return $slug;
    }

    private function make_unique_slug($slug, $count) {
        return $slug . '-' . $count;
    }

}

/**
 * End of file article_model.php
 * Location: ./application/models/article_model.php
 */