<!DOCTYPE html>
<html lang="en">
<head>      
    <?php
    render_html_title($html_title);
    render_html_metalink($html_meta);
    render_html_metalink($seo);
    render_html_metalink($html_link, 'link');
    render_html_metalink($html_script, 'script');
    ?>
    <style>
        ::-webkit-scrollbar {
            width: 6px;
        }

        ::-webkit-scrollbar-track {
            background: #fff; 
        }

        ::-webkit-scrollbar-thumb {
            background: #187EA8; 
        }

        ::-webkit-scrollbar-thumb:hover {
            background: #555; 
        }
</style>
</head>
<body>
    <header>
        <?php $this->load->view('admin/layout/header'); ?>
    </header>
    <section>
        <?php $this->load->view('admin/layout/side_menu'); ?>
        <div id="main" class="col-lg-10 col-md-9 col-sm-8 col-lg-offset-2 col-md-offset-3 col-sm-offset-4">
            <?php $this->load->view('admin/layout/top_menu'); ?>
            <?php $this->load->view('admin/layout/content'); ?>
        </div>
    </section>
    <script>
        $(document).ready(function () {
            $('#dataTables').dataTable({
                responsive: true
            });
        });
    </script>
</body>
</html>