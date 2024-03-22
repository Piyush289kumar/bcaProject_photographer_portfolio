<?php include('header.php') ?>
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option spad set-bg" data-setbg="img/breadcrumb-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Work</h2>
                    <div class="breadcrumb__links">
                        <a href="index.php">Home</a>
                        <span>Work</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->
<!-- Portfolio Section Begin -->
<section class="portfolio spad">
    <div class="container">
        <div class="row portfolio__gallery">
            <!-- PHP CODE -->
            <?php
            include("config.php");
            $sql_show_user = "SELECT * FROM achievement WHERE active_record = 'Yes' ORDER BY aid DESC LIMIT 0,9";
            $result_sql_show_user = mysqli_query($conn, $sql_show_user) or die("Query Failed!!");
            if (mysqli_num_rows($result_sql_show_user) > 0) {
                while ($row = mysqli_fetch_assoc($result_sql_show_user)) {
            ?>
                    <div class="col-lg-4 col-md-6 col-sm-6 mix branding">
                        <div class="portfolio__item">
                            <div class="portfolio__item__video set-bg" data-setbg="admin/upload/<?php echo ($row['aimg']) ?>">
                            </div>
                            <div class="portfolio__item__text">
                                <h4><?php echo ($row['atitle']) ?></h4>
                                <ul>
                                    <li><?php echo ($row['adate']) ?></li>
                                </ul>
                            </div>
                        </div>
                    </div>
            <?php }
            } ?>
        </div>
    </div>
</section>
<!-- Portfolio Section End -->
<?php include('footer.php') ?>