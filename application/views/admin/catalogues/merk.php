<section>
    <div class="col-lg-12">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span class="icon16 icomoon-icon-equalizer-2"></span>
                    <span>List Merk</span>
                    <a class="btn btn-xs btn-primary pull-right mar-lr10" style="cursor: pointer;" onclick="add_new()"><span class="glyphicon glyphicon-plus"> </span> Add New</a>
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
                                <th>Name</th>
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
                                        <td><?php echo $row->nama; ?></td>
                                        <td class="text-center">
                                            <a onclick="update('<? echo $row->id; ?>','<? echo $row->nama; ?>')" class="tip" title="Update This Merk"><span class="glyphicon glyphicon-edit" style="cursor: pointer;"> </span></a>
                                            <a href="<?php echo site_url('admin/catalogues/deletemerk/id/' . $row->id); ?>" onclick="return confirm('Anda yakin ingin menghapus data ini?')" class="tip" title="Delete This Merk"><span class="glyphicon glyphicon-trash"> </span></a>
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

<div class="modal fade" id="merkModal" tabindex="-1" role="dialog" aria-labelledby="merkModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="merkModalLabel">Modal title</h5>
            </div>
            <div class="modal-body">
                <form id="form-merk" class="form-horizontal">
                    <input type="hidden" name="id" id="id" value="0">
                    <input type="hidden" name="type" id="type">
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="placeholder">Merk Name</label>
                        <div class="col-lg-10">
                            <input id="name" type="text" name="name" class="form-control" placeholder="Input Nama Merk"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="submit()">Save changes</button>
            </div>
        </div>
    </div>
</div>

<script>
    function add_new(){
        $("#merkModalLabel").text("Add New Merk");
        $("#type").val("add");
        $("#merkModal").modal("show");
    }

    function update(id, name){
        $("#merkModalLabel").text("Update Merk");
        $("#id").val(id);
        $("#type").val("update");
        $("#name").val(name);
        $("#merkModal").modal("show");
    }

    function submit(){
        var data = $("#form-merk").serialize();
        $.ajax({
            type: "POST",
            url: "<?php echo site_url('admin/catalogues/merk_action'); ?>",
            data: data,
            success: function(e){
                location.href = "<?php echo site_url('admin/catalogues/merk'); ?>";
            }
        })
    }
</script>
