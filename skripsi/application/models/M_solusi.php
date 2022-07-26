<?php
class M_solusi extends CI_Model
{
    public function tampilSolusi()
    {
        $this->db->select('hama.nama_hama, solusi.slug');
        $this->db->distinct();
        $this->db->from('solusi');
        $this->db->join('hama', 'hama.kode_hama=solusi.kode_hama');
        $query = $this->db->get();
        return $query;
    }

    public function tampilHama()
    {
        $this->db->select('*');
        $this->db->from('hama');
        $query = $this->db->get();
        return $query;
    }

    public function tampilEditSolusi($id)
    {
        $this->db->select('*');
        $this->db->from('solusi');
        $this->db->join('hama', 'hama.kode_hama=solusi.kode_hama');
        $this->db->where('solusi.slug', $id);
        $query = $this->db->get();
        return $query;
    }

    public function tambahSolusi($data)
    {
        $this->db->insert_batch('solusi', $data);
        if ($this->db->trans_status() === FALSE) {
            return "Query Failed";
        } else {
            return "bersahilsolusi";
        }
    }
     

    public function updateSolusi($data, $id)
    {
        return $this->db->where('kode_solusi', $id)->update_batch('solusi', $data);
    }

    public function deleteSolusi($id)
    {
        return $this->db->where('slug', $id)->delete('solusi');
    }

    public function kode()
    {
        $cd = $this->db->query("SELECT MAX(RIGHT(slug,2)) AS kode_max FROM solusi");
        $kd = "";
        if ($cd->num_rows() > 0) {
            foreach ($cd->result() as $k) {
                $tmp = ((int)$k->kode_max) + 1;
                $kd = sprintf("%03s", $tmp);
            }
        } else {
            $kd = "001";
        }
        return "S" . $kd;
    }
}
