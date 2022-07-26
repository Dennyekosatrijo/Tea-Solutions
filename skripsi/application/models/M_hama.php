<?php
class M_hama extends CI_Model
{
    public function tampilHama()
    {
        $this->db->select('*');
        $this->db->from('hama');
        $query = $this->db->get();
        return $query;
    }

    public function tampilEditHama($id)
    {
        $this->db->select('*');
        $this->db->from('hama');
        $this->db->where('kode_hama', $id);
        $query = $this->db->get();
        return $query;
    }

    public function tambahHama($data)
    {
        return $this->db->insert('hama', $data);
    }

    public function updateHama($data, $id)
    {
        return $this->db->where('kode_hama', $id)->update('hama', $data);
    }

    public function deleteHama($id)
    {
        return $this->db->where('kode_hama', $id)->delete('hama');
    }

    public function kode()
    {
        $cd = $this->db->query("SELECT MAX(RIGHT(kode_hama,2)) AS kd_max FROM hama");
        $kd = "";
        if ($cd->num_rows() > 0) {
            foreach ($cd->result() as $k) {
                $tmp = ((int)$k->kd_max) + 1;
                $kd = sprintf("%03s", $tmp);
            }
        } else {
            $kd = "001";
        }
        return "H" . $kd;
    }
}