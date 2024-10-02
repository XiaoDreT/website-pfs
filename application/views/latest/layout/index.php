<!DOCTYPE html>
<html lang="en">
<head>
   <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-T5SF8P2Z');</script>
<!-- End Google Tag Manager -->
</script>
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
	<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
	<meta name="google-site-verification" content="7qWd4cciYQDPQhFZz_mFcAxadmmjFFC8qy18FnL6ibo" />
	
</head>
</script>
<style>
	html {
		scrollbar-color: #1D3A85 #fff;
		scrollbar-width: thin;
	}

	::-webkit-scrollbar {
		width: 6px;
	}

	::-webkit-scrollbar-track {
		background: #fff; 
	}

	::-webkit-scrollbar-thumb {
		background: #1D3A85; 
	}

	::-webkit-scrollbar-thumb:hover {
		background: #555; 
	}

	@media (max-width: 767px) {

		.img-footer-link {
			margin-left: auto;
			margin-right: auto;
			width: 50%;
		}
	}

</style>
<body data-responsejs='{ "create": [ { "prop": "width", "breakpoints": [0, 320, 481, 641, 961, 1025, 1281, 1400] }]}'>
		<?php $this->load->view('latest/layout/menu'); ?>
		<!-- slider end -->
		<?php $this->load->view('latest/layout/content'); ?>
		<!-- works end -->
		<?php
		$this->load->view('latest/layout/livechat');
		$this->load->view('latest/layout/footer');
		?> 
		<script>
			$(function () {
				$(".rslides").responsiveSlides({
					auto: true,            
					speed: 500,           
					timeout: 3000    
				});
			});
		</script>
	</body>
	</html>