<?php
class M_diagnosa extends CI_Model
{
    public function getHasilHama($list_hama)
    {
        $array_hasil_hama = array();

        foreach ($list_hama as $kd_hama => $nilai) {
            // $penyakit_temp = $this->tampilHP('kode_hp', $kode_hama);
            $penyakit_temp = $this->db->get_where('hama', ['kode_hama' => $kd_hama])->row_array();
            $solusi = $this->db->get_where('solusi', ['kode_hama' => $kd_hama])->row_array();
            $hama = array(
                'kode_hama' => $penyakit_temp['kode_hama'],
                'nama_hama' => $penyakit_temp['nama_hama'],
                'gambar' => $penyakit_temp['gambar'],
                'nilai_perhitungan' => number_format($nilai * 100, 2),
                'solusi' => $solusi['solusi'],
            );

            // * menambahkan penyakit ke array penyakit
            array_push($array_hasil_hama, $hama);
        }

        return $array_hasil_hama;
    }

    public function getHasilGejala($list_gejala)
    {

        $array_hasil_gejala = array();

        foreach ($list_gejala as $kd_gejala => $id_kondisi) {
            if ($id_kondisi == 1) {
                $id_kondisi = "Sedikit Yakin";
            } elseif ($id_kondisi == 2) {
                $id_kondisi = "Cukup Yakin";
            } elseif ($id_kondisi == 3) {
                $id_kondisi = "Yakin";
            } elseif ($id_kondisi == 4) {
                $id_kondisi = "Sangat Pasti";
            }
            $gejala_temp = $this->db->get_where('gejala', ['kode_gejala' => $kd_gejala])->row_array();
            $gejala = array(
                'kode_gejala' => $gejala_temp['kode_gejala'],
                'nama_gejala' => $gejala_temp['nama_gejala'],
                'nama_kondisi' => $id_kondisi,
            );

            // * menambahkan gejala ke array gejala
            array_push($array_hasil_gejala, $gejala);
        }

        return $array_hasil_gejala;
    }
}
