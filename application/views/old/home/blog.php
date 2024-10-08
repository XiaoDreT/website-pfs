<?php if (!empty($rec_blog)) { ?>

    <div class="container">

        <div class="our-works">

            <div class="header-intro">

                <h2>Blog</h2>

            </div>

            <?php foreach ($rec_blog as $row) { ?>

                <a href="<?php echo site_url('old/blog/read/' . $row->id . '/' . urlencode($row->title)); ?>">

                    <div class="col-sm-4">

                        <div class="portfolio-img-wrap">

                            <img src="<?php echo IMG_UPLOADED_THUMBS . $row->image; ?>">

                            <div class="caption-container">

                                <div class="portfolio-caption">

                                    <h5><?php echo $row->title; ?></h5>

                                </div>

                            </div>

                        </div>

                    </div>

                </a>

            <?php } ?>

            <div class="col-sm-4">

                <div class="portfolio-img-wrap">

                    <a href="<?php echo site_url('blog'); ?>"><img src="<?php echo IMG_PATH; ?>more.jpg"></a>

                </div>

            </div>

            <div class="clearfix"></div>



        </div>

    </div>

<?php } ?>