<div id="main">
    <header class="mb-3">
        <a href="#" class="burger-btn d-block d-xl-none">
            <i class="bi bi-justify fs-3"></i>
        </a>
    </header>

    <div class="page-heading">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-md-6 order-md-1 order-last">
                    <h3>Tambah Data Basis Pengetahuan</h3>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a class="textcolor" href="<?= base_url('Dashboard'); ?>">Dashboard</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Tambah Data Basis Pengetahuan</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>

        <!-- Basic Vertical form layout section start -->
        <section class="section">
            <div class="card">
                <div class="card-header">
                    Form Tambah Data
                </div>
                <div class="card-body">
                <div style="background-color: #3F9F43;" class="alert alert-success alert-dismissible show fade">
                        <h4 style="color: white;"><i class="bi bi-exclamation-triangle"></i> Petunjuk Pengisian Pakar !</h4>
                        Silahkan pilih gejala yang sesuai dengan serangan hama yang ada, dan berikan <b> nilai kepastian (MB & MB) </b> dengan cakupan sebagai berikut:
                        <br>
                        <br>
                        <b>1.0</b> (Sangat Yakin) &nbsp; | &nbsp; <b>0.8</b> (Yakin) &nbsp; | &nbsp;
                        <br>
                        <b>0.6</b> (Cukup Yakin) &nbsp; | &nbsp; <b>0.4</b> (Sedikit Yakin) &nbsp; | &nbsp;
                        <br>
                        <b>0.0</b> (Tidak Yakin) &nbsp; | &nbsp;
                        <br>
                        <br>
                        <b>CF(Pakar) = MB – MD</b>
                        <br>
                        MB : Ukuran kenaikan kepercayaan (measure of increased belief) MD : Ukuran kenaikan ketidakpercayaan (measure of increased disbelief)
                        <br>
                        <br>
                        <b>Contoh:</b>
                        <br>
                        Jika kepercayaan <b>(MB)</b> anda terhadap gejala Pangkal Daun Berwarna Agak Kecoklatan untuk Hama Tungau Jingga <i>(Brevipalpus phoenicis)</i> adalah <b>0.8 (Yakin)</b>
                        Dan ketidakpercayaan <b>(MD)</b> anda terhadap gejala Pangkal Daun Berwarna Agak Kecoklatan untuk Hama Tungau Jingga <i>(Brevipalpus phoenicis)</i> adalah <b>0.4 (Sedikit Yakin)</b>
                        <br>
                        <br>
                        <b>Maka:</b>
                        <br>
                        Secara otomatis nilai untuk CF(Pakar) akan terisi otomatis, dengan mekanisme CF(Pakar) = MB – MD (0.8 - 0.4) = <b>0.4</b>
                        <br>
                        Dimana nilai bobt kepastian anda terhadap gejala Pangkal Daun Berwarna Agak Kecoklatan untuk Hama Tungau Jingga <i>(Brevipalpus phoenicis)</i> adalah <b>0.4 (Sedikit Yakin)</b>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                    <form class="form form-vertical" method="post" action="<?= base_url('BasisPengetahuan/simpanBP') ?>">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <h5>Kode</h5>
                                        <input readonly type="text" class="form-control form-control-lg" name="kode" placeholder="Kode" value="<?= $data; ?>">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <h5>Nama Hama</h5>
                                        <fieldset class="form-group">
                                            <select class="form-select form-select-lg" id="nama" name="nama">
                                                <option value="" selected disabled>Pilih Nama Hama</option>
                                                <?php foreach ($tampil as $hama) : ?>
                                                    <option value="<?= $hama->kode_hama ?>"><?= $hama->nama_hama ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                            <?= form_error('nama', '<large class="text-danger pl-3">', '</large>'); ?>
                                        </fieldset>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <h5>Gejala Hama</h5>
                                        <fieldset class="form-group">
                                            <select class="form-select form-select-lg" id="gejala" name="gejala">
                                                <option value="" selected disabled>Pilih Gejala Hama</option>
                                                <?php foreach ($gejala as $gj) : ?>
                                                    <option value="<?= $gj->kode_gejala ?>"><?= $gj->nama_gejala ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                            <?= form_error('gejala', '<large class="text-danger pl-3">', '</large>'); ?>
                                        </fieldset>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <h5>MB</h5>
                                        <input type="number" step="any" class="form-control form-control-lg" name="mb" placeholder="Nilai MB" value="<?= set_value('mb'); ?>">
                                        <?= form_error('mb', '<large class="text-danger pl-3">', '</large>'); ?>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <h5>MD</h5>
                                        <input type="number" step="any" class="form-control form-control-lg" name="md" placeholder="Nilai MD" value="<?= set_value('md'); ?>">
                                        <?= form_error('md', '<large class="text-danger pl-3">', '</large>'); ?>
                                    </div>
                                </div>
                                <div class="col-12 d-flex justify-content-end">
                                    <button type="submit" class="btn btn-success me-1 mb-1">Simpan</button>
                                    <a href="<?= base_url('BasisPengetahuan'); ?>" class="btn btn-light-secondary me-1 mb-1">Kembali</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- // Basic Vertical form layout section end -->

    </div>