<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Mazer Admin Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/pages/auth.css">

    <style>
        .btn-primary {
            background-color: #3F9F43;
            border-color: #3F9F43;
            color: #fff
        }

        .btn-check:focus+.btn-primary,
        .btn-primary:focus,
        .btn-primary:hover {
            background-color: #348337;
            border-color: #348337;
            color: #fff
        }
    </style>
</head>

<body>
    <div id="auth">
        <div class="row h-100">
            <div class="col-lg-12 col-12">
                <div id="auth-left">
                    <center><a style="font-size: 40px; font-weight: bold; color: #3F9F43;" href="<?= base_url('Dashboard'); ?>"><img width="80px" height="80px" src="<?= base_url('assets/'); ?>images/teh/newlogo.png" alt="Logo" srcset="">Tea Solutions</a></center>
                    <center><h6 style="padding-top: 50px; color: #235925" class="auth-title">Login</h6></center>
                    <p class="auth-subtitle mb-5">
                        Masuk dengan Username dan Passoword Yang Benar Agar Bisa Mengakses Website Tea Solutions </p>
                    <?= $this->session->flashdata('message'); ?>
                    <form method="post" action="<?= base_url('auth') ?>">
                        <div class="form-group has-icon-left">
                            <div class="position-relative">
                                <input type="text" class="form-control form-control-xl" name="username" placeholder="Username" value="<?= set_value('username'); ?>">
                                <div class="form-control-icon">
                                    <i class="bi bi-person"></i>
                                </div>
                            </div>
                            <?= form_error('username', '<large class="text-danger pl-3">', '</large>'); ?>
                        </div>
                        <div class="form-group has-icon-left">
                            <div class="position-relative">
                                <input type="password" class="form-control form-control-xl" name="password" placeholder="Password" value="<?= set_value('password'); ?>">
                                <div class="form-control-icon">
                                    <i class="bi bi-shield-lock"></i>
                                </div>
                            </div>
                            <?= form_error('password', '<large class="text-danger pl-3">', '</large>'); ?>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block btn-lg shadow-lg mt-5">Login</button>
                    </form>
                </div>
            </div>
        </div>

    </div>
</body>

</html>