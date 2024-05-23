<?php include ("header.php");
include ("config.php"); ?>
<!-- Hero Section Begin -->
<section class="hero">
    <div class="hero__slider owl-carousel">
        <div class="hero__item set-bg" data-setbg="img/hero/hero-1.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="hero__text">
                            <span>For creators, by creators.</span>
                            <h2>Jay Photography</h2>
                            <a href="contact.php" class="primary-btn">See more about us</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hero__item set-bg" data-setbg="img/hero/hero-1.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="hero__text">
                            <span>For creators, by creators.</span>
                            <h2>Jay Photography</h2>
                            <a href="contact.php" class="primary-btn">See more about us</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hero__item set-bg" data-setbg="img/hero/hero-1.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="hero__text">
                            <span>For creators, by creators.</span>
                            <h2>Jay Photography</h2>
                            <a href="contact.php" class="primary-btn">See more about us</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->
<!-- Services Section Begin -->
<section class="services spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="services__title">
                    <div class="section-title">
                        <span>Our services</span>
                        <h2>What We do?</h2>
                    </div>
                    <p>If you hire our team you will get a photography professional to make a custom
                        photo shoot for your business and, once the project is over.</p>
                    <a href="contact.php" class="primary-btn">Contact us</a>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="services__item">
                            <div class="services__item__icon">
                                <img src="img/icons/si-1.png" alt="">
                            </div>
                            <h4>Motion graphics</h4>
                            <!-- <p>Whether you’re halfway through the editing process, or you haven’t even started, our
                                post production services can put the finishing touches.</p> -->
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="services__item">
                            <div class="services__item__icon">
                                <img src="img/icons/si-2.png" alt="">
                            </div>
                            <h4>Scriptwriting and editing</h4>
                            <!-- <p>Whether you’re halfway through the editing process, or you haven’t even started, our
                                post production services can put the finishing touches.</p> -->
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="services__item">
                            <div class="services__item__icon">
                                <img src="img/icons/si-3.png" alt="">
                            </div>
                            <h4>Video distribution</h4>
                            <!-- <p>Whether you’re halfway through the editing process, or you haven’t even started, our
                                post production services can put the finishing touches.</p> -->
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="services__item">
                            <div class="services__item__icon">
                                <img src="img/icons/si-4.png" alt="">
                            </div>
                            <h4>Video hosting</h4>
                            <!-- <p>Whether you’re halfway through the editing process, or you haven’t even started, our
                                post production services can put the finishing touches.</p> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Services Section End -->
<!-- Work Section Begin -->
<section class="work">
    <div class="work__gallery">
        <div class="grid-sizer"></div>
        <!-- PHP CODE -->
        <?php
        $sql_show_user = "SELECT * FROM achievement WHERE active_record = 'Yes' ORDER BY aid DESC LIMIT 0,2";
        $result_sql_show_user = mysqli_query($conn, $sql_show_user) or die("Query Failed!!");
        if (mysqli_num_rows($result_sql_show_user) > 0) {
            while ($row = mysqli_fetch_assoc($result_sql_show_user)) {
                ?>
                <div class="work__item wide__item set-bg" data-setbg="admin/upload/<?php echo ($row['aimg']) ?>">
                    <div class="work__item__hover">
                        <h4><?php echo $row['atitle'] ?></h4>
                    </div>
                </div>
            <?php }
        } ?>
        <?php
        $sql_show_user = "SELECT * FROM achievement WHERE active_record = 'Yes' ORDER BY aid DESC LIMIT 2,1";
        $result_sql_show_user = mysqli_query($conn, $sql_show_user) or die("Query Failed!!");
        if (mysqli_num_rows($result_sql_show_user) > 0) {
            while ($row = mysqli_fetch_assoc($result_sql_show_user)) {
                ?>
                <div class="work__item large__item set-bg" data-setbg="admin/upload/<?php echo ($row['aimg']) ?>">
                    <div class="work__item__hover">
                        <h4><?php echo $row['atitle'] ?></h4>
                    </div>
                </div>
            <?php }
        } ?>
        <!-- PHP CODE -->
        <?php
        $sql_show_user = "SELECT * FROM achievement WHERE active_record = 'Yes' ORDER BY aid DESC LIMIT 3,2";
        $result_sql_show_user = mysqli_query($conn, $sql_show_user) or die("Query Failed!!");
        if (mysqli_num_rows($result_sql_show_user) > 0) {
            while ($row = mysqli_fetch_assoc($result_sql_show_user)) {
                ?>
                <div class="work__item wide__item set-bg" data-setbg="admin/upload/<?php echo ($row['aimg']) ?>">
                    <div class="work__item__hover">
                        <h4><?php echo $row['atitle'] ?></h4>
                    </div>
                </div>
            <?php }
        } ?>
    </div>
</section>
<!-- Work Section End -->
<!-- Team Section Start  -->
<?php include ('teamSection.php') ?>
<!-- Team Section End  -->
<!-- Latest Blog Section Begin -->
<?php include ('blogSection.php') ?>
<!-- Latest Blog Section End -->
<!-- Call To Action Section Begin -->
<section class="callto spad set-bg" data-setbg="img/callto-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="callto__text">
                    <h2>Fresh Ideas, Fresh Moments Giving Wings to your Stories.</h2>
                    <br>
                    <br>
                    <a href="contact.php">Start your stories</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Call To Action Section End -->
<?php include ("footer.php") ?>