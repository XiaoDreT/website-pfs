<?php
$this->load->view('latest/layout/navigation');
?>
<style>
	.catalogue-title {
		padding: 0 20px 5px 20px;
		border-bottom: 5px solid blue;
		text-align: center;
		font-size: 20px;
	}

	.catalogue {
		padding: 2px;
		cursor: pointer;
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}

	.catalogue-btn {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		display: none;
	}

	.catalogue:hover img {
		filter: brightness(40%);
	}

	.catalogue:hover a {
		display: block;
	}

	.panelservice {
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		border-radius: 5px;
		height: 550px; 
		overflow: hidden;
		overflow-y: auto;
		scrollbar-color: #187EA8 #fff;
		scrollbar-width: thin;
		padding: 10px;
		margin-top: 10px;
	}
</style>
<div class="inner-page services">
	<div class="container" style="margin-bottom: 20px;">
		<center><h2><? echo $battery->merk; ?></h2></center>
		<div class="row">
			<div class="col-md-5" style="padding: 10px;">
				<img src="<? echo IMG_UPLOADED_MAIN.$battery->image; ?>">
			</div>
			<div class="col-md-7">
				<h4><? echo $battery->name; ?></h4>
				<div class="panelservice">
					<? echo $battery->description; ?>
				</div>
			</div>
		</div>
		<br><br>
		<p style="font-weight: bold; font-size: 20px; text-transform: uppercase;">Battery Lainnya</p>
		<?php  
		foreach ($related as $val) {
			$name = $val->name;
			if (strlen($name) > 30) {
				$name = substr($name, 0, 30)." ..";
			}
			$link = site_url('latest/battery/read/'.$val->id);
			?>
			<div class="col-md-4" style="padding: 35px">
				<div class="panel catalogue" onclick="location.href = '<? echo $link; ?>'">
					<img src="<?php echo IMG_UPLOADED_THUMBS.$val->image; ?>" style="margin-bottom: 5px"/>
					<center>
						<b><?php echo $name; ?></b>
					</center>
					<a href="<? echo $link; ?>" class="btn btn-info catalogue-btn">See Detail</a>
				</div>
			</div>
			<?php
		}
		?>
	</div>
</div>