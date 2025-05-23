<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<style>
    .car-cover {
        width: 10em;
    }
    .car-item .col-auto {
        max-width: calc(100% - 12em) !important;
    }
    .car-item:hover {
        transform: translate(0, -4px);
        background: #a5a5a521;
    }
    .banner-img-holder {
        height: 25vh !important;
        width: 100%;
        overflow: hidden;
    }
    .banner-img {
        object-fit: scale-down;
        height: 100%;
        width: 100%;
        transition: transform .3s ease-in;
    }
    .car-item:hover .banner-img {
        transform: scale(1.3);
    }
    .welcome-content img {
        margin: .5em;
        max-width: 100%;
        height: auto;
    }
    
    /* Remove margin/padding between sections */
    section.content {
        margin-top: 0 !important;
        padding-top: 0 !important;
    }

    .banner-cover {
        margin-bottom: 0 !important;
    }

    /* Optional: Adjust padding or margins */
    .container {
        padding-top: 0 !important;
        padding-bottom: 0 !important;
    }

    body {
        margin: 0;
        padding: 0;
    }

    /* Add a background color to the gap, if needed */
    .content-wrapper {
        background-color: #0B3612;
    }

    h1.text-center {
        font-family: 'Times New Roman';
        font-weight: bold;
    }
    
    /* Responsive styles */
    @media (max-width: 768px) {
        .col-lg-12.py-5 {
            padding-top: 2rem !important;
            padding-bottom: 2rem !important;
        }
        
        h1.text-center {
            font-size: 1.8rem;
        }
        
        .card-body {
            padding: 1rem;
        }
    }
    
    @media (max-width: 576px) {
        .col-lg-12.py-5 {
            padding-top: 1rem !important;
            padding-bottom: 1rem !important;
        }
        
        h1.text-center {
            font-size: 1.5rem;
        }
        
        .card-body {
            padding: 0.75rem;
        }
    }
</style>
<div class="col-lg-12 py-5">
    <div class="container-fluid">
        <div class="card card-outline card-warning shadow rounded-0">
            <div class="card-body rounded-0">
                <div class="container-fluid">
                    <h1 class="text-center"><b>Welcome to the FEU Tech Capstone Project Repository!</b></h1>
                    <hr>
                    <div class="welcome-content">
                        <?php include("welcome.html") ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
