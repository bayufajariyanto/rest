<?php

class Klasemen_model extends CI_Model
{
    public function getKlasemen($id = null)
    {
        if ($id === null) {
            return $this->db->get('klasemen')->result_array();
        } else {
            return $this->db->get_where('klasemen', ['id' => $id])->result_array();
        }
    }

    public function deleteKlasemen($id)
    {
        $this->db->delete('klasemen', ['id' => $id]);
        return $this->db->affected_rows();
    }

    public function createKlasemen($data)
    {
        $this->db->insert('klasemen', $data);
        return $this->db->affected_rows();
    }

    public function updateKlasemen($data, $id)
    {
        $this->db->update('klasemen', $data, ['id' => $id]);
        return $this->db->affected_rows();
    }
}
