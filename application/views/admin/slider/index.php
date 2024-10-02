<section>
    <?php echo empty($info_messages) ? '' : $info_messages; ?>
    <div class="col-lg-6">
        <div class="panel panel-default panel-primary">
            <div class="panel-heading">
                <h4>
                    <span class="icon16 icomoon-icon-office"></span>
                    <span>Slider</span>
                </h4>
            </div>
            <div class="panel-body noPad">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th>Slider Name</th>
                                <th class="text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (empty($rec_data)) { ?>
                                <tr>
                                    <td colspan="3">No Slider</td>
                                </tr>
                            <?php } ?>
                            <?php
                            $i = 1;
                            foreach ($rec_data as $rst) {
                                ?>
                                <tr>
                                    <td><?php echo $i; ?></td>
                                    <td><?php echo $rst->title; ?></td>

                                    <td>
                                        <div class="controls text-center">
                                            <a href="<?php echo site_url('admin/slider/update/' . $rst->id); ?>" title="Edit Slider" class="tip"><span class="icon12 icomoon-icon-pencil"></span></a>
                                            <?php if ($rst->status) { ?>
                                                <a href="<?php echo site_url('admin/slider/deactive/' . $rst->id); ?>" title="Deactive Slider" class="tip"><span class="icon12 icomoon-icon-close"></span></a>
                                            <?php } else { ?>
                                                <a href="<?php echo site_url('admin/slider/active/' . $rst->id); ?>" title="Active Slider" class="tip"><span class="icon12 icomoon-icon-checkmark"></span></a>
                                                <?php } ?>
                                        </div>
                                    </td>
                                </tr>
                                <?php
                                $i++;
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>