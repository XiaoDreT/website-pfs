<? 
	$link = site_url('latest/product');
?>
<img class="img-left-title" src="<?php echo IMG_PATH; ?>product.png" style="cursor: pointer;" onclick="window.location = '<? echo $link; ?>'">
<div class="container" style="clear: left;">
	<div class="our-works">
		<?php  
		foreach ($product as $row) {
			$name = $row->name;
			if (strlen($name) > 35) {
				$name = substr($name, 0, 35)." ..";
			}
			$link = site_url('productDetail/'.$row->id);
			?>
			<div class="col-md-4" style="padding: 35px">
				<div class="panel catalogue" onclick="location.href = '<?php echo $link; ?>'">
					<img src="<?php echo IMG_UPLOADED_THUMBS.$row->image; ?>" style="margin-bottom: 5px"/>
					<center>
						<b><?php echo $name; ?></b>
					</center>
					<a href="<?php echo $link; ?>" class="btn btn-info catalogue-btn">See Detail</a>
				</div>
			</div>
			<?php
		}
		?>
	</div>
	<div class="our-works">
		<?php  
		foreach ($ban as $row) {
			$name = $row->name;
			if (strlen($name) > 35) {
				$name = substr($name, 0, 35)." ..";
			}
			$link = site_url('productDetail/'.$row->id);
			?>
			<div class="col-md-4" style="padding: 35px">
				<div class="panel catalogue" onclick="location.href = '<?php echo $link; ?>'">
					<img src="<?php echo IMG_UPLOADED_THUMBS.$row->image; ?>" style="margin-bottom: 5px"/>
					<center>
						<b><?php echo $name; ?></b>
					</center>
					<a href="<?php echo $link; ?>" class="btn btn-info catalogue-btn">See Detail</a>
				</div>
			</div>
			<?php
		}
		?>
	</div>
	<div class="our-works">
		<?php  
		foreach ($battery as $row) {
			$name = $row->name;
			if (strlen($name) > 35) {
				$name = substr($name, 0, 35)." ..";
			}
			$link = site_url('productDetail/'.$row->id);
			?>
			<div class="col-md-4" style="padding: 35px">
				<div class="panel catalogue" onclick="location.href = '<?php echo $link; ?>'">
					<img src="<?php echo IMG_UPLOADED_THUMBS.$row->image; ?>" style="margin-bottom: 5px"/>
					<center>
						<b><?php echo $name; ?></b>
					</center>
					<a href="<?php echo $link; ?>" class="btn btn-info catalogue-btn">See Detail</a>
				</div>
			</div>
			<?php
		}
		?>
	</div>
</div>