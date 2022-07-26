<div id="main">

    <div class="col-12 col-lg-3">
        <div class="card">
            <div class="card-body py-4 px-6">
                <div class="d-flex align-items-center">
                    <div class="avatar avatar-xl">
                        <img src="assets/images/faces/1.jpg" alt="Face 1">
                    </div>
                    <div class="ms-3 name">
                        <h4 class="text-muted font-semibold">Selamat Datang,</h4>
                        <h3 class="font-extrabold mb-0">Admin</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-content">
        <section class="row">
            <div class="col-12 col-lg-12">
                <div class="row">
                    <div class="col-6 col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body px-0 py-4">
                                <div class="row">
                                    <div class="col-md-3 py-2">
                                        <div class="stats-icon purple">
                                            <i class="iconly-boldShow"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h4 class="text-muted font-semibold">Data Hama</h4>
                                        <h3 class="font-extrabold mb-0"><?= $hp->total; ?></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body px-0 py-4">
                                <div class="row">
                                    <div class="col-md-4 py-2">
                                        <div class="stats-icon blue">
                                            <i class="iconly-boldProfile"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h4 class="text-muted font-semibold">Data Gejala</h4>
                                        <h3 class="font-extrabold mb-0"><?= $gejala->total; ?></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body px-0 py-4">
                                <div class="row">
                                    <div class="col-md-4 py-2">
                                        <div class="stats-icon green">
                                            <i class="iconly-boldAdd-User"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h4 class="text-muted font-semibold">Basis Pengetahuan</h4>
                                        <h3 class="font-extrabold mb-0"><?= $bp->total; ?></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>