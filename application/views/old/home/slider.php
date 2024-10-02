<div class="slider">
    <div class="rslides_container">
        <ul class="rslides">
            <?php foreach ($rec_slider as $row) { ?>
                <li> <img src="<?php echo 'https://www.primeforklift.co.id/assets/uploads/slider/' . $row->image; ?>" alt="<?php echo $row->text ?>" style="max-height: 500px; min-height: 500px; padding: 10px"/>
                    <div class="container">
						<a href="<?php echo $row->link;?>">
							<!--<div class="caption">
								<h1><span><?php echo $row->text ?></span></h1>
								<h1>Forklift</h1>
							</div>-->
						</a>
                    </div>
                </li>
            <?php } ?>
        </ul>
    </div>
</div>