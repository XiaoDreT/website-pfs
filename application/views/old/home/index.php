<?php $this->load->view('old/home/slider') ?>
<div class="container">
    <div class="our-services">
        <div class="header-intro">
            <h2>our services</h2>
        </div>
        <?php foreach ($services as $row) { ?>
            <a href="<?php echo site_url('old/services/read/' . $row->id); ?>" title="<?php echo $row->name; ?>">
                <div class="col-md-4">
                    <img src="<?php echo IMG_UPLOADED_THUMBS . $row->image ?>" class="img img-responsive" alt="<?php echo $row->name; ?>"/>
                    <h3><?php echo $row->name; ?></h3>

                    <p><?php echo $row->preface; ?></p>
                </div>
            </a>
        <?php } ?>
    </div>
</div>
<!-- services end -->
<div class="promo">
    <div class="container">
        <p>It's Prime <span>Services</span></p>
        <a href="<?php echo site_url('about'); ?>" class="line-btn">ABOUT US</a>
    </div>
</div>
<!-- promo end -->
<?php $this->load->view('old/home/blog'); ?>