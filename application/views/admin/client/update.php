<section>
    <a href="#" onclick="window.history.back()" class="btn btn-sm btn-primary" style="margin-left: 10px"><span class="icomoon-icon-arrow-left-8" style="color: white">&nbsp;</span>Back to Client List</a><br>
    <div class="col-lg-9" style="margin-top: 10px">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span>Form Update Client</span>
                </h4>
            </div>
            <div class="panel-body">
                <?php
                if (!empty($err_msg)) {
                    echo $err_msg;
                }
                ?>
                <form class="form-horizontal" action="<?php 'client/update/id/'.$id; ?>" role="form" method="post">

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Client Name</label>
                        <div class="col-lg-10">
                            <input type="text" name="name" class="form-control" placeholder="Input Nama Client" value="<?php echo set_value('name', $update->name); ?>" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="preface">Link</label>
                        <div class="col-lg-10">
                            <input type="text" name="link" class="form-control" placeholder="Input Link Client" value="<?php echo set_value('link', $update->link); ?>" />
                        </div>
                    </div>

                    <div class="form-group">
                        <span class="col-lg-2"></span>
                        <img id="selected_image" src="<?php echo IMG_UPLOADED_MAIN.set_value('image', $update->image); ?>" class="img img-width-75 col-lg-10"/>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Gambar</label>
                        <div class="col-lg-10">
                            <input type="text" name="image" id="image" class="form-control" placeholder="Input Gambar Client" value="<?php echo set_value('image', $update->image); ?>" readonly style="cursor: default;">
                            <div class="border-box">
                                <?php
                                if (!empty($arr_img)) {
                                    foreach ($arr_img as $row) {
                                        echo '<img class="img-client img-thumbnail img-width-75" src="' . IMG_UPLOADED_MAIN . $row->file . '" id="' . $row->file . '"></img>';
                                    }
                                }
                                ?>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-offset-4 col-lg-8 text-right">
                            <button type="submit" name="submit" value="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"> </span> Save changes</button>
                            <button type="button" class="btn btn-default" id="home"><span class="glyphicon glyphicon-remove"> </span> Cancel</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<style>
    .img-width-75{width: 75px;}
    .border-box{border: 1px #ccc solid; margin: 2px 0; padding: 4px;}
    .border-box img:hover, .border-box img:focus{cursor: pointer;}
</style>

<script>
    $(document).ready(function () {
        $("#selected_image").attr("src","<?php echo IMG_UPLOADED_MAIN; ?>"+$("#image").val());
        $('.img-client').bind('click', function () {
            var image = $(this).attr('id');
            $('#image').val(image);
            $("#selected_image").attr("src","<?php echo IMG_UPLOADED_MAIN; ?>"+image);
        });
        $('#home').bind('click', function () {
            window.location = '<?php echo site_url('admin/client'); ?>';
        });
    });
</script>