<?php include "header.php";
include("config.php");
if ($_SESSION['user_role'] == 0) {
    echo "<script>window.location.href='$hostname/admin/'</script>";
} ?>
<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <h1 class="admin-heading">Add Blog</h1>
            </div>
            <div class="col-md-2">
                <a class="add-new" style="background:#E1412E; border-radius:16px; margin-bottom:25px;" href="blog-read.php"><i class="fa-solid fa-arrow-left"></i> Back</a>
            </div>
            <div class="col-md-offset-3 col-md-6">
                <!-- Form Start -->
                <?php
                if (isset($_POST['save'])) {
                    if (isset($_FILES['fileToUpload'])) {
                        if ($_FILES['fileToUpload']["size"] > 10485760) {
                            echo "<div class='alert alert-danger'>Image must be 10mb or lower.</div>";
                        }
                        $info = getimagesize($_FILES['fileToUpload']['tmp_name']);
                        if (isset($info['mime'])) {
                            if ($info['mime'] == "image/jpeg") {
                                $img = imagecreatefromjpeg($_FILES['fileToUpload']['tmp_name']);
                            } elseif ($info['mime'] == "image/png") {
                                $img = imagecreatefrompng($_FILES['fileToUpload']['tmp_name']);
                            } elseif ($info['mime'] == "image/webp") {
                                $img = imagecreatefromwebp($_FILES['fileToUpload']['tmp_name']);
                            } else {
                                echo "<div class='alert alert-danger'>This extension file not allowed, Please choose a JPG, JPEG, PNG or WEBP file.</div>";
                            }
                            if (isset($img)) {
                                $output_img = date("d_M_Y_h_i_sa") . "_" . basename($_FILES['fileToUpload']["name"]) . ".webp";
                                imagewebp($img, "upload/" . $output_img, 100);

                                include("config.php");
                                $ndate = mysqli_real_escape_string($conn, $_POST['adate']);
                                $ntitle = mysqli_real_escape_string($conn, $_POST['atitle']);
                                $ades = mysqli_real_escape_string($conn, $_POST['ades']);
                                $userId = $_SESSION['username'];
                                $sql_insert_user = "INSERT INTO blog (adate, atitle, ades, userId, aimg)
                                    values('{$ndate}','{$ntitle}', '{$ades}','{$userId}','{$output_img}')";
                                if (mysqli_query($conn, $sql_insert_user)) {
                ?>
                                    <script>
                                        alert('Record is added successfully !!')
                                    </script>
                                <?php
                                    echo "<script>window.location.href='$hostname/admin/blog-read.php'</script>";
                                } else {
                                ?>
                                    <script>
                                        alert('Record is Not added !!')
                                    </script>
                <?php
                                    echo "<script>window.location.href='$hostname/admin/blog-read.php'</script>";
                                }
                            }
                        }
                    }
                }

                ?>
                <form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" autocomplete="off" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Blog Date</label>
                        <input type="date" name="adate" class="form-control" placeholder="Blog Date" required>
                    </div>
                    <div class="form-group">
                        <label>Blog Title</label>
                        <input type="text" name="atitle" class="form-control" placeholder="Blog Title" required>
                    </div>
                    <div class="form-group">
                        <label>Blog Description</label>
                        <input type="text" name="ades" class="form-control" placeholder="Blog Description" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Blog Poster</label>
                        <input type="file" name="fileToUpload" required>
                    </div>
                    <input type="submit" name="save" class="btn btn-primary" style="border-radius:16px;" value="Save" required />
                </form>
                <!-- Form End-->
            </div>
        </div>
    </div>
</div>
<?php include "footer.php"; ?>