<?php echo isset($info_messages) ? $info_messages : ''; ?>
<?php $this->load->view('admin/info/about'); ?>
<?php $this->load->view('admin/info/services'); ?>
<?php $this->load->view('admin/info/contact'); ?>
<script>
    function send_data(main) {
        image = $('#image').val();
        var value = image + main + ';';
//        var value = main;
        $('#image').val(value);
        $('#myModal').modal('hide');
    }
</script>

<script>
    // Tiny MCE
    tinymce.init({
        selector: ".txt_detail",
        plugins: [
            "advlist autolink lists link image charmap print preview hr anchor pagebreak",
            "searchreplace wordcount visualblocks visualchars code fullscreen",
            "insertdatetime media nonbreaking save table contextmenu directionality",
            "emoticons template paste textcolor"
        ],

        toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
        toolbar2: "print preview media | forecolor backcolor emoticons",
        image_advtab: true,
        templates: [
            {title: 'Test template 1', content: 'Test 1'},
            {title: 'Test template 2', content: 'Test 2'}
        ]
    });
</script>

<!-- Modal -->

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel">Modal header</h3>
            </div>
            <div class="modal-body">
                <?php foreach ($list_image as $row) { ?>
                    <a class="info" title ="Choose Image" href="#" onclick="send_data('<?php echo $row->path; ?>')">
                        <img src="<?php echo IMG_UPLOADED_THUMBS . $row->path; ?>" />
                    </a>
                <?php } ?>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                <button class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

