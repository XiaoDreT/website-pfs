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

	.has-search .form-control-feedback {
		right: initial;
		left: 0;
		color: #ccc;
	}

	.has-search .form-control {
		padding-right: 12px;
		padding-left: 34px;
	}
</style>
<div class="container" style="clear: left;">
	<div style="float: right;">
		<div class="form-group has-feedback has-search" style="width: 300px;">
			<span class="glyphicon glyphicon-search form-control-feedback"></span>
			<form method="GET" action="">
				<input name="search" type="text" class="form-control" placeholder="Search (enter to submit)" required style="text-transform: none;">
			</form>
		</div>
	</div>
	<div class="our-works" style="clear: both;">
		<?php  
		if (isset($search)) {
			echo "<p>Menampilkan hasil pencarian dengan kata kunci : <b>".$search."</b></p>";
		}
		foreach ($ban as $row) {
			echo "<div class='row'>";
			echo "<center><h2>".$row['merk']."</h2></center>";
			foreach ($row['data'] as $val) {
				$name = $val['name'];
				if (strlen($name) > 30) {
					$name = substr($name, 0, 30)." ..";
				}
				$link = site_url('productDetail/'.$val['id']);
				?>
				<div class="col-md-4" style="padding: 35px">
					<div class="panel catalogue" onclick="location.href = '<? echo $link; ?>'">
						<img src="<?php echo IMG_UPLOADED_THUMBS.$val['image']; ?>" style="margin-bottom: 5px"/>
						<center>
							<b><?php echo $name; ?></b>
						</center>
						<a href="<?php echo $link; ?>" class="btn btn-info catalogue-btn">See Detail</a>
					</div>
				</div>
				<?php
			}
			echo "</div>";
		}
		?>
	</div>
</div>