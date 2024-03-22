<section class="latest spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title center-title">
                    <span>Our Blog</span>
                    <h2>Blog Update</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="latest__slider owl-carousel">


                <!-- PHP CODE -->
                <?php
                include("config.php");
                $sql_show_user = "SELECT * FROM blog WHERE active_record = 'Yes' ORDER BY aid DESC LIMIT 0, 6";
                $result_sql_show_user = mysqli_query($conn, $sql_show_user) or die("Query Failed!!");
                if (mysqli_num_rows($result_sql_show_user) > 0) {
                    while ($row = mysqli_fetch_assoc($result_sql_show_user)) {
                ?>

                        <div class="col-lg-4">
                            <div class="blog__item latest__item">
                                <h4><?php echo ($row['atitle']) ?></h4>
                                <ul>
                                    <li><?php echo ($row['adate']) ?></li>
                                </ul>
                                <p><?php echo ($row['ades']) ?></p>
                            </div>
                        </div>


                <?php }
                } ?>

            </div>
        </div>
    </div>
</section>