<section>
    <div class="col-lg-12">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span class="icon16 icomoon-icon-equalizer-2"></span>
                    <span>List Catalogues</span>
                    <a href="<?php echo site_url('admin/catalogues/add'); ?>" class="btn btn-xs btn-primary pull-right mar-lr10"><span class="glyphicon glyphicon-plus"> </span> Add New</a>
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
                                <th>Slug</th>
                                <th>Merk</th>
                                <th>Name</th>
                                <th>Type</th>
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
                                        <td class="text-center"><?php echo "#".$row->id; ?></td>
                                        <td class="text-center"><?php echo $row->slug; ?></td>
                                        <td><?php echo $row->merk; ?></td>
                                        <td><?php echo $row->name; ?></td>
                                        <td><?php echo ucwords($row->type); ?></td>
                                        <td><?php echo $row->status; ?></td>
                                        <td class="text-center">
                                            <a href="<?php echo site_url('admin/catalogues/view/id/' . $row->id); ?>" class="tip" title="View Catalogues"><span class="glyphicon glyphicon-book"> </span></a>&nbsp;&nbsp;
                                            <a href="<?php echo site_url('admin/catalogues/update/id/' . $row->id); ?>" class="tip" title="Update This Catalogues"><span class="glyphicon glyphicon-edit"> </span></a>
                                            <a onclick="return confirm('Anda yakin ingin menghapus data ini?')" href="<?php echo site_url('admin/catalogues/delete/id/' . $row->id); ?>" class="tip" title="Delete This Catalogues"><span class="glyphicon glyphicon-trash"> </span></a>
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
