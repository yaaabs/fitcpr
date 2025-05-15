<?php require_once('../config.php') ?>
<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
 <?php require_once('../inc/header.php') ?>
<body class="hold-transition login-page">
  <script>
    start_loader()
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
    
    .login-page {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 15px;
        height: 100%;
    }
    
    .btn-primary {
        background-color: #A7CA3B;
        border-color: #A7CA3B;
        color: white;
        padding: 10px;
        font-size: 18px;
    }
    
    .btn-primary:hover {
        background-color: #95b833;
        border-color: #95b833;
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
    a.text-success {
        color: #009900 !important;
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

  <div class="login-card">
    <div class="card-header text-center">
        <h4><b>Admin Login</b></h4>
    </div>
    <div class="card-body">
      <form id="login-frm" action="" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="username" placeholder="Username" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password" placeholder="Password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
          </div>
        </div>
      </form>
      <div class="text-center mt-4">
        <a href="<?= base_url ?>" class="text-success">
          <i class="fa fa-home"></i> Back to Site
        </a>
      </div>
    </div>
  </div>

<!-- jQuery -->
<script src="<?= base_url ?>plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?= base_url ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url ?>dist/js/adminlte.min.js"></script>

<script>
  $(document).ready(function(){
    end_loader();
  })
</script>
</body>
</html>