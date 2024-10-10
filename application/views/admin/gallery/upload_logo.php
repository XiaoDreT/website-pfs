<style>

    #wrapper {
        width: 900px;
        margin: 0 auto;
    }

    #imagecrop {
        display: block;
        text-align: center;
        padding-bottom: 20px;
    }

    #form-container {
        display: block;
        position: absolute; 
        top: 300px; 
        right: 35px;
    }

    /* jcrop styles */
    .jc-demo-box {
        position: relative;
        text-align: left;
        margin: 1.5em auto;
        background: #fff;
        -webkit-box-shadow: 0 3px 9px -1px rgba(0,0,0,0.75);
        -moz-box-shadow: 0 3px 9px -1px rgba(0,0,0,0.75);
        box-shadow: 0 3px 9px -1px rgba(0,0,0,0.75);
        padding: 1em 2em 2em;
    }

</style>
<section>
    <div class=" col-lg-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h4>
                    <span class="icon16 icomoon-icon-equalizer-2"></span>
                    <span>Upload Logo Image</span>
                </h4>
            </div>
            <div class="panel-body">
                <?php
                if (isset($error_messages))
                    echo $error_messages;
                ?>
                <form class="form-horizontal jc-margin-right" role="form" method="post"
                action="<?php echo base_url('admin/gallery'); ?>/do_upload_logo"
                enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-lg-1 control-label" for="focus">Upload Image</label>
                        <div class="col-lg-4">
                            <input type="file" id="uploadimage" name="uploadimage" class="form-control" value="<?php echo set_value('txt_userid'); ?>" /> *File Type .jpg, .jpeg, .png (Max 2MB, Max Width : 1920px, Max Height : 1200px)
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label" for="focus">Caption*</label>
                        <div class="col-lg-4">
                            <input type="text" name="tx_caption" class="form-control" value="<?php echo set_value('tx_caption'); ?>" placeholder="Image Caption"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label" for="focus"></label>
                        <div class="col-lg-4">
                            <input type="submit" class="btn btn-info" name="upload" value="Upload" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>