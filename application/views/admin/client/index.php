<section>
    <div class="col-lg-12">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span class="icon16 icomoon-icon-equalizer-2"></span>
                    <span>List Client</span>
                    <a href="<?php echo site_url('admin/client/add'); ?>" class="btn btn-xs btn-primary pull-right mar-lr10"><span class="glyphicon glyphicon-plus"> </span> Add New</a>
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
                                <th>Name</th>
                                <th>Link</th>
                                <th>Image</th>
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
                                        <td class="text-center" style="vertical-align: middle;"><?php echo $i; ?></td>
                                        <td style="vertical-align: middle;"><?php echo $row->name; ?></td>
                                        <td style="vertical-align: middle;"><a href="<? echo $row->link ?>" target="_blank" style="color: blue;"><?php echo $row->link; ?></a></td>
                                        <td class="text-center"><img class="img-thumbnail" width="75" height="75" src="<?php echo IMG_UPLOADED_MAIN.$row->image; ?>"></img></td>
                                        <td class="text-center" style="vertical-align: middle;"><?php echo $row->status; ?></td>
                                        <td class="text-center" style="vertical-align: middle;">
                                            <a href="<?php echo site_url('admin/client/update/id/' . $row->id); ?>" class="tip" title="Update This Client"><span class="glyphicon glyphicon-edit"></span></a>
                                            <a onclick="return confirm('Anda yakin ingin menghapus data ini?')" href="<?php echo site_url('admin/client/delete/id/' . $row->id); ?>" class="tip" title="Delete This Client"><span class="glyphicon glyphicon-trash"> </span></a>
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
