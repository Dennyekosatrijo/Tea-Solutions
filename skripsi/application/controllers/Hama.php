<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Hama extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_hama');
        cek_login();
    }
    public function index()
    {
        $data['data'] = $this->M_hama->tampilHama()->result();
        $data['title'] = 'Data Hama Tanaman Teh';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('hama/dataHama', $data);
        $this->load->view('templates/footer', $data);
    }

    public function tambahHama()
    {
        $data['data'] = $this->M_hama->kode();
        $data['title'] = 'Data Hama Tanaman Teh';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('hama/tambahHama', $data);
        $this->load->view('templates/footer', $data);
    }

    public function simpanHama()
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);

        if ($this->form_validation->run() == false) {
            $this->tambahHama();
        } else {
            $kode = $this->input->post('kode');
            $nama = $this->input->post('nama');
            $gambar = $_FILES['gambar']['name'];

            $config['upload_path']      =    './assets/images/teh/';
            $config['allowed_types']    =    'jpg|jpeg|png';
            $config['max_size']         =    10000;

            $this->load->library('upload', $config);

            if ($gambar) {
                if ($this->upload->do_upload('gambar')) {

                    $data = [
                        'kode_hama' => $kode,
                        'nama_hama' => $nama,
                        'gambar' => preg_replace("/\s+/", "_", $gambar),
                    ];

                    $tambah = $this->M_hama->tambahHama($data);

                    if ($tambah) {
                        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil ditambah</div>');
                        redirect('Hama');
                    } else {
                        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data tidak berhasil ditambah</div>');
                        redirect('Hama');
                    }
                } else {
                    $error = array('error' => $this->upload->display_errors());
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gambar tidak sesuai format</div>');
                    redirect('Hama', $error);
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data Gagal Ditambahkan, Harap Mengupload Gambar!</div>');
                redirect('Hama');
            }
        }
    }

    public function editHama($id)
    {
        $data['edit'] = $this->M_hama->tampilEditHama($id)->row();
        $data['title'] = 'Data Hama Tanaman Teh';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('hama/editHama', $data);
        $this->load->view('templates/footer', $data);
    }

    public function simpanEditHama($id)
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);

        if ($this->form_validation->run() == false) {
            $this->editHama($id);
        } else {
            $nama = $this->input->post('nama');
            $gambar = $_FILES['gambar']['name'];

            $config['upload_path']      =    './assets/images/teh/';
            $config['allowed_types']    =    'jpg|jpeg|png';
            $config['max_size']         =    10000;

            $this->load->library('upload', $config);

            if ($gambar) {
                if ($this->upload->do_upload('gambar')) {

                    $data = [
                        'nama_hama' => $nama,
                        'gambar' => preg_replace("/\s+/", "_", $gambar),
                    ];

                    $update = $this->M_hama->updateHama($data, $id);

                    if ($update) {
                        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil diupdate</div>');
                        redirect('Hama');
                    } else {
                        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data tidak berhasil diupdate</div>');
                        redirect('Hama');
                    }
                } else {
                    $error = array('error' => $this->upload->display_errors());
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gambar tidak sesuai format</div>');
                    redirect('Hama', $error);
                }
            } else {
                $data = [
                    'nama_hama' => $nama,
                ];

                $update = $this->M_hama->updateHama($data, $id);

                if ($update) {
                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil diupdate</div>');
                    redirect('Hama');
                } else {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data tidak berhasil diupdate</div>');
                    redirect('Hama');
                }
            }
        }
    }

    public function detailHama($id)
    {
        $data['detail'] = $this->M_hama->tampilEditHama($id)->row();
        $data['title'] = 'Data Hama Tanaman Teh';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('hama/detailHama', $data);
        $this->load->view('templates/footer', $data);
    }

    public function deleteHama($id)
    {
        $delete = $this->M_hama->deleteHama($id);
        if ($delete) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil dihapus</div>');
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data gagal dihapus</div>');
        }
        redirect('Hama');
    }
}
