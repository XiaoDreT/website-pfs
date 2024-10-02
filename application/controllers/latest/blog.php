<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->layout_dir = 'latest/layout/';
        $this->page_dir = 'latest/blog/';
        $this->load->model('article_view_model', 'article');
        $this->data['menu']['name'] = 'Blog';
        $this->data['menu']['link'] = 'blog';
    }

    public function index() {
        $page = $this->uri->segment($this->uri->total_segments(), 0);

        // if ($page == "offset" || $page == "blog") {
        //     $page = 0;
        // }
        // echo $this->uri->total_segments();die();
        $this->data ['max_rows'] = 12;
        $this->data ['numlinks'] = 2;
        $offset = get_offset($page, $this->data ['max_rows']);
        $this->data['rec_data'] = $this->article->get_data(null, array('status' => 1), $this->data ['max_rows'], $offset, 'insert_date DESC');
        $this->data['pagination'] = $this->build_pagination(BASE_URL . 'blog/', $this->uri->total_segments(), $this->article->total_rows, $this->data ['max_rows'], $this->data ['numlinks']);
        if (empty($this->data['rec_data'])) {
            redirect(site_url());
        }
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    public function read() {
        $id = $this->uri->segment(2);
        // echo $id;die;
        // $this->load->model('article_view_model', 'article');
        $this->data['rec_data'] = $this->article->get_data(null, array('id' => $id), null, null, null, null, 'row');
        if (empty($this->data['rec_data'])) {
            redirect(site_url());
        }
        $this->data['related'] = $this->article->get_related($this->data['rec_data']->id, $this->data['rec_data']->keyword, 3);
        // $this->data['related'] = $this->article->get_data("*", $this->data['rec_data']->keyword, 3);
        $this->data ['page'] = $this->load->view($this->get_page('read'), $this->data, true);
        $this->render();
    }

}
