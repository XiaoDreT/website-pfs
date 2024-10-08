<?php $this->load->view('latest/layout/navigation') ?>
<style type="text/css">
    * {
        font-family: 'Open Sans', sans-serif;
    }
</style>
<div class="inner-page about-us">
    <div class="container">
        <div class="">
            <div class="col-md-6 no-padding-left">
                <img src="<?php echo IMG_UPLOADED_MAIN . $rec_data->image; ?>">

                <?php $link_share = site_url('latest/blog/read/' . $rec_data->id); ?>
                <span class="social-links pull-right">
                    <a class="icons fb" href="javascript:share('https://www.facebook.com/sharer.php?display=popup&app_id=708010869332931&u=<?php echo $link_share; ?>')" title="Share on Facebook"><span class="icomoon-icon-facebook"></span></a>
                    <a class="icons tw" href="javascript:share('http://twitter.com/share?text=<?php echo $rec_data->title; ?>&url=<?php echo $link_share; ?>')" title="Share on Twitter"><span class="icomoon-icon-twitter"></span></a>
                    <a class="icons gplus" href="javascript:share('https://plus.google.com/share?url=<?php echo $link_share; ?>')" title="Share on Google+"><span class="icomoon-icon-google-plus"></span></a>
                    <script>
                        function share(url) {
                            window.open(url, "_blank", "toolbar=no, scrollbars=yes, resizable=yes, left=500, width=550, height=350");
                        }
                    </script>
                    <style>
                        .container .social-links{float:right;margin-top: 20px;}
                        .container .social-links .icons{display:inline-block;width:60px;height:24px;text-align:center}
                        .container .social-links .icons span{color:#fff}
                        .container .social-links .mail{background:none repeat scroll 0% 0% #E90606}
                        .container .social-links .fb{background:none repeat scroll 0% 0% #46609F}
                        .container .social-links .tw{background:none repeat scroll 0% 0% #5CACF2}
                        .container .social-links .gplus{background:none repeat scroll 0% 0% #000}
                        .container .social-links .icons:hover{background:none repeat scroll 0% 0% #666}
                    </style>
                </span>
            </div>
            <div class="col-md-6">
                <h2><?php echo $rec_data->title; ?></h2>
                <p>
                    <?php 
                        $detail = str_replace('&lt;','<',$rec_data->detail);
                        $detail = str_replace('&gt;','>',$detail);
                        echo $detail; ?>
                </p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <?php if (!empty($related)) { ?>
        <div class="grey-bg">
            <div class="container">
                <div class="our-works">
                    <div class="header-intro">
                        <h2>Related</h2>
                    </div>
                    <?php 
                    foreach ($related as $row) { 
                        ?>
                        <a href="<?php echo site_url('artikel/' . $row->slug); ?>">
                            <div class="col-sm-4">
                                <div class="portfolio-img-wrap">
                                    <img src="<?php echo IMG_UPLOADED_THUMBS . $row->image; ?>">
                                    <div class="caption-container">
                                        <div class="portfolio-caption">
                                            <h5><?php echo $row->title; ?></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    <?php } ?>
                </div>
            </div>
        </div>
    <?php } ?>
</div>