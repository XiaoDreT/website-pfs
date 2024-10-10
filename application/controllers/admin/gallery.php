<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Gallery
 *
 * @author hunter.nainggolan
 *         @date May 18th, 2015
 */
class Gallery extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->is_admin_login();
        $this->page_dir = 'admin/gallery/';
        $this->data ['html_link'] = $this->get_config('app_admin_link', TRUE);
        $this->data ['html_script'] = $this->get_config('app_admin_script', TRUE);
        $this->layout_dir = 'admin/layout/';
        $this->data['menu'] = 'gallery';
        $this->load->model('gallery_model', 'm_gallery');
        $this->data['active_menu'] = 'gallery';
    }

    function index() {
        $this->data ['page_icon'] = 'icomoon-icon-list';
        $this->data ['page_title'] = 'Image List';
        $this->do_upload();
        $this->data ['list_image'] = $this->m_gallery->get_data(null, array('type' => 'normal'), null, null, 'id DESC');
        $this->data ['page'] = $this->load->view($this->get_page(), $this->data, true);
        $this->render();
    }

    function do_upload() {
        if ($this->input->post('upload')) {
            $this->form_validation->set_error_delimiters("<li>", "</li>");
            $this->form_validation->set_rules('tx_caption', 'Image Caption', 'trim|xss_clean|required');
            if ($this->form_validation->run()) {
                $config = array(
                    'upload_path' => UPLOAD_PATH_IMG,
                    'allowed_types' => 'jpeg|jpg|png',
                    'overwrite' => true,
                    'max_size' => '2048',
                    'max_width' => '1920',
                    'max_height' => '1200',
                    'remove_spaces' => true
                );
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('uploadimage')) {
                    $vars ['upload'] = $this->upload->data();
                    $info = pathinfo($_FILES ['uploadimage'] ['name']);
                    $rawname = date('ymdHis');
                    $filename = $rawname . '.' . $info ['extension'];
                    rename($vars ['upload'] ['full_path'], $vars ['upload'] ['file_path'] . $filename);
                    $image_uploaded_path = IMG_UPLOADED . $filename;
                    $this->data['filename'] = $filename;

                    $this->data ['img_target'] = "<img id='crop_image' src='{$image_uploaded_path}' rel='{$rawname}' ext='.{$info['extension']}' />";

                    if (!$this->m_gallery->add_data(array('caption' => $this->input->post('tx_caption'), 'file' => $filename, 'upload_date' => date('Y-m-d H:i:s')))) {
                        $this->data['error_messsages'] = get_messages(wrap_text('Failed to insert data'));
                    } else {
                        $this->data['error_message'] = get_messages('Image berhasl di Upload');
                    }
                } else {
                    $this->data ['error_messages'] = $this->upload->display_errors() ? get_messages(wrap_text($this->upload->display_errors())) : null;
                }
                unset($config);
            } else {
                $this->data ['error_messages'] = get_messages(wrap_text(validation_errors()));
            }
        }
    }

    function crop() {
        if ($this->input->post()) {
            $targ_w = 747;
            $targ_h = 498;
            $jpeg_quality = 100; // 0-100
            $png_quality = 6; // 0-9

            if (!isset($_POST['x']) || !is_numeric($_POST['x'])) {
                die('Please select a crop area.');
            }
            $filename = $this->input->post('filename');
            $src = UPLOAD_PATH_IMG . DIRECTORY_SEPARATOR . $filename;
            $info = getimagesize($src);
            $extension = image_type_to_extension($info[2]);
            if ($extension == '.png') {
                $img_r = imagecreatefrompng($src);
                echo "1";
            } else {
                echo "2";
                $img_r = imagecreatefromjpeg($src);
            }
            // echo var_dump($img_r);die();
            $dst_r = ImageCreateTrueColor($targ_w, $targ_h);
            imagecopyresampled($dst_r, $img_r, 0, 0, $_POST['x'], $_POST['y'], $targ_w, $targ_h, $_POST['w'], $_POST['h']);
            if ($extension == '.png') {
                imagepng($dst_r, UPLOAD_PATH_MAIN . DIRECTORY_SEPARATOR . $filename, $png_quality); 
                // NULL will output the image directly
            } else {
                imagejpeg($dst_r, UPLOAD_PATH_MAIN . DIRECTORY_SEPARATOR . $filename, $jpeg_quality); // NULL will output the image directly
            }
			unlink($src);
            $config = array(
                'image_library' => 'GD2',
                'source_image' => UPLOAD_PATH_MAIN . DIRECTORY_SEPARATOR . $filename,
                'maintain_ratio' => false,
                'quality' => '90',
                'new_image' => UPLOAD_PATH_THUMBS . DIRECTORY_SEPARATOR . $filename,
                'width' => 361,
                'height' => 241
            );
            $this->load->library('image_lib', $config);
            $this->image_lib->resize();
            redirect(site_url('admin/gallery'));
        }
    }

    function catalogue() {
        $this->data ['page_icon'] = 'icomoon-icon-list';
        $this->data ['page_title'] = 'Catalogue Image List';
        $this->do_upload_catalogue();
        $this->data ['list_image'] = $this->m_gallery->get_data(null, array('type' => 'catalogue'), null, null, 'id DESC');
        $this->data ['page'] = $this->load->view($this->get_page('catalogue'), $this->data, true);
        $this->render();
    }

    function do_upload_catalogue() {
        if ($this->input->post('upload')) {
            $this->form_validation->set_error_delimiters("<li>", "</li>");
            $this->form_validation->set_rules('tx_caption', 'Image Caption', 'trim|xss_clean|required');
            if ($this->form_validation->run()) {
                $config = array(
                    'upload_path' => UPLOAD_PATH_IMG,
                    'allowed_types' => 'jpeg|jpg|png',
                    'overwrite' => true,
                    'max_size' => '2048',
                    'max_width' => '1920',
                    'max_height' => '1200',
                    'remove_spaces' => true
                );

                $this->load->library('upload', $config);
                if ($this->upload->do_upload('uploadimage')) {
                    $vars ['upload'] = $this->upload->data();
                    $info = pathinfo($_FILES ['uploadimage'] ['name']);
                    $rawname = date('ymdHis');
                    $filename = $rawname . '.' . $info ['extension'];
                    rename($vars ['upload'] ['full_path'], $vars ['upload'] ['file_path'] . $filename);
                    $image_uploaded_path = IMG_UPLOADED . $filename;
                    $this->data['filename'] = $filename;

                    $this->data ['img_target'] = "<img id='crop_image' src='{$image_uploaded_path}' rel='{$rawname}' ext='.{$info['extension']}' /><br><br>";

                    if (!$this->m_gallery->add_data(array('caption' => $this->input->post('tx_caption'), 'file' => $filename, 'upload_date' => date('Y-m-d H:i:s'), 'type' => 'catalogue'))) {
                        $this->data['error_messsages'] = get_messages(wrap_text('Failed to insert data'));
                    } else {
                        $this->data['error_message'] = get_messages('Image berhasl di Upload');
                    }
                } else {
                    $this->data ['error_messages'] = $this->upload->display_errors() ? get_messages(wrap_text($this->upload->display_errors())) : null;
                }
                unset($config);
            } else {
                $this->data ['error_messages'] = get_messages(wrap_text(validation_errors()));
            }
        }
    }

    function crop_catalogue() {
        if ($this->input->post()) {
            $targ_w = 525;
            $targ_h = 525;
            $jpeg_quality = 100; // 0-100
            $png_quality = 6; // 0-9

            if (!isset($_POST['x']) || !is_numeric($_POST['x'])) {
                die('Please select a crop area.');
            }
            $filename = $this->input->post('filename');
            $src = UPLOAD_PATH_IMG . DIRECTORY_SEPARATOR . $filename;
            $info = getimagesize($src);
            $extension = image_type_to_extension($info[2]);
            if ($extension == '.png') {
                $img_r = imagecreatefrompng($src);
            } else {
                $img_r = imagecreatefromjpeg($src);
            }
            $dst_r = ImageCreateTrueColor($targ_w, $targ_h);
            imagecopyresampled($dst_r, $img_r, 0, 0, $_POST['x'], $_POST['y'], $targ_w, $targ_h, $_POST['w'], $_POST['h']);
            if ($extension == '.png') {
                imagepng($dst_r, UPLOAD_PATH_MAIN . DIRECTORY_SEPARATOR . $filename, $png_quality); // NULL will output the image directly
            } else {
                imagejpeg($dst_r, UPLOAD_PATH_MAIN . DIRECTORY_SEPARATOR . $filename, $jpeg_quality); // NULL will output the image directly
            }
			unlink($src);
            $config = array(
                'image_library' => 'GD2',
                'source_image' => UPLOAD_PATH_MAIN . DIRECTORY_SEPARATOR . $filename,
                'maintain_ratio' => true,
                'quality' => '90',
                'new_image' => UPLOAD_PATH_THUMBS . DIRECTORY_SEPARATOR . $filename,
                'width' => 525,
                'height' => 525
            );
            $this->load->library('image_lib', $config);
            $this->image_lib->resize();
            redirect(site_url('admin/gallery/catalogue'));
        }
    }

    function logo() {
        $this->data ['page_icon'] = 'icomoon-icon-list';
        $this->data ['page_title'] = 'Logos Image List';
        $this->data ['list_image'] = $this->m_gallery->get_data(null, array('type' => 'logo'), null, null, 'id DESC');
        $error = $this->session->flashdata('error_messages');
        if (!empty($error)) {
        	$this->data ['error_messages'] = $error;
        }
        $this->data ['page'] = $this->load->view($this->get_page('logo'), $this->data, true);
        $this->render();
    }

    function do_upload_logo() {
        if ($this->input->post('upload')) {
            $this->form_validation->set_error_delimiters("<li>", "</li>");
            $this->form_validation->set_rules('tx_caption', 'Image Caption', 'trim|xss_clean|required');
            if ($this->form_validation->run()) {
                $config = array(
                    'upload_path' => UPLOAD_PATH_MAIN,
                    'allowed_types' => 'jpeg|jpg|png',
                    'overwrite' => true,
                    'max_size' => '2048',
                    'max_width' => '1920',
                    'max_height' => '1200',
                    'remove_spaces' => true
                );

                $this->load->library('upload', $config);
                if ($this->upload->do_upload('uploadimage')) {
                    $vars ['upload'] = $this->upload->data();
                    $info = pathinfo($_FILES ['uploadimage'] ['name']);
                    $rawname = date('ymdHis');
                    $filename = $rawname . '.' . $info ['extension'];
                    rename($vars ['upload'] ['full_path'], $vars ['upload'] ['file_path'] . $filename);
                    $image_uploaded_path = IMG_UPLOADED . $filename;

                    if (!$this->m_gallery->add_data(array('caption' => $this->input->post('tx_caption'), 'file' => $filename, 'upload_date' => date('Y-m-d H:i:s'), 'type' => 'logo'))) {
                        $this->session->set_flashdata('error_messages', get_messages(wrap_text('Failed to insert data')));
                        redirect(site_url('admin/gallery/logo'));
                    } else {
                        $this->session->set_flashdata('error_messages', get_messages('Image berhasil di Upload'));
                        redirect(site_url('admin/gallery/logo'));
                    }
                } else {
                    $this->data['error_messages'] = $this->upload->display_errors() ? get_messages(wrap_text($this->upload->display_errors())) : "";
                    $this->session->set_flashdata('error_messages', $this->data['error_messages']);
                    redirect(site_url('admin/gallery/logo'));
                }
            } else {
                $this->data ['error_messages'] = get_messages(wrap_text(validation_errors()));
                $this->session->set_flashdata('error_messages', $this->data['error_messages']);
                redirect(site_url('admin/gallery/logo'));
            }
        }
    }

    function check_gd_library() {
        echo "<div style='text-align:center; border:1px solid #ccc; margin:10px auto; width: 50%;padding: 5px;-moz-border-radius:5px;border-radius:5px;-webkit-border-radius:5px;'>";
        if (extension_loaded('gd') && function_exists('gd_info')) {
            echo "PHP GD library is installed on your web server<br />";
            $gdinfo = gd_info();
            if ($gdinfo ['FreeType Support'])
                echo 'FreeType Support Enabled';
            else
                echo 'FreeType Support Disabled';
        } else {
            echo "PHP GD library is NOT installed on your web server";
        }
        echo "</div>";
        phpinfo();
    }

    function delete($i = 1) {
        $id = $this->uri->segment(5);
        $file = $this->m_gallery->get_data('file', array('id' => $id), null, null, null, null, 'row');
        if (empty($file)) {
            redirect(site_url('admin/gallery'));
        }
        $this->m_gallery->delete_data(array('id' => $id));
        //$filename = $file->path;
        //unlink(UPLOAD_PATH_MAIN . DIRECTORY_SEPARATOR . $filename);
        //unlink(UPLOAD_PATH_THUMBS . DIRECTORY_SEPARATOR . $filename);
        if ($i == 1) {
            redirect(site_url('admin/gallery'));
        } else if ($i == 2) {
            redirect(site_url('admin/gallery/catalogue'));
        } else {
            redirect(site_url('admin/gallery/logo'));
        }
    }
    

}

/**
 * End of file home.php
 * Location : ./application/controllers/home.php
 */
