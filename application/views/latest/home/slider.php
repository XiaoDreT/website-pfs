<style type="text/css">
    .img-slider-new {
        max-height: 500px;
        min-height: 500px;
        padding: 10px;
    }

    @media (max-width: 640px) {

        .img-slider-new {
            max-height: 200px;
            min-height: 200px;
            padding: 10px;
        }

    }
</style>
<div class="slider">
    <div class="rslides_container">
        <ul class="rslides">
            <?php foreach ($rec_slider as $row) { ?>
                <li> <img class="img-slider-new" src="<?php echo 'https://www.primeforklift.co.id/assets/uploads/slider/' . $row->image; ?>" alt="<?php echo $row->text ?>"/>
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