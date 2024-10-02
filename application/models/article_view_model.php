<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Article_view_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->_table = 'article';
        $this->_view = 'article_view';
    }

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

    function get_recent_article($limit = null, $offset = 0, $method = 'result') {
        $where = "release_date <= NOW() and status='1'";
        return $this->get_data(array('id', 'title', 'preface', 'image'), $where, $limit, $offset, 'release_date desc');
    }

    function get_article_by_keyword($word, $limit = null, $offset = 0, $method = 'result') {
        $where = "keyword LIKE '%$word%' and release_date <= NOW() and status='approved'";
        return $this->get_data(array('id', 'title', 'name', 'image', 'release_date', 'count_article', 'preface', 'keyword'), $where, $limit, $offset, 'release_date desc');
    }

    function get_search($word, $limit = null, $offset = 0, $method = 'result') {
        $where = "title LIKE '%$word%' OR keyword LIKE '%$word%' and status='1' and release_date <= NOW()";
        return $this->get_data(array('id', 'title', 'name', 'image', 'release_date', 'count_article', 'preface', 'keyword'), $where, $limit, $offset, 'release_date DESC', null, $method);
    }

    public function get_related($id = '', $keyword = '', $limit = 0) {
        $query_like = "SELECT id,slug,title,image, DATE(insert_date) rel_date FROM " . $this->_table . " WHERE id != '" . $id . "' AND status = 1 AND (";
        $keyword = extractString($keyword, ',');
        $count = count($keyword);
        for ($i = 0; $i < $count; $i ++) {
            if ($i == 0 && array_key_exists($i, $keyword)) {
                $query_like .= "keyword LIKE '%" . $keyword [$i] . "%' ";
            } elseif (array_key_exists($i, $keyword)) {
                $query_like .= "OR keyword LIKE '%" . $keyword [$i] . "%' ";
            }
        }
        $query_like .= ") ORDER BY insert_date DESC LIMIT 0," . $limit;
        $query = $this->db->query($query_like);
        return $result = $query->result();
    }

    public function create_unique_slug($title) {
        $slug = url_title($title, 'dash', true);

        // Check ke unikannya
        $count = $this->db->where('slug', $slug)
                          ->count_all_results('article');

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