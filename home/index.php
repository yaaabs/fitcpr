<?php
if(!defined('DB_SERVER')){
    include "../initialize.php";
}
?>
<style>
    @media (max-width: 768px) {
        .content.py-3 {
            padding-top: 1rem !important;
            padding-bottom: 1rem !important;
        }
        
        h3 {
            font-size: 1.5rem;
            text-align: center;
        }
    }
    
    @media (max-width: 576px) {
        .content.py-3 {
            padding-top: 0.5rem !important;
            padding-bottom: 0.5rem !important;
        }
        
        h3 {
            font-size: 1.25rem;
        }
    }
</style>
<div class="content py-3">
    <div class="container">
        <h3>Welcome to Home Page</h3>
    </div>
</div>
