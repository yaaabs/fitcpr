<?php require_once('./config.php') ?>
<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
<?php require_once('inc/header.php') ?>
<body class="hold-transition">
<script>
    start_loader();
</script>
<style>
    html, body {
        height: calc(100%) !important;
        width: calc(100%) !important;
    }

    body {
        background-image: url("<?php echo validate_image($_settings->info('cover')) ?>");
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
    }

    #login {
        display: flex;
        height: 100%;
        justify-content: center;
        align-items: center;
        width: 100%;
        padding: 15px;
    }

    #logo-img {
        height: 150px;
        width: 150px;
        object-fit: scale-down;
        border-radius: 50%;
    }

    .btn-login {
        background-color: #A7CA3B;
        color: white;
        padding: 10px;
        font-size: 18px;
    }
    
    .btn-login:hover {
        background-color: #95b833;
        color: white;
    }
    
    /* Card styling */
    .login-card {
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        width: 100%;
        max-width: 400px;
        margin: 0 auto;
        background-color: white;
    }
    
    .card-header {
        background-color: #009900;
        color: white !important;
        padding: 20px;
        border-bottom: none;
    }
    
    .card-header h4 {
        color: white !important;
        margin: 0;
        font-size: 24px;
    }
    
    .card-body {
        padding: 25px;
    }
    
    /* Form elements */
    .form-control {
        border-radius: 5px;
        padding: 12px;
        height: auto;
    }
    
    .input-group-text {
        background-color: #f8f9fa;
        border-radius: 0 5px 5px 0;
        padding-left: 15px;
        padding-right: 15px;
    }
    
    /* Links */
    .text-success {
        color: #009900 !important;
        font-weight: 600;
    }
    
    .text-primary {
        color: #0056b3 !important;
        font-weight: 600;
    }
    
    /* Responsive styles */
    @media (max-width: 576px) {
        .login-card {
            max-width: 100%;
        }
        
        .card-body {
            padding: 20px 15px;
        }
        
        .form-control, .btn {
            font-size: 16px;
        }
    }
</style>
<?php if ($_settings->chk_flashdata('success')): ?>
    <script>
        alert_toast("<?php echo $_settings->flashdata('success') ?>", 'success');
    </script>
<?php endif; ?>

<div id="login">
    <div class="login-card">
        <div class="card-header text-center">
            <h4><b>Login</b></h4>
        </div>
        <div class="card-body">
            <form id="slogin-form" action="" method="post">
                <!-- Email -->
                <div class="input-group mb-3">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <!-- Password -->
                <div class="input-group mb-3">
                    <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <!-- Login Button -->
                <div class="row">
                    <div class="col-12">
                        <button type="submit" class="btn btn-login btn-block">Login</button>
                    </div>
                </div>
            </form>
            <!-- Links -->
            <div class="text-center mt-4">
                <a href="<?= base_url ?>" class="text-success">
                    <i class="fa fa-home"></i> Go to Website
                </a>
                <p class="mt-2 mb-0">
                    <small>Don't have an account yet?
                        <a href="register.php" class="text-primary">Register Now!</a>
                    </small>
                </p>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="dist/js/adminlte.min.js"></script>
<script>
    $(document).ready(function () {
        end_loader();
        // Login Form Submission
        $('#slogin-form').submit(function (e) {
            e.preventDefault();
            let form = $(this);
            $(".pop-msg").remove();
            let alertDiv = $("<div>").addClass("alert pop-msg my-2").hide();

            start_loader();
            $.ajax({
                url: _base_url_ + "classes/Login.php?f=student_login",
                method: 'POST',
                data: form.serialize(),
                dataType: 'json',
                error: function (err) {
                    console.error(err);
                    alertDiv.text("An error occurred while logging in.").addClass("alert-danger");
                    form.prepend(alertDiv);
                    alertDiv.show('slow');
                    end_loader();
                },
                success: function (resp) {
                    if (resp.status === 'success') {
                        location.href = "./";
                    } else {
                        alertDiv.text(resp.msg || "Invalid credentials. Please try again.").addClass("alert-danger");
                        form.prepend(alertDiv);
                        alertDiv.show('slow');
                        end_loader();
                    }
                }
            });
        });
    });
</script>
</body>
</html>
