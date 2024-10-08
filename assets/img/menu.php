<div class="wrapper">
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid"> 
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    <a class="navbar-brand" href="<?php echo site_url(); ?>"><img src="<?php echo IMG_PATH; ?>logo.gif" data-min-width-1200="<?php echo IMG_PATH; ?>logo-big.png" class="img img-responsive" alt="Prime Forklift" /></a> </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse pull-right" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li<?php echo $menu['link'] == 'home' ? ' class="active"' : ''; ?>><a href="<?php echo site_url(); ?>">Home <span class="sr-only">(current)</span></a></li>
                        <li<?php echo $menu['link'] == 'about' ? ' class="active"' : ''; ?>><a href="<?php echo site_url('about'); ?>">About Us</a></li>
                        <li<?php echo $menu['link'] == 'services' ? ' class="active"' : ''; ?>><a href="<?php echo site_url('services'); ?>">Services</a></li>
                        <li<?php echo $menu['link'] == 'blog' ? ' class="active"' : ''; ?>><a href="<?php echo site_url('blog'); ?>" class="last">Blog</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse --> 
            </div>
            <!-- /.container-fluid --> 
        </nav>
    </div>
</div>