<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">      
    <link rel="icon" href="<?php echo $page_icon; ?>">
    <?php
    render_html_title($html_title);
    render_html_metalink($html_meta);
    render_html_metalink($seo);
    render_html_metalink($html_link, 'link');
    render_html_metalink($html_script, 'script');
    ?>
    <script src="<?php echo JS_PATH; ?>multislider.min.js"></script>
    <meta name="google-site-verification" content="7qWd4cciYQDPQhFZz_mFcAxadmmjFFC8qy18FnL6ibo" />
</head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-154871887-3">
</script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-154871887-3');
</script>
<body data-responsejs='{ "create": [ { "prop": "width", "breakpoints": [0, 320, 481, 641, 961, 1025, 1281, 1400] }]}'>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KCPMZD2"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->
        <?php $this->load->view('old/layout/menu'); ?>
        <!-- slider end -->
        <?php $this->load->view('old/layout/content'); ?>
        <!-- works end -->
        <?php
        $this->load->view('old/layout/footer');
        ?> 
        <script>
            $(function () {
                $(".rslides").responsiveSlides();
            });
    </script>
</body>
</html>