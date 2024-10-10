<?php $this->load->view('latest/layout/navigation') ?>
<div class="inner-page services">
    <div class="container">
        <div class="col-md-12 no-padding-left">
            <div data-example-id="collapse-accordion">
                <div class="panel-group" id="accordion">
                    <?php
                    $i = 1;
                    foreach ($services as $row) {
                        ?>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $i; ?>">
                                        <span class="down-icon"></span>
                                        <h4><?php echo $row->name; ?></h4>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse<?php echo $i; ?>" class="panel-collapse collapse<?php echo $i == 1 ? " in" : "" ?> ">
                                <div class="panel-body">
                                    <div class="col-md-6">
                                        <img src="<?php echo IMG_UPLOADED_MAIN . $row->image; ?>" class="img img-responsive" alt="<?php echo $row->name; ?>" />
                                    </div>
                                    <div class="col-md-6">
                                        <?php echo $row->detail; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
                        $i++;
                    }
                    ?>

                </div>
            </div>
        </div>
        <div class="clearfix"></div>

    </div>
</div>