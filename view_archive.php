<?php 
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT * FROM `archive_list` WHERE id = '{$_GET['id']}'");
    if($qry->num_rows){
        foreach($qry->fetch_array() as $k => $v){
            if(!is_numeric($k)) $$k = $v;
        }
    }
    $submitted = "N/A";
    $group_name = "N/A";
    if(isset($student_id)){
        $student = $conn->query("SELECT * FROM student_list where id = '{$student_id}'");
        if($student->num_rows > 0){
            $res = $student->fetch_array();
            $submitted = $res['email'];

            // Fetch group information
            if(isset($res['group_id'])) {
                $group_qry = $conn->query("SELECT name FROM group_list WHERE id = '{$res['group_id']}'");
                if($group_qry && $group_qry->num_rows > 0) {
                    $group_name = $group_qry->fetch_assoc()['name'];
                }
            }
        }
    }
}
?>
<style>
    #document_field {
        min-height: 80vh;
    }

    .video-fluid {
        width: 100%;
        max-height: 500px;
        object-fit: cover;
    }

    #view-archive-video {
        width: 100%;
        height: 70vh;
        object-fit: contain;
        margin-bottom: 20px;
    }

    .project-video {
        width: 100%;
        height: auto;
        max-height: 300px;
    }
</style>

<div class="content py-4">
    <div class="col-12">
        <div class="card card-outline card-warning shadow rounded-0">
            <div class="card-header">
                <h3 class="card-title">
                    Archive - <?= isset($archive_code) ? $archive_code : "" ?>
                </h3>
            </div>
            <div class="card-body rounded-0">
                <div class="container-fluid">
                    <h2><b><?= isset($title) ? $title : "" ?></b></h2>
                    <small class="text-muted">Submitted by <b class="text-info"><?= $submitted ?></b> on <?= date("F d, Y h:i A", strtotime($date_created)) ?></small>
                    <?php if(isset($student_id) && $_settings->userdata('login_type') == "2" && $student_id == $_settings->userdata('id')): ?>
                        <div class="form-group">
                            <a href="./?page=submit-archive&id=<?= isset($id) ? $id : "" ?>" class="btn btn-flat btn-default bg-navy btn-sm"><i class="fa fa-edit"></i> Edit</a>
                            <button type="button" data-id = "<?= isset($id) ? $id : "" ?>" class="btn btn-flat btn-danger btn-sm delete-data"><i class="fa fa-trash"></i> Delete</button>
                        </div>
                    <?php endif; ?>
                    <hr>
                    <center>
                        <img src="<?= validate_image(isset($banner_path) ? $banner_path : "") ?>" alt="Banner Image" id="banner-img" class="img-fluid border bg-gradient-dark">
                    </center>
                    <fieldset><br>
                        <b><legend class="text-navy">Project Year:</legend></b>
                        <div class="pl-4"><large><?= isset($year) ? $year : "----" ?></large></div>
                    </fieldset>
                    <fieldset><br>
                        <b><legend class="text-navy">Abstract:</legend></b>
                        <div class="pl-4"><large><?= isset($abstract) ? strip_tags(html_entity_decode($abstract)) : "" ?></large></div>
                    </fieldset>
                    <fieldset><br>
                        <b><legend class="text-navy">Members:</legend></b>
                        <div class="pl-4">
                            <large>
                                <?php 
                                if (isset($members)) {
                                    $member_list = explode(',', strip_tags(html_entity_decode($members))); // Split names by commas
                                    foreach ($member_list as $member) {
                                        echo "<div>" . trim($member) . "</div>"; // Display each name in a new line
                                    }
                                } else {
                                    echo "No members listed.";
                                }
                                ?>
                            </large>
                        </div>
                    </fieldset>
                    <fieldset><br>
                        <b><legend class="text-navy">Group:</legend></b>
                        <div class="pl-4"><large><?= $group_name ?></large></div>
                    </fieldset>
                    <fieldset><br>
                        <b><legend class="text-navy">Project Document:</legend></b>
                        <div class="pl-4">
                            <iframe src="<?= isset($document_path) ? base_url . $document_path : "" ?>" frameborder="0" id="document_field" class="text-center w-100">Loading Document ...</iframe>
                        </div>
                    </fieldset><br>
                    <?php if (!empty($video_path)): ?>
                    <fieldset>
                        <b><legend class="text-navy">Video Teaser:</legend></b>
                        <div class="pl-4">
                            <video class="video-fluid border w-100" controls>
                                <source src="<?= base_url . $video_path ?>" type="video/mp4">
                                Your browser does not support the video tag.
                            </video>
                        </div>
                    </fieldset>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(function(){
        $('.delete-data').click(function(){
            _conf("Are you sure to delete <b>Archive-<?= isset($archive_code) ? $archive_code : "" ?></b>","delete_archive")
        })
    })
    
    function delete_archive(){
        start_loader();
        $.ajax({
            url: _base_url_ + "classes/Master.php?f=delete_archive",
            method: "POST",
            data: {id: "<?= isset($id) ? $id : "" ?>"},
            dataType: "json",
            error: err => {
                console.log(err)
                alert_toast("An error occurred.", 'error');
                end_loader();
            },
            success: function(resp) {
                if (typeof resp == 'object' && resp.status == 'success') {
                    location.replace("./");
                } else {
                    alert_toast("An error occurred.", 'error');
                    end_loader();
                }
            }
        })
    }
</script>
