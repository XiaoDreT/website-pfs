<section>
    <div class="col-lg-6">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span>Form Add New Category</span>
                </h4>
            </div>
            <div class="panel-body">
                <?php
                if (!empty($err_msg)) {
                    echo $err_msg;
                }
                ?>
                <form class="form-horizontal" action="<?php echo site_url('admin/category/add'); ?>" role="form" method="post">
                    <div class="form-group">
                        <label class="col-lg-4 control-label" for="select">Parent</label>
                        <div class="col-lg-8">
                            <select name="parent_id" class="form-control">
                                <?php
                                if (!empty($cat)) {
                                    foreach ($cat as $key => $val) {
                                        echo '<option value="' . $key . '">' . $val . '</option>';
                                    }
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-4 control-label" for="placeholder">Category Name</label>
                        <div class="col-lg-8">
                            <input type="text" name="name" class="form-control" placeholder="Input Name Category">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-4 col-lg-8 text-right">
                            <button type="submit" name="submit" value="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"> </span> Save changes</button>
                            <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-remove"> </span> Cancel</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>