<section>
    <div class="col-lg-9">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span>Form Add New User</span>
                </h4>
            </div>
            <div class="panel-body">
                <?php
                if (!empty($err_msg)) {
                    echo $err_msg;
                }
                ?>
                <form class="form-horizontal" action="user/add" role="form" method="post">
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Full Name</label>
                        <div class="col-lg-8">
                            <input type="text" name="name" class="form-control" placeholder="Input Full Name" value="<?php echo set_value('name'); ?>" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Email</label>
                        <div class="col-lg-8">
                            <input type="text" name="email" class="form-control" placeholder="Input Email" value="<?php echo set_value('email'); ?>" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Phone</label>
                        <div class="col-lg-4">
                            <input type="text" name="phone" class="form-control" placeholder="Input Phone" value="<?php echo set_value('phone'); ?>" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Username</label>
                        <div class="col-lg-4">
                            <input type="text" name="username" class="form-control" placeholder="Input Username" value="<?php echo set_value('username'); ?>" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Password</label>
                        <div class="col-lg-4">
                            <input type="password" name="password" class="form-control" placeholder="Input Password" value="<?php echo set_value('password'); ?>" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Re-Password</label>
                        <div class="col-lg-4">
                            <input type="password" name="repassword" class="form-control" placeholder="Input Re-Password" value="<?php echo set_value('repassword'); ?>" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="select">Kategori</label>
                        <div class="col-lg-4">
                            <select name="role" class="form-control">
                                <option value="2">User Content</option>
                                <option value="1">Admin</option>
                            </select>
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
<script>
    $(document).ready(function () {
        $('#home').on('click', function () {
            window.location = '<?php echo site_url('admin/user'); ?>';
        });
    });
</script>