<section>
    <div class="col-lg-12">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span class="icon16 icomoon-icon-equalizer-2"></span>
                    <span>My Article</span>
                    <a href="<?php echo site_url('admin/article/add'); ?>" class="btn btn-xs btn-primary pull-right mar-lr10"><span class="glyphicon glyphicon-plus"> </span> Add New</a>
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
                                <th>Title</th>
                                <th>Preface</th>
                                <th>Status</th>
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
                                        <td><?php echo $row->title; ?></td>
                                        <td><?php echo $row->preface; ?></td>
                                        <td class="text-center"><?php echo $row->status; ?></td>
                                        <td class="text-center">
                                            <a href="<?php echo site_url('admin/article/view/id/' . $row->id); ?>" class="tip" title="View This Article"><span class="glyphicon glyphicon-book"> </span></a>
                                            <?php
                                            if ($row->insert_user === $this->session->userdata('sess-id')) {
                                                ?>
                                                <a href="<?php echo site_url('admin/article/update/id/' . $row->id); ?>" class="tip" title="Update This Article"><span class="glyphicon glyphicon-edit"> </span></a>
                                            <?php } ?>
                                            <a onclick="return confirm('Anda yakin ingin menghapus data ini?')" href="<?php echo site_url('admin/article/delete/id/' . $row->id); ?>" class="tip" title="Delete This Article"><span class="glyphicon glyphicon-trash"> </span></a>
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
