<?php
// view_details.php
require_once('../config.php');

if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT a.*, g.name as group_name, c.name as curriculum, CONCAT(s.lastname,', ',s.firstname,' ',s.middlename) as student_name FROM archive_list a LEFT JOIN group_list g ON a.group_id = g.id LEFT JOIN curriculum_list c ON a.curriculum_id = c.id LEFT JOIN student_list s ON a.student_id = s.id WHERE a.id = '{$_GET['id']}'");
    if($qry->num_rows > 0){
        foreach($qry->fetch_array() as $k => $v){
            if(!is_numeric($k)) $$k = $v;
        }
    } else {
        echo "<script>alert('Archive details not found.'); location.replace('./');</script>";
    }
} else {
    echo "<script>alert('Invalid Archive ID.'); location.replace('./');</script>";
}
?>

<style>
    .archive-img {
        object-fit: scale-down;
        object-position: center center;
        height: 300px;
        width: calc(100%);
    }
</style>
<div class="content py-4">
    <div class="card card-outline card-warning shadow rounded-0">
        <div class="card-header rounded-0">
            <h5 class="card-title"><b>Archive Details - <?= isset($archive_code) ? $archive_code : '' ?></b></h5>
        </div>
        <div class="card-body rounded-0">
            <div class="container-fluid">
                <div class="col-md-12">
                    <dl>
                        <dt class="text-navy">Capstone Project Title:</dt>
                        <dd class="pl-4"> <?= ucwords($title) ?> </dd>
                        <dt class="text-navy">Group Name:</dt>
                        <dd class="pl-4"> <?= isset($group_name) ? $group_name : 'No Group Assigned' ?> </dd>
                        <dt class="text-navy">Student Name:</dt>
                        <dd class="pl-4"> <?= isset($student_name) ? ucwords($student_name) : 'N/A' ?> </dd>
                        <dt class="text-navy">Curriculum:</dt>
                        <dd class="pl-4"> <?= isset($curriculum) ? ucwords($curriculum) : 'N/A' ?> </dd>
                        <dt class="text-navy">Abstract:</dt>
                        <dd class="pl-4"> <?= html_entity_decode($abstract) ?> </dd>
                        <dt class="text-navy">Members:</dt>
                        <dd class="pl-4"> <?= html_entity_decode($members) ?> </dd>
                    </dl>
                    <hr>
                    <?php if(isset($banner_path) && is_file(base_app.$banner_path)): ?>
                        <div class="form-group text-center">
                            <img src="<?= validate_image($banner_path) ?>" alt="Project Banner" class="img-fluid archive-img bg-gradient-dark border">
                        </div>
                    <?php endif; ?>
                    <?php if(isset($document_path) && is_file(base_app.$document_path)): ?>
                        <div class="form-group text-center">
                            <a href="<?= base_url.$document_path ?>" target="_blank" class="btn btn-flat btn-info"><i class="fa fa-file-pdf"></i> View Project Document</a>
                        </div>
                    <?php endif; ?>
                    <?php if(isset($video_path) && is_file(base_app.$video_path)): ?>
                        <div class="form-group text-center">
                            <video class="video-fluid border" controls>
                                <source src="<?= base_url.$video_path ?>" type="video/mp4">
                                Your browser does not support the video tag.
                            </video>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>
