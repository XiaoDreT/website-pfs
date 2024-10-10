<section>
    <div class="col-lg-12">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span class="icon16 icomoon-icon-equalizer-2"></span>
                    <span>Users</span>
                    <a href="<?php echo site_url('admin/user/add'); ?>" class="btn btn-xs btn-primary pull-right mar-lr10"><span class="glyphicon glyphicon-plus"> </span> Add New</a>
                </h4>
            </div>
            <div class="panel-body">
                <?php
                if ($this->session->flashdata('info_msg')) {
                    echo $this->session->flashdata('info_msg');
                }
                ?>
                <div class="dataTable_wrapper">
                    <table class="table table-striped table-bordered table-hover" id="dataTables">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>ID</th>
                                <th>Username</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if (!empty($list)) {
                                $i = 1;
                                foreach ($list as $row) {
                                    ?>
                                    <tr>
                                        <td class="text-center"><?php echo $i; ?></td>
                                        <td class="text-center"><?php echo '#' . $row->id; ?></td>
                                        <td><?php echo $row->username; ?></td>
                                        <td><?php echo $row->name; ?></td>
                                        <td class="text-center"><?php echo $row->email; ?></td>
                                        <td class="text-center">
                                            <a href="<?php echo site_url('admin/user/update/id/' . $row->id); ?>" class="tip" title="Edit This User"><span class="glyphicon glyphicon-pencil"> </span></a>
                                            <a href="<?php echo site_url('admin/user/delete/id/' . $row->id); ?>" class="tip" title="Delete This User"><span class="glyphicon glyphicon-trash"> </span></a>
                                        </td>
                                    </tr>
                                    <?php
                                    $i++;
                                }
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
