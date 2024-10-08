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
    <a href="#" onclick="window.history.back()" class="btn btn-sm btn-primary" style="margin-left: 10px"><span class="icomoon-icon-arrow-left-8" style="color: white">&nbsp;</span>Back to Catalogue List</a><br>
    <div class="col-lg-9" style="margin-top: 10px">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span>Form Update Catalogues</span>
                </h4>
            </div>
            <div class="panel-body">
                <?php
                if (!empty($err_msg)) {
                    echo $err_msg;
                }
                ?>
                <form class="form-horizontal" action="<?php echo 'catalogues/update/id/'.$id ?>" role="form" method="post">

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Catalogues Name</label>
                        <div class="col-lg-10">
                            <input type="text" name="name" class="form-control" placeholder="Input Nama Catalogues" value="<?php echo set_value('name', $update->name); ?>" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="merk">Merk</label>
                        <div class="col-lg-10">
                            <select name="merk" class="form-control">
                                <?php  
                                foreach ($merk as $row) {
                                    ?>
                                    <option value="<?php echo $row->id; ?>" <?php echo $row->id == $update->id_merk ? 'selected' : ''; ?>><?php echo $row->nama; ?></option>
                                    <?php
                                }
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="preface">Type</label>
                        <div class="col-lg-10">
                            <select name="type" class="form-control">
                                <option value="unit" <?php $update->type == "unit" ? "selected" : "" ?>>Unit</option>
                                <option value="part" <?php $update->type == "part" ? "selected" : "" ?>>Sparepart</option>
                                <option value="ban" <?php $update->type == "ban" ? "selected" : "" ?>>Ban</option>
                                <option value="battery" <?php $update->type == "battery" ? "selected" : "" ?>>Battery</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="description">Deskripsi</label>
                        <div class="col-lg-10">
                            <textarea id="textarea" rows="8" name="description" class="tinyeditor"><?php echo set_value('description', $update->description); ?></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <span class="col-lg-2"></span>
                        <img id="selected_image" src="<?php echo IMG_UPLOADED_THUMBS.set_value('image', $update->image); ?>" class="img img-width-75 col-lg-10"/>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Gambar</label>
                        <div class="col-lg-10">
                            <input type="text" name="image" id="image" class="form-control" placeholder="Input Gambar Catalogues" value="<?php echo set_value('image', $update->image); ?>" readonly style="cursor: default;">
                            <div class="border-box">
                                <?php
                                if (!empty($arr_img)) {
                                    foreach ($arr_img as $row) {
                                        echo '<img class="img-catalogues img-thumbnail img-width-75" src="' . IMG_UPLOADED_THUMBS . $row->file . '" id="' . $row->file . '"></img>';
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
        $('.img-catalogues').bind('click', function () {
            var image = $(this).attr('id');
            $('#image').val(image);
            $("#selected_image").attr("src","<?php echo IMG_UPLOADED_THUMBS; ?>"+image);
        });
        $('#home').bind('click', function () {
            window.location = '<?php echo site_url('admin/catalogues'); ?>';
        });
    });
</script>