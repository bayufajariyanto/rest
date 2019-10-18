<?php

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Klasemen extends REST_Controller
{

    function __construct($config = 'rest')
    {
        parent::__construct($config);
        $this->load->database();
        $this->load->model('Klasemen_model', 'klasemen');
    }

    public function index_get()
    {
        $id = $this->get('id');
        if ($id === null) {
            $klasemen = $this->klasemen->getKlasemen();
        } else {

            $klasemen = $this->klasemen->getKlasemen($id);
        }
        if ($klasemen) {
            $this->response([
                'status' => true,
                'data' => $klasemen
            ], REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => false,
                'message' => 'id not found'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
        // $id = $this->get('id');
        // if ($id == '') {
        //     $klasemen = $this->db->get('klasemen')->result();
        // } else {
        //     $this->db->where('id', $id);
        //     $klasemen = $this->db->get('klasemen')->result();
        // }
        // $this->response($klasemen, 200);
    }

    public function index_delete()
    {
        $id = $this->delete('id');

        if ($id === null) {
            $this->response([
                'status' => false,
                'message' => 'provide an id'
            ], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            if ($this->klasemen->deleteKlasemen($id) > 0) {
                // ok
                $this->response([
                    'status' => true,
                    'id' => $id,
                    'message' => 'deleted.'
                ], REST_Controller::HTTP_NO_CONTENT);
            } else {
                //  id not found
                $this->response([
                    'status' => false,
                    'message' => 'id not found'
                ], REST_Controller::HTTP_BAD_REQUEST);
            }
        }
    }
}
