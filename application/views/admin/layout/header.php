<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon16 icomoon-icon-arrow-4"></span>
            </button>
            <a href="#" class="navbar-brand">
                <?php echo $app_name; ?><span class="slogan">&nbsp;Dashboard</span>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="<?php echo site_url('admin'); ?>">
                        <span class="icon16 icomoon-icon-screen-2"></span>
                        <span class="txt">Dashboard</span>
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle avatar" data-toggle="dropdown">
                        <img src="<?php echo IMG_PATH_ADMIN; ?>avatar.jpg" alt="" class="image" />
                        <span class="txt"><?php echo $this->session->userdata('sess-name'); ?></span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="menu">
                            <ul>
                                <li>
                                    <a href="#">
                                        <span class="icon16 icomoon-icon-user-plus pull-left"></span>Edit profile
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="icon16 icomoon-icon-bubble-2"></span>Approve comments
                                    </a>
                                </li>
                                <li>
                                    <a href="<?php echo site_url('admin/user'); ?>">
                                        <span class="icon16 icomoon-icon-plus"></span>Add user
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo site_url('admin/login/logout'); ?>">
                        <span class="icon16 icomoon-icon-exit"></span><span class="txt"> Logout</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
