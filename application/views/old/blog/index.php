<?php
$this->load->view('old/layout/navigation');
?>
<div class="container">
    <div class="col-md-12">
        <div class="blog">
            <?php
            foreach ($rec_data as $row) {
                $link = site_url('old/blog/read/' . $row->id);
                ?>
                <div class="col-md-6">
                    <div class="col-sm-4">
                        <div class="portfolio-img-wrap">
                            <a href="<?php echo $link; ?>" >
                                <img src="<?php echo IMG_UPLOADED_THUMBS . $row->image; ?>">
                            </a> 
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h4><a href="<?php echo $link; ?>" ><?php echo $row->title; ?></a></h4>
                        <p><?php echo $row->preface; ?><a href="<?php echo $link; ?>"> - &nbsp; read this...</a></p>
                    </div>
                </div> 
            <?php } ?>
        </div>
        <?php echo $pagination; ?>
    </div>
</div>