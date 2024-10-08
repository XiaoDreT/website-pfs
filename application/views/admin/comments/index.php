<section>
    <div class="col-lg-12">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span class="icon16 icomoon-icon-equalizer-2"></span>
                    <span>Comments</span>
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
                                <th>Article</th>
                                <th>Comments</th>
                                <th>User</th>
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
                                        <td><?php echo $row->comment; ?></td>
                                        <td class="text-center"><?php echo $row->name; ?></td>
                                        <td class="text-center">
                                            <a href="#" class="tip" title="Delete This Comments"><span class="glyphicon glyphicon-trash"> </span></a>
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
