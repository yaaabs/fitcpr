<div class="content py-4">
    <div class="col-12">
        <div class="card card-outline card-warning shadow rounded-0">
            <div class="card-body rounded-0">
                <h2 class="text-center mb-4">Archive List</h2>
                <hr class="bg-navy">
                
                <?php 
                // Pagination logic
                $limit = 10;
                $page = isset($_GET['p']) ? $_GET['p'] : 1; 
                $offset = 10 * ($page - 1);
                $paginate = " limit {$limit} offset {$offset}";
                $isSearch = isset($_GET['q']) ? "&q={$_GET['q']}" : "";
                $search = "";
                if (isset($_GET['q'])) {
                    $keyword = $conn->real_escape_string($_GET['q']);
                    $search = " and (title LIKE '%{$keyword}%' or abstract LIKE '%{$keyword}%' or members LIKE '%{$keyword}%')";
                }

                // Fetch archive data
                $students = $conn->query("SELECT * FROM `student_list` where id in (SELECT student_id FROM archive_list where `status` = 1 {$search})");
                $student_arr = array_column($students->fetch_all(MYSQLI_ASSOC), 'email', 'id');
                $count_all = $conn->query("SELECT * FROM archive_list where `status` = 1 {$search}")->num_rows;    
                $pages = ceil($count_all / $limit);
                $archives = $conn->query("SELECT * FROM archive_list where `status` = 1 {$search} order by unix_timestamp(date_created) desc {$paginate}");    
                ?>

                <!-- Search result message -->
                <?php if (!empty($isSearch)): ?>
                <h3 class="text-center mb-4"><b>Search Result for "<?= $keyword ?>"</b></h3>
                <?php endif ?>

                <!-- Project list -->
                <div class="list-group">
                    <?php 
                    while ($row = $archives->fetch_assoc()):
                        $row['abstract'] = strip_tags(html_entity_decode($row['abstract']));
                    ?>
                    <a href="./?page=view_archive&id=<?= $row['id'] ?>" class="text-decoration-none text-dark list-group-item list-group-item-action mb-4 p-4 border rounded shadow-sm">
                        <div class="row">
                            <!-- Image Section -->
                            <div class="col-lg-4 col-md-5 col-sm-12 text-center mb-3">
                                <!-- Display Banner Image -->
                                <img src="<?= validate_image($row['banner_path']) ?>" class="img-fluid rounded" alt="Banner Image" style="max-height: 200px; object-fit: cover;">
                            </div>

                            <!-- Project Title and Description Section -->
                            <div class="col-lg-8 col-md-7 col-sm-12">
                                <h3 class="text-navy mb-3"><b><?= $row['title'] ?></b></h3>
                                <small class="text-muted">By <b class="text-info"><?= isset($student_arr[$row['student_id']]) ? $student_arr[$row['student_id']] : "N/A" ?></b></small>
                                <p class="truncate-5 mt-2"><?= $row['abstract'] ?></p>
                            </div>
                        </div>

                        <!-- Video Section with Title -->
                        <?php if (!empty($row['video_path'])): ?>
                            <div class="mt-4">
    <h4 class="text-navy mb-3">Video Teaser</h4>
    <div class="text-center position-relative">
        <video class="video-fluid rounded project-video" controls id="project-video-<?= $row['id'] ?>" style="max-width: 100%; max-height: 400px;">
            <source src="<?= base_url . $row['video_path'] ?>" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        
        <!-- Play Button Overlay -->
        <button class="play-btn" id="play-btn-<?= $row['id'] ?>" onclick="playVideo(<?= $row['id'] ?>)">
    <i class="fa fa-play-circle fa-3x text-white"></i>
</button>


    </div>
</div>

                        <?php endif; ?>
                    </a>
                    <?php endwhile; ?>
                </div>
            </div>

            <!-- Pagination Section -->
            <div class="card-footer clearfix rounded-0">
                <div class="col-12">
                    <div class="row">
                        <div class="col-md-6"><span class="text-muted">Display Items: <?= $archives->num_rows ?></span></div>
                        <div class="col-md-6">
                            <ul class="pagination pagination-sm m-0 float-right">
                                <li class="page-item"><a class="page-link" href="./?page=projects<?= $isSearch ?>&p=<?= $page - 1 ?>" <?= $page == 1 ? 'disabled' : '' ?>>«</a></li>
                                <?php for ($i = 1; $i <= $pages; $i++): ?>
                                <li class="page-item"><a class="page-link <?= $page == $i ? 'active' : '' ?>" href="./?page=projects<?= $isSearch ?>&p=<?= $i ?>"><?= $i ?></a></li>
                                <?php endfor; ?>
                                <li class="page-item"><a class="page-link" href="./?page=projects<?= $isSearch ?>&p=<?= $page + 1 ?>" <?= $page == $pages ? 'disabled' : '' ?>>»</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* Styling the video container and video */
    .video-fluid {
        width: 100%; /* Makes the video take up the full width */
        max-height: 400px; /* Limits the height of the video */
        object-fit: cover; /* Ensures the video covers the container area without distortion */
        border-radius: 10px; /* Adds rounded corners to the video */
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3); /* Adds a subtle shadow to the video */
    }

    /* Styling the Play Button Overlay */
    .play-btn {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: rgba(0, 0, 0, 0.6); /* Darker semi-transparent background */
        border: 3px solid white; /* White border around the play button */
        border-radius: 50%;
        cursor: pointer;
        padding: 20px;
        color: white;
        transition: background 0.3s ease, transform 0.2s ease;
        z-index: 10; /* Ensures the button stays above other elements */
    }

    .play-btn:hover {
        background: rgba(0, 0, 0, 0.8); /* Darker background on hover */
        transform: translate(-50%, -50%) scale(1.1); /* Slight zoom effect on hover */
    }

    /* Hide the play button completely when playing */
    .play-btn.hidden {
    display: none !important;
}

</style>



<script>
    // Function to play video and hide the play button
    function playVideo(videoId) {
        // Get the video and the associated play button
        var video = document.getElementById(`project-video-${videoId}`);
        var button = document.getElementById(`play-btn-${videoId}`);

        if (video && button) {
            // Hide the play button and play the video
            video.play();
            button.style.display = 'none';

            // Ensure button reappears when the video ends
            video.addEventListener('ended', function () {
                button.style.display = 'block';
            });
        }
    }

    // Initialize event listeners for all videos
    document.addEventListener('DOMContentLoaded', function () {
        var videos = document.querySelectorAll('video');
        videos.forEach(function (video) {
            var button = video.closest('.position-relative').querySelector('.play-btn');
            if (button) {
                button.addEventListener('click', function (event) {
                    event.preventDefault(); // Prevent any default behavior
                    var videoId = video.id.replace('project-video-', ''); // Extract video ID
                    playVideo(videoId); // Trigger play function
                });
            }
        });
    });
</script>



