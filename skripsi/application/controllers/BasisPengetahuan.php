<?php
defined('BASEPATH') or exit('No direct script access allowed');

class BasisPengetahuan extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_basispengetahuan');
        cek_login();
    }
    public function index()
    {
        $data['data'] = $this->M_basispengetahuan->tampilBP()->result();
        $data['title'] = 'Data Basis Pengetahuan';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('basispengetahuan/dataBP', $data);
        $this->load->view('templates/footer', $data);
    }

    public function tambahBP()
    {
        $data['data'] = $this->M_basispengetahuan->kode();
        $data['tampil'] = $this->M_basispengetahuan->tampilHama()->result();
        $data['gejala'] = $this->M_basispengetahuan->tampilGejala()->result();
        $data['title'] = 'Data Basis Pengetahuan';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('basispengetahuan/tambahBP', $data);
        $this->load->view('templates/footer', $data);
    }

    public function simpanBP()
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);
        $this->form_validation->set_rules('gejala', 'Gejala', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);
        $this->form_validation->set_rules('mb', 'Mb', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);
        $this->form_validation->set_rules('md', 'Md', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);

        if ($this->form_validation->run() == false) {
            $this->tambahBP();
        } else {
            $kode = $this->input->post('kode');
            $nama = $this->input->post('nama');
            $gejala = $this->input->post('gejala');
            $mb = $this->input->post('mb');
            $md = $this->input->post('md');
            $bobotcf = $mb - $md;

            $data = [
                'kode_pengetahuan' => $kode,
                'kode_hama' => $nama,
                'kode_gejala' => $gejala,
                'nilai_mb' => $mb,
                'nilai_md' => $md,
                'nilai_cf' => $bobotcf,
            ];

            $tambah = $this->M_basispengetahuan->tambahBP($data);

            if ($tambah) {
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil ditambah</div>');
                redirect('BasisPengetahuan');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data tidak berhasil ditambah</div>');
                redirect('BasisPengetahuan');
            }
        }
    }

    public function editBP($id)
    {
        $data['edit'] = $this->M_basispengetahuan->tampilEditBP($id)->row();
        $data['tampil'] = $this->M_basispengetahuan->tampilHama()->result();
        $data['gejala'] = $this->M_basispengetahuan->tampilGejala()->result();
        $data['title'] = 'Data Basis Pengetahuan';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('basispengetahuan/editBP', $data);
        $this->load->view('templates/footer', $data);
    }

    public function simpanEditBP($id)
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);
        $this->form_validation->set_rules('gejala', 'Gejala', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);
        $this->form_validation->set_rules('mb', 'Mb', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);
        $this->form_validation->set_rules('md', 'Md', 'required|trim', [
            'required' => 'Field tidak boleh kosong'
        ]);

        if ($this->form_validation->run() == false) {
            $this->editBP($id);
        } else {
            $nama = $this->input->post('nama');
            $gejala = $this->input->post('gejala');
            $mb = $this->input->post('mb');
            $md = $this->input->post('md');
            $bobotcf = $mb - $md;

            $data = [
                'kode_hama' => $nama,
                'kode_gejala' => $gejala,
                'nilai_mb' => $mb,
                'nilai_md' => $md,
                'nilai_cf' => $bobotcf,
            ];

            $update = $this->M_basispengetahuan->updateBP($data, $id);

            if ($update) {
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil diupdate</div>');
                redirect('BasisPengetahuan');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data tidak berhasil diupdate</div>');
                redirect('BasisPengetahuan');
            }
        }
    }

    public function detailBP($id)
    {
        $data['detail'] = $this->M_basispengetahuan->tampilEditBP($id)->row();
        $data['title'] = 'Data Basis Pengetahuan';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('basispengetahuan/detailBP', $data);
        $this->load->view('templates/footer', $data);
    }

    public function deleteBP($id)
    {
        $delete = $this->M_basispengetahuan->deleteBP($id);
        if ($delete) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil dihapus</div>');
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data gagal dihapus</div>');
        }
        redirect('BasisPengetahuan');
    }
}
