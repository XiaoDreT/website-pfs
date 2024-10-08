<section>
    <div class="col-lg-12">
        <div class="panel panel-blue">
            <div class="panel-heading">
                <h4>
                    <span>Update Company</span>
                </h4>
            </div>
            <div class="panel-body">
                <?php echo empty($form_validation_errors) ? '' : $form_validation_errors; ?>
                <form class="form-horizontal" action="<?php echo 'slider/update/' . $id; ?>" method="post" role="form">
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="focus">Title</label>
                        <div class="col-lg-9">
                            <input type="text" name="txt_title" class="form-control" value="<?php echo set_value('txt_title', $rec_data->title) ?>" autofocus="autofocus" placeholder="Enter Title">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="focus">Text</label>
                        <div class="col-lg-9">
                            <textarea name="txt_text" class="form-control" placeholder="Text"><?php echo set_value('txt_text', $rec_data->text); ?></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="focus">Link</label>
                        <div class="col-lg-9">
                            <input type="text" name="txt_link" class="form-control" value="<?php echo set_value('txt_link', $rec_data->link) ?>" autofocus="autofocus" placeholder="Enter Link">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label">Image</label>
                        <div class="col-lg-3">
                            <select name="cmb_image" class="form-control">
                                <?php
                                if (!empty($list)) {
                                    foreach ($list as $img) {
                                        $selected = $rec_data->image == $img ? true : false;
                                        ?>
                                        <option value="<?php echo $img; ?>" <?php echo $selected ? 'selected="selected"' : ''; ?>><?php echo $img; ?></option>
                                        <?php
                                    }
                                }
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-offset-3 col-lg-9">
                            <input type="submit" name="submit" value="Save Change" class="btn btn-info" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>