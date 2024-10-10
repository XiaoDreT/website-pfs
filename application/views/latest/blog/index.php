<?php
$this->load->view('latest/layout/navigation');
?>
<style>

    .blog .col-md-6 {
        height: 150px;
    }

    @media (max-width: 767px) {

        .blog .col-md-6 {
            height: auto;
            margin-bottom: 20px;
        }

    }
</style>
<div class="container">
    <div class="col-md-12">
        <div class="blog">
            <?php
            foreach ($rec_data as $row) {
                $link = site_url('artikel/' . $row->id);
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
                        <h4><a href="<?php echo $link; ?>" ><?php echo $title; ?></a></h4>
                        <p><?php echo $preface; ?><a href="<?php echo $link; ?>"> - &nbsp; read this...</a></p>
                    </div>
                </div> 
            <?php } ?>
        </div>
    </div>
    <?php echo $pagination; ?>
</div>