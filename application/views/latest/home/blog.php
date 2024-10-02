<?php if (!empty($rec_blog)) {
    $link = site_url('latest/blog/index/offset/1');
    ?>
    <img class="img-right-title" src="<?php echo IMG_PATH; ?>blog.png" style="cursor: pointer;" onclick="window.location = '<? echo $link; ?>'">
    <div class="container" style="clear: right;">
        <div class="our-works" style="padding-top: 10px">
            <?php foreach ($rec_blog as $row) { 
                $link = site_url('artikel/' . $row->id);
                ?>
                <div class="col-sm-4" style="min-height: 185px;">
                    <div class="col-sm-4">
                        <div class="portfolio-img-wrap" style="margin-top: 20px">
                            <a href="<?php echo $link; ?>" >
                                <img src="<?php echo IMG_UPLOADED_THUMBS . $row->image; ?>">
                            </a> 
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <?php  
                        $jml_title = strlen($row->title);
                        $jml_preface = strlen($row->preface);
                        $title = $row->title;
                        $preface = $row->preface;
                        if ($jml_title > 20) {
                            $title = substr($title, 0, 20)." ...";
                        }
                        if ($jml_preface > 150) {
                            $preface = substr($preface, 0, 150)." ...";
                        }
                        ?>
                        <h5><a href="<?php echo $link; ?>" ><?php echo $title; ?></a></h5>
                        <p><?php echo $preface; ?><a href="<?php echo $link; ?>"> - &nbsp; read this...</a></p>
                    </div>
                </div>
                <?php 
            } 
            ?>
        </div>
    </div>
    <?php 
} 
?>