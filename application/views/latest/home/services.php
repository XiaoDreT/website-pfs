<?php
$link = site_url('latest/services');  
if (!empty($services)) {
	?>
	<img class="img-right-title" src="<?php echo IMG_PATH; ?>services.png" style="cursor: pointer;" onclick="window.location = '<? echo $link; ?>'">
	<div class="container" style="clear: right;">
		<div class="our-works">
			<?php
			foreach ($services as $row) {
				$link = site_url('/services');
				?>
				<div class="col-md-4" style="padding: 35px">
					<div class="panel catalogue" onclick="window.location = '<?php echo $link; ?>'">
						<center>
							<b style="font-size: 17px;"><?php echo $row->name; ?></b>
						</center>
						<img src="<?php echo IMG_UPLOADED_THUMBS.$row->image; ?>" style="margin-bottom: 5px"/>
						<a href="<?php echo $link; ?>" class="btn btn-info catalogue-btn">See Detail</a>
					</div>
				</div>
				<?php
			}
			?>
		</div>
	</div>
	<?php		
}
?>