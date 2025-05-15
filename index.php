<?php require_once('./config.php'); ?>
 <!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Added responsive meta tag -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Roboto+Condensed:wght@400;700&family=Roboto+Slab:wght@400;700&family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
<style>
  
  #header .site-title {
    font-family: 'Montserrat', sans-serif;
    font-weight: 700;
    font-size: 3rem;
    color: #FDB813;
    text-align: center;
}

  #header{
    height:70vh;
    width:100%;
    position:relative;
    top:-1em;
  }
  #header:before{
    content:"";
    position:absolute;
    height:100%;
    width:100%;
    background-image:url(<?= validate_image($_settings->info("cover")) ?>);
    background-size:cover;
    background-repeat:no-repeat;
    background-position: center center;
  }
  #header>div{
    position:absolute;
    height:100%;
    width:100%;
    z-index:2;
  }

  #top-Nav a.nav-link.active {
      color: #001f3f;
      font-weight: 900;
      position: relative;
  }
  #top-Nav a.nav-link.active:before {
    content: "";
    position: absolute;
    border-bottom: 2px solid #001f3f;
    width: 33.33%;
    left: 33.33%;
    bottom: 0;
  }

  #enrollment {
    background-color: #009900;
    color: white;
    border: none;
}

#enrollment:hover {
    background-color: #007a00; /* Darker green on hover */
    color: white;
}

/* Responsive styles */
@media (max-width: 991.98px) {
    #header {
        height: 60vh;
    }
    
    #header h1 {
        font-size: 3.5rem !important;
    }
    
    #enrollment {
        width: 50% !important;
    }
}

@media (max-width: 767.98px) {
    #header {
        height: 50vh;
    }
    
    #header h1 {
        font-size: 2.5rem !important;
    }
    
    #enrollment {
        width: 70% !important;
    }
    
    .welcome-content p {
        padding: 0 10px !important;
    }
}

@media (max-width: 575.98px) {
    #header {
        height: 40vh;
    }
    
    #header h1 {
        font-size: 2rem !important;
    }
    
    #enrollment {
        width: 80% !important;
        font-size: 1rem !important;
    }
    
    .col-lg-8.mx-auto.py-5 {
        padding-top: 1rem !important;
        padding-bottom: 1rem !important;
    }
    
    h1.text-center {
        font-size: 1.8rem !important;
    }
}

</style>
<?php require_once('inc/header.php') ?>
  <body class="layout-top-nav layout-fixed layout-navbar-fixed" style="height: auto;">
    <div class="wrapper">
     <?php $page = isset($_GET['page']) ? $_GET['page'] : 'home';  ?>
     <?php require_once('inc/topBarNav.php') ?>
     <?php if($_settings->chk_flashdata('success')): ?>
      <script>
        alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
      </script>
      <?php endif;?>    
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper pt-5" style="">
        <?php if($page == "home" || $page == "about_us"): ?>
          <div id="header" class="shadow mb-4">
              <div class="d-flex justify-content-center h-100 w-100 align-items-center flex-column px-3">

           <h1 style="
    font-family: 'Montserrat', sans-serif; 
    font-weight: 700; 
    font-size: 4.5rem; 
    color: #FDB813; 
    text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5); 
    text-align: center; 
    width: 100%; 
    margin: 0 auto; 
    line-height: 1.2;">
    FEU Institute of Technology: <br class="d-md-block d-none">Capstone Project Repository
</h1>

<br>
<a href="./?page=projects" 
   class="btn btn-lg rounded-pill w-25" 
   id="enrollment">
   <b>Explore Projects</b>
</a>


              </div>
          </div>
        <?php endif; ?>
        <!-- Main content -->
        <section class="content ">
          <div class="container">
            <?php 
              if(!file_exists($page.".php") && !file_exists($page."/index.php")){
                  include '404.html';
              }else{
                if(is_dir($page))
                  include $page.'/index.php';
                else
                  include $page.'.php';
              }
            ?>
          </div>
        </section>
        <!-- /.content -->
        <div class="col-lg-8 mx-auto py-5">
    <div class="container-fluid">
        <div class="card card-outline card-warning shadow rounded-0">
            <div class="card-body rounded-0 p-4">
                <div class="container-fluid">
                    <h1 class="text-center mb-4">
                        <b>FEU Tech Capstone Project Repository</b>
                    </h1>
                    <hr>
                    <div class="welcome-content">
                        <div class="welcome-section text-center py-3">
                            <p style="text-align: justify; margin: 0px 0px 15px; padding: 0px 15px;">
                              Welcome to the <b>Far Eastern University - Institute of Technology</b>, a hub of creativity, innovation, and excellence. This platform is a testament to the dedication and ingenuity of our community, where academic achievements and groundbreaking ideas come to life.
                              </p>
                              <p style="text-align: justify; margin: 0px 0px 15px; padding: 0px 15px;">
                                  Explore a diverse collection of projects and initiatives that showcase the technical expertise, research capabilities, and problem-solving skills of our students and faculty. Each endeavor reflects our unwavering commitment to academic excellence and real-world impact.
                              </p>
                              <p style="text-align: justify; margin: 0px 0px 15px; padding: 0px 15px;">
                                  Together, we celebrate a culture of <b>Innovation and Excellence</b> that drives us to shape the future through knowledge, passion, and collaboration. Join us in discovering ideas that inspire and solutions that transform.
                              </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

  <div class="modal fade" id="confirm_modal" role='dialog'>
    <div class="modal-dialog modal-md modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title">Confirmation</h5>
      </div>
      <div class="modal-body">
        <div id="delete_content"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id='confirm' onclick="">Continue</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="uni_modal" role='dialog'>
    <div class="modal-dialog modal-md modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title"></h5>
      </div>
      <div class="modal-body">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id='submit' onclick="$('#uni_modal form').submit()">Save</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
      </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="uni_modal_right" role='dialog'>
    <div class="modal-dialog modal-full-height  modal-md" role="document">
      <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span class="fa fa-arrow-right"></span>
        </button>
      </div>
      <div class="modal-body">
      </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="viewer_modal" role='dialog'>
    <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
              <button type="button" class="btn-close" data-dismiss="modal"><span class="fa fa-times"></span></button>
              <img src="" alt="">
      </div>
    </div>
  </div>
      </div>
      <!-- /.content-wrapper -->
      <?php require_once('inc/footer.php') ?>
  </body>
</html>
