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
                    <h3>Data Basis Pengetahuan</h3>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a class="textcolor" href="<?= base_url('Dashboard'); ?>">Dashboard</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Data Basis Pengetahuan</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>

        <!-- Basic Tables start -->
        <section class="section">
            <div class="card">
                <div class="card-header">
                    Tabel Data Basis Pengetahuan
                    <a style="float: right;" href="<?= base_url('BasisPengetahuan/tambahBP'); ?>" class="btn btn-success"><b>Tambah Data</b></a>
                </div>
                <div class="card-body">
                    <?= $this->session->flashdata('message'); ?>
                    <table class="table" id="table1">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama</th>
                                <th>Gejala</th>
                                <th>Nilai MB</th>
                                <th>Nilai MD</th>
                                <th>Nilai CF</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1;
                            foreach ($data as $bp) : ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= $bp->nama_hama; ?></td>
                                    <td><?= word_limiter($bp->nama_gejala, 4); ?></td>
                                    <td><?= $bp->nilai_mb; ?></td>
                                    <td><?= $bp->nilai_md; ?></td>
                                    <td><?= $bp->nilai_cf; ?></td>
                                    <td>
                                        <a href="<?= base_url('BasisPengetahuan/editBP/' . $bp->kode_pengetahuan); ?>" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit Data"><i class="fa fa-edit"></i></a>
                                        <!-- <a href="<?= base_url('BasisPengetahuan/detailBP/' . $bp->kode_pengetahuan); ?>" class="btn btn-primary" data-bs-toggle="tooltip" data-bs-placement="top" title="Detail Data"><i class="fa fa-eye"></i></a> -->
                                        <span data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus Data">
                                            <a onclick="confirm_modal('<?= base_url('BasisPengetahuan/deleteBP/' . $bp->kode_pengetahuan); ?>')" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#hapus"><i class="fa fa-trash"></i></a>
                                        </span>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!-- Basic Tables end -->
    </div>

    <!--Danger theme Modal -->
    <div class="modal fade text-left" id="hapus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel120" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h5 class="modal-title white" id="myModalLabel120">Apakah Anda yakin mau menghapus Data Basis Pengetahuan?
                    </h5>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <i data-feather="x"></i>
                    </button>
                </div>
                <div class="modal-body">
                    Klik hapus jika anda yakin
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light-secondary" data-bs-dismiss="modal">
                        <i class="bx bx-x d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Kembali</span>
                    </button>
                    <a href="" class="btn btn-danger ml-1" id="delete_link">
                        <i class="bx bx-check d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Hapus</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function confirm_modal(delete_url) {
            console.log('delete_url');
            $('#hapus').modal('show', {
                backdrop: 'static'
            });
            document.getElementById('delete_link').setAttribute('href', delete_url);
        }
    </script>