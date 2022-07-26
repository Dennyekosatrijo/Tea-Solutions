<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class API_Teh extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
    }

    //Menampilkan data hama
    function index_get() {
        $id = $this->get('kode_hama');
        if ($id == '') {
            $hama = $this->db->get('hama')->result();
            $this->response(
                array(
                    'status' => true,
                    'message' => 'Berhasil mengambil data',
                    'data' => $hama,
                ),
                200
            );
        } else {
            $solusi = $this->db->get_where('solusi', ['kode_hama' => $id])->result_array();
            $hama = $this->db->get_where('hama', ['kode_hama' => $id])->result_array();
            $this->db->join('gejala', 'gejala.kode_gejala=basis_pengetahuan.kode_gejala');
            $pengetahuan = $this->db->get_where('basis_pengetahuan', ['kode_hama' => $id])->result_array();
            $this->response(
                array(
                    'status' => true,
                    'message' => 'Berhasil mengambil data',
                    'hama' => $hama,
                    'basis_pengetahuan' => $pengetahuan,
                    'solusi' => $solusi
                ),
                200
            );
        }
    } 
    
    function penyakit_get()
    {
        $id = $this->get('kode_hama');
        if ($id == '') {
            $hama = $this->db->get('hama')->result();

            $this->response(
                array(
                    'status' => true,
                    'message' => 'berhasil mengambil data',
                    'data' => $hama,
                ),
                200
            );
        } else {
            $solusi = $this->db->get_where("solusi", ["kode_hama" => $id])->result_array();
            $this->db->join('gejala', 'gejala.kode_gejala=basis_pengetahuan.kode_gejala');
            $pengetahuan = $this->db->get_where("basis_pengetahuan", ["kode_hama" => $id])->result_array();

            $this->response(
                array(
                    'status' => true,
                    'message' => 'berhasil mengambil data',
                    'basis_pengetahuan' => $pengetahuan,
                    'solusi' => $solusi,
                ),
                200
            );
        }
    }


    //Menampilkan data gejala 
    function gejala_get()
    {
        $id = $this->get('kode_gejala');
        if ($id == '') {
            $gejala = $this->db->get('gejala')->result();

            $this->response(
                array(
                    'status' => true,
                    'message' => 'berhasil mengambil data',
                    'gejala' => $gejala,
                ),
                200
            );
        } else {
        }
    }//Masukan function selanjutnya disini
}
?>