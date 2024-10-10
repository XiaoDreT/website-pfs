<?php $this->load->view('latest/layout/navigation') ?>
<div class="inner-page about-us">
    <div class="container">
        <div class="col-md-6 no-padding-left">
            <img src="<?php echo IMG_UPLOADED_MAIN . $rec_data->image; ?>">
            <?php $link_share = site_url('latest/services/read/' . $rec_data->id); ?>
            <span class="social-links pull-right">
                <a class="icons fb" href="javascript:share('https://www.facebook.com/sharer.php?display=popup&app_id=708010869332931&u=<?php echo $link_share; ?>')" title="Share on Facebook"><span class="icomoon-icon-facebook"></span></a>
                <a class="icons tw" href="javascript:share('http://twitter.com/share?text=<?php echo $rec_data->name; ?>&url=<?php echo $link_share; ?>')" title="Share on Twitter"><span class="icomoon-icon-twitter"></span></a>
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
            <h2><?php echo $rec_data->name; ?></h2>
            <p>
                <?php echo $rec_data->detail; ?>
            </p>
        </div>
        <div class="clearfix"></div>
    </div>
</div>