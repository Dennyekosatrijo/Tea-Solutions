<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Solusi extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_solusi');
        cek_login();
    }
    public function index()
    {
        $data['data'] = $this->M_solusi->tampilSolusi()->result();
        $data['title'] = 'Data Solusi';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('solusi/dataSolusi', $data);
        $this->load->view('templates/footer', $data);
    }

    public function tambahSolusi()
    {
        $data['data'] = $this->M_solusi->kode();
        $data['tampil'] = $this->M_solusi->tampilHama()->result();
        $data['title'] = 'Data Solusi';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('solusi/tambahSolusi', $data);
        $this->load->view('templates/footer', $data);
    }

    public function simpanSolusi()
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);
        // $this->form_validation->set_rules('solusi', 'Solusi', 'required|trim', [
        //     'required' => 'Field tidak boleh kosong'
        // ]);

        if ($this->form_validation->run() == false) {
            $this->tambahSolusi();
        } else {
            $kode = $this->input->post('kode');
            $nama = $this->input->post('nama');
            $solusi = $this->input->post('solusi');
            $data = array();

            $i = 0;
            foreach ($solusi as $sls) {
                $i++;
                $code = $this->db->query('SELECT MAX(RIGHT(kode_solusi,2)) AS kode_max FROM solusi')->row_array();
                $tmp = ((int)$code['kode_max']) + $i;
                array_push($data, array(
                    'kode_hama' => $nama,
                    'solusi' => $sls,
                    'slug' => $kode,
                ));
            }
            $tambah = $this->M_solusi->tambahSolusi($data);

            if ($tambah == "bersahilsolusi") {
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil ditambah</div>');
                redirect('Solusi');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data tidak berhasil ditambah</div>');
                redirect('Solusi');
            }
        }
    }

    public function editSolusi($id)
    {
        $data['edit'] = $this->M_solusi->tampilEditSolusi($id)->row();
        $data['editall'] = $this->M_solusi->tampilEditSolusi($id)->result();
        $data['tampil'] = $this->M_solusi->tampilHama()->result();
        $data['title'] = 'Data Solusi';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('solusi/editSolusi', $data);
        $this->load->view('templates/footer', $data);
    }

    public function simpanEditSolusi()
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);
        // $this->form_validation->set_rules('solusi', 'Solusi', 'required|trim', [
        //     'required' => 'Field tidak boleh kosong'
        // ]);

        if ($this->form_validation->run() == false) {
            $this->editSolusi($id);
        } else {
            // $nama = $this->input->post('nama');
            $solusi = $this->input->post('solusi');
            $kode_solusi = $this->input->post('kode_solusi');
            // $data = array();
            // $data2 = array();

            // $data = [
            //     'kode_hama' => $nama,
            //     'solusi' => $solusi,
            // ];
            // $i = 0;
            $result = array();
            foreach ($kode_solusi as $key => $val) {
                $result[] = array(
                'kode_solusi' => $kode_solusi[$key],
                'solusi' => $solusi[$key]            
                );
            }
            $update = $this->db->update_batch('solusi', $result, 'kode_solusi');
            // foreach ($kode_solusi as $s) {
            //     // $i++;
            //     // $code = $this->db->query('SELECT MAX(RIGHT(kode_solusi,2)) AS kode_max FROM solusi')->row_array();
            //     // $tmp = ((int)$code['kode_max']) + $i;
            //     array_push($data, array(
            //         // 'kode_hama' => $nama,
            //         'kode_solusi' => $s,
            //     ));
            // }

            // foreach ($solusi as $sa) {
            //     array_push($data2, array(
            //         'solusi' => $sa,
            //     ));
            // }
            // $update = $this->M_solusi->updateSolusi($data, $data2);

            if ($update) {
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil diupdate</div>');
                redirect('Solusi');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data tidak berhasil diupdate</div>');
                redirect('Solusi');
            }
        }
    }

    public function detailSolusi($id)
    {
        $data['detail'] = $this->M_solusi->tampilEditSolusi($id)->row();
        $data['detil'] = $this->M_solusi->tampilEditSolusi($id)->result();
        $data['title'] = 'Data Solusi';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('solusi/detailSolusi', $data);
        $this->load->view('templates/footer', $data);
    }

    public function deleteSolusi($id)
    {
        $delete = $this->M_solusi->deleteSolusi($id);
        if ($delete) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil dihapus</div>');
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data gagal dihapus</div>');
        }
        redirect('Solusi');
    }
}
