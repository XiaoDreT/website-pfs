<section>
    <a href="#" onclick="window.history.back()" class="btn btn-sm btn-primary" style="margin-left: 10px"><span class="icomoon-icon-arrow-left-8" style="color: white">&nbsp;</span>Back to Article List</a>
    <div class="col-lg-12">
        <?php
        if (!empty($view)) {
            ?>
            <h4><?php echo $view->title; ?></h4>
            <p><?php echo $view->preface; ?></p>
            <br/>
            <div><img src="<?php echo IMG_UPLOADED_THUMBS . $view->image; ?>" class="img-thumbnail img-responsive" /><?php echo $view->detail; ?></div>
            Keyword : <?php echo $view->keyword; ?>
        <?php } ?>
    </div>
</section>