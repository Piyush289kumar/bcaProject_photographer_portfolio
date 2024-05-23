<!-- Team Section Begin -->
<section class="team spad set-bg" data-setbg="img/team-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title team__title">
                    <span>Nice to meet</span>
                    <h2>OUR Team</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- PHP CODE -->
            <?php
            include ("config.php");
            $sql_show_user = "SELECT * FROM team WHERE active_record = 'Yes' ORDER BY aid DESC LIMIT 0,4";
            $result_sql_show_user = mysqli_query($conn, $sql_show_user) or die("Query Failed!!");
            if (mysqli_num_rows($result_sql_show_user) > 0) {
                while ($row = mysqli_fetch_assoc($result_sql_show_user)) {
                    ?>
                    <div class="col-lg-3 col-md-6 col-sm-6 p-0">
                        <div class="team__item set-bg" data-setbg="admin/upload/<?php echo ($row['aimg']) ?>">
                            <div class="team__item__text">
                                <h4> <?php echo ($row['atitle']) ?></h4>
                            </div>
                        </div>
                    </div>
                <?php }
            } ?>
        </div>
    </div>
</section>
<!-- Team Section End -->