<script type="text/javascript">
    tinymce.init({
        selector: "textarea.tinyeditor",
        plugins: [
            "advlist autolink lists link image charmap print preview anchor",
            "searchreplace visualblocks code fullscreen",
            "insertdatetime media table contextmenu paste"
        ],
        toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
    });
</script>

<section>
    <a href="#" onclick="window.history.back()" class="btn btn-sm btn-primary" style="margin-left: 10px"><span class="icomoon-icon-arrow-left-8" style="color: white">&nbsp;</span>Back to Service List</a><br>
    <div class="col-lg-9" style="margin-top: 10px">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span>Form Add New Services</span>
                </h4>
            </div>
            <div class="panel-body">
                <?php
                if (!empty($err_msg)) {
                    echo $err_msg;
                }
                ?>
                <form class="form-horizontal" action="services/add" role="form" method="post">

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Nama Services</label>
                        <div class="col-lg-10">
                            <input type="text" name="name" class="form-control" placeholder="Input Nama Services" value="<?php echo set_value('title'); ?>" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="preface">Preface</label>
                        <div class="col-lg-10">
                            <textarea id="textarea" rows="3" name="preface" placeholder="Input Kata Pengantar" class="form-control"><?php echo set_value('preface'); ?></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="detail">Detail Services</label>
                        <div class="col-lg-10">
                            <textarea id="textarea" rows="8" name="detail" class="tinyeditor"><?php echo set_value('detail'); ?></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <span class="col-lg-2"></span>
                        <img id="selected_image" src="<?php echo IMG_UPLOADED_THUMBS.set_value('image'); ?>" class="img img-width-75 col-lg-10"/>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Gambar</label>
                        <div class="col-lg-10">
                            <input type="text" name="image" id="image" class="form-control" placeholder="Input Gambar Services" readonly style="cursor: default;">
                            <div class="border-box">
                                <?php
                                if (!empty($arr_img)) {
                                    foreach ($arr_img as $row) {
                                        echo '<img class="img-services img-thumbnail img-width-75" src="' . IMG_UPLOADED_THUMBS . $row->file . '" id="' . $row->file . '"></img>';
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
        $("#selected_image").attr("src","<?php echo IMG_UPLOADED_THUMBS; ?>"+$("#image").val());
        $('.img-services').bind('click', function () {
            var image = $(this).attr('id');
            $('#image').val(image);
            $("#selected_image").attr("src","<?php echo IMG_UPLOADED_THUMBS; ?>"+image);
        });
        $('#home').bind('click', function () {
            window.location = '<?php echo site_url('admin/services'); ?>';
        });
    });
</script>