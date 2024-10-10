<section>
    <?php echo empty($info_messages) ? '' : $info_messages; ?>

    <div class="col-lg-12">
        <div class="panel panel-default panel-default">
            <div class="panel-heading">
                <h4>
                    <span class="icon16 icomoon-icon-office"></span>
                    <span>Upload Image Slider</span>
                </h4>
            </div>
            <div class="panel-body noPad">
                <?php
                if (!empty($form_validation_errors)) {
                    echo $form_validation_errors;
                }
                ?>
                <form class="form-horizontal" role="form" method="post" action="slider/image" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="focus">Upload Image</label>
                        <div class="col-lg-9">
                            <input type="file" id="uploadimage" name="uploadimage"> *File Type .jpg, .jpeg, .png
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="submit" class="col-sm-2 control-label"></label>
                        <div class="col-sm-10">
                            <input type="submit" class="btn btn-info" name="submit"
                                   value="Upload" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="panel panel-default panel-primary">
            <div class="panel-heading">
                <h4>
                    <span class="icon16 icomoon-icon-office"></span>
                    <span>List Image Slider</span>
                </h4>
            </div>
            <div class="panel-body noPad">
                <div class="col-lg-12">
                    <?php
                    if (!empty($list)) {
                        foreach ($list as $img) {
                            ?>
                            <div class="col-md-3 list-group-item">
                                <img class="img img-responsive" src="<?php echo UPLOADED_PATH_SLIDE . $img; ?>" />
                                <a class="btn btn-default" style="position: absolute; top: 5px; right: 15px; opacity: 0.9" onclick="funcDelete('<?= $img;?>')"><span class="icomoon-icon-remove"></span></a>
                            </div>
                            <?php
                        }
                    } else {
                        ?>
                        No Image
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
function funcDelete(id) {
    var r = confirm("Are You Sure to Delete this Image? \nThis action will delete your data permanently!");
    if (r == true) {
        window.location = "<?php echo base_url('admin/slider/delete/'); ?>/"+id;
    }
}
</script>