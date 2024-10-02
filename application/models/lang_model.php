<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Lang_model extends MY_Model {

    function __construct() {
        parent::__construct();
        $this->_table = 'lang';
    }

}