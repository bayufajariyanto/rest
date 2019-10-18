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

    public function index_post()
    {
        $data = [
            'name' => $this->post('name'),
            'p' => $this->post('p'),
            'w' => $this->post('w'),
            'd' => $this->post('d'),
            'l' => $this->post('l'),
            'f' => $this->post('f'),
            'a' => $this->post('a'),
            'gd' => $this->post('gd'),
            'pts' => $this->post('pts')
        ];

        if ($this->klasemen->createKlasemen($data) > 0) {
            $this->response([
                'status' => true,
                'message' => 'new klasemen has been created.'
            ], REST_Controller::HTTP_CREATED);
        } else {
            $this->response([
                'status' => false,
                'message' => 'failed to create new data!'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }

    public function index_put()
    {
        $id = $this->put('id');
        $data = [
            'name' => $this->put('name'),
            'p' => $this->put('p'),
            'w' => $this->put('w'),
            'd' => $this->put('d'),
            'l' => $this->put('l'),
            'f' => $this->put('f'),
            'a' => $this->put('a'),
            'gd' => $this->put('gd'),
            'pts' => $this->put('pts')
        ];

        if ($this->klasemen->updateKlasemen($data, $id) > 0) {
            $this->response([
                'status' => true,
                'message' => 'new klasemen has been updated.'
            ], REST_Controller::HTTP_NO_CONTENT);
        } else {
            $this->response([
                'status' => false,
                'message' => 'failed to update data!'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}
