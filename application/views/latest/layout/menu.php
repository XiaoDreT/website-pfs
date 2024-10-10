<style type="text/css">
	ul.nav.navbar-nav li a:hover {
		color: red;
	}
</style>
<div class="wrapper">
	<div class="container">
		<nav class="navbar navbar-default">
			<div class="container-fluid"> 
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
					<a class="navbar-brand" href="<?php echo site_url(); ?>"><img src="<?php echo IMG_PATH; ?>logo.png" data-min-width-1200="<?php echo IMG_PATH; ?>logo-big.png" class="img img-responsive" alt="Prime Forklift" /></a> </div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse pull-right" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li<?php echo $menu['link'] == 'home' ? ' class="active"' : ''; ?>><a href="<?php echo site_url(); ?>"><span class="fa fa-home" style="font-size: 16px;">&nbsp</span>Home</a></li>
							<li class="dropdown <?= $menu['link'] == 'product' || $menu['link'] == 'sparepart' || $menu['link'] == 'ban' || $menu['link'] == 'battery' ? 'active' : ''; ?>">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fa fa-gears" style="font-size: 16px;">&nbsp</span>Products <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a style="font-size: 16px; font-weight: bold;" href="<?= site_url('product'); ?>">Unit Forklift</a></li>
									<li><a style="font-size: 16px; font-weight: bold;" href="<?= site_url('sparepart'); ?>">Sparepart</a></li>
									<li><a style="font-size: 16px; font-weight: bold;" href="<?= site_url('ban'); ?>">Ban Forklift</a></li>
									<li><a style="font-size: 16px; font-weight: bold;" href="<?= site_url('battery'); ?>">Battery</a></li>
									<li><a style="font-size: 16px; font-weight: bold;" href="<?= site_url('attachment'); ?>">Attachment</a></li>
								</ul>
							</li>
							<li<?php echo $menu['link'] == 'services' ? ' class="active"' : ''; ?>><a href="<?php echo site_url('services'); ?>"><span class="fa fa-wrench" style="font-size: 16px;">&nbsp</span>Services</a></li>
							<li<?php echo $menu['link'] == 'rental' ? ' class="active"' : ''; ?>><a href="<?php echo site_url('rental'); ?>"><img src="<?= IMG_PATH; ?>rent.png" style="width: 16px; height: 16px; margin-bottom: 5px;" />&nbspRental</a></li>
							<li<?php echo $menu['link'] == 'blog' ? ' class="active"' : ''; ?>><a href="<?php echo base_url('blog'); ?>/1"><span class="fa fa-rss" style="font-size: 16px;">&nbsp</span>Blog</a></li>
							<li<?php echo $menu['link'] == 'about' ? ' class="active"' : ''; ?>><a href="<?php echo site_url('about'); ?>"><span class="fa fa-building" style="font-size: 16px;">&nbsp</span>About Us</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse --> 
				</div>
				<!-- /.container-fluid --> 
			</nav>
		</div>
	</div>