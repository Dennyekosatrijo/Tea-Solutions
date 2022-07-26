<?php

class M_dashboard extends CI_model
{

    function jmlh_HP()
    {
        $this->db->select('*, COUNT(kode_hama) as total');
        $this->db->from('hama');
        $hasil = $this->db->get();
        return $hasil;
    }


    function jmlh_gejala()
    {
        $this->db->select('*, COUNT(kode_gejala) as total');
        $this->db->from('gejala');
        $hasil = $this->db->get();
        return $hasil;
    }

    function jmlh_pengetahuan()
    {
        $this->db->select('*, COUNT(kode_pengetahuan) as total');
        $this->db->from('basis_pengetahuan');
        $hasil = $this->db->get();
        return $hasil;
    }
}
