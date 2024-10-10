<div id="sidebarbg" class="col-lg-2 col-md-3 col-sm-4 pad0">
    <div class="navigation">
        <span class="nav-text">My Menu</span>
        <button id="hide" class="btn btn-link"><span class="icomoon-icon-arrow-left-7"></span></button>
        <button id="hide2" class="btn btn-link"><span class="icomoon-icon-arrow-right-8"></span></button>
    </div>

    <ul class="nav-sidemenu" id="accordionNav">
        <li class="panel s">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionNav" href="#collapseOne1">
                <span class="icon16 icomoon-icon-stats-up"></span> 
                <span class="nav-text sicon">Blogs<span class="hasDrop icon16 icomoon-icon-arrow-down-2"></span></span>
            </a>
            <ul id="collapseOne1" class="sub panel-collapse collapse">
                <li>
                    <a href="<?php echo site_url('admin/article'); ?>">
                        <span class="icon16 icomoon-icon-file"></span>
                        <span class="nav-text sicon">My Post</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo site_url('admin/article/all'); ?>">
                        <span class="icon16 icomoon-icon-file"></span>
                        <span class="nav-text sicon">All Post</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="panel s">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionNav" href="#collapseOne2">
                <span class="icon16 icomoon-icon-list"></span> 
                <span class="nav-text sicon">Gallery<span class="hasDrop icon16 icomoon-icon-arrow-down-2"></span></span>
            </a>
            <ul id="collapseOne2" class="sub panel-collapse collapse">
                <li>
                    <a href="<?php echo site_url('admin/gallery'); ?>">
                        <span class="icon16 icomoon-icon-file"></span>
                        <span class="nav-text sicon">Image</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo site_url('admin/gallery/catalogue'); ?>">
                        <span class="icon16 icomoon-icon-file"></span>
                        <span class="nav-text sicon">Catalogue</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo site_url('admin/gallery/logo'); ?>">
                        <span class="icon16 icomoon-icon-file"></span>
                        <span class="nav-text sicon">Logo</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="s">
            <a href="<?php echo site_url('admin/services'); ?>">
                <span class="icon16 icomoon-icon-table-2"></span> 
                <span class="nav-text sicon">Services</span>
            </a>
        </li>
        <li class="s">
            <a href="<?php echo site_url('admin/info'); ?>">
                <span class="icon16 glyphicon glyphicon-info-sign"></span> 
                <span class="nav-text sicon">Info</span>
            </a>
        </li>
        <li class="panel s">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionNav" href="#collapseOne3">
                <span class="icon16 icomoon-icon-list"></span> 
                <span class="nav-text sicon">Sliders<span class="hasDrop icon16 icomoon-icon-arrow-down-2"></span></span>
            </a>
            <ul id="collapseOne3" class="sub panel-collapse collapse">
                <li>
                    <a href="<?php echo site_url('admin/slider'); ?>">
                        <span class="icon16 icomoon-icon-file"></span>
                        <span class="nav-text sicon">Slider</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo site_url('admin/slider/image'); ?>">
                        <span class="icon16 icomoon-icon-file"></span>
                        <span class="nav-text sicon">Image</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="panel s">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionNav" href="#collapseOne4">
                <span class="icon16 icomoon-icon-stats-up"></span> 
                <span class="nav-text sicon">Catalogues<span class="hasDrop icon16 icomoon-icon-arrow-down-2"></span></span>
            </a>
            <ul id="collapseOne4" class="sub panel-collapse collapse">
                <li>
                    <a href="<?php echo site_url('admin/catalogues'); ?>">
                        <span class="icon16 icomoon-icon-file"></span>
                        <span class="nav-text sicon">Data</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo site_url('admin/catalogues/merk'); ?>">
                        <span class="icon16 icomoon-icon-file"></span>
                        <span class="nav-text sicon">Merk</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="s">
            <a href="<?php echo site_url('admin/client'); ?>">
                <span class="icon16 icomoon-icon-table-2"></span> 
                <span class="nav-text sicon">Clients</span>
            </a>
        </li>
        <?php
        if ($this->session->userdata('sess-role') == '1') {
            ?>
            <li class="s">
                <a href="<?php echo site_url('admin/user'); ?>">
                    <span class="icon16 icomoon-icon-list"></span> 
                    <span class="nav-text sicon">Users</span>
                </a>
            </li>
        <?php }
        ?>
        <li class="s">
            <a href="<?php echo site_url('admin/livechat'); ?>">
                <span class="icon16 icomoon-icon-table-2"></span> 
                <span class="nav-text sicon">Live Chat</span>
            </a>
        </li>
    </ul>
</div>