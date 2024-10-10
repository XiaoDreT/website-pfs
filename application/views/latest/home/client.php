<div class="container">
	<div class="our-works">
		<div class="header-intro">
			<h2>Clients</h2>
		</div>
		<div id="exampleSlider">      <!-- Give wrapper ID to target with jQuery & CSS -->
			<div class="MS-content">
				<?php  
				foreach ($client as $row) {
					?>
					<div class="item">
						<img src="<? echo IMG_UPLOADED_MAIN.$row->image; ?>" <? echo !empty($row->link) ? "onclick='gotolink(`$row->link`)'" : ""; ?> style="cursor: pointer;">
					</div>
					<?php
				}
				?>
			</div>
			<div class="MS-controls">
				<button class="MS-left"><i class="fa fa-chevron-left" aria-hidden="true"></i></button>
				<button class="MS-right"><i class="fa fa-chevron-right" aria-hidden="true"></i></button>
			</div>
		</div> 
	</div>
</div>
<script>
	$('#exampleSlider').multislider();

	function gotolink(link){
		window.open(link, '_blank');
	}
</script>
